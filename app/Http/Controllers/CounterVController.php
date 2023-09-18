<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Event;
use DateTime;
use DateInterval;
use DatePeriod;
use DB;
use Validator;
use Auth;
use Session;
use Input;

class CounterVController extends Controller {

	public $attempts = 0;

	public function index($id)
	{
		$msg = '';

		$event = \App\Event::where('event_active', 1)->first();
		if (!$event){
			$msg = 'No active events are taking place.';
			Session::put('errmsg', $msg);
			//return redirect('register');
		}

		$msg = Session::pull('errmsg', '');

        // Count Visitors
        $countData = $this->countVisitors();

		return view('counterv.index')->with(['msg' => $msg, 'id' => $id, 'event' => $event, 'visitorCount' => $countData]);
	}

    private function countVisitors() {
        $countData = array();
        $listDates = array();
        $eventData = Event::where('event_active', 1)
                          ->select('event_from', 'event_to')
                          ->first();

        $dateFrom = new DateTime($eventData->event_from);
        $dateTo = new DateTime($eventData->event_to);
        $dateTo = $dateTo->modify( '+1 day' );

        $interval = new DateInterval('P1D');
        $period = new DatePeriod($dateFrom, $interval ,$dateTo);

        foreach ($period as $key => $value) {
            $listDates[] = $value->format('Y-m-d');    
        }

        if (count($listDates) > 0) {
            foreach ($listDates as $date) {
                $countVisitors = 0;
                $countVis1 = DB::table('er_visitors as vis')
                               ->select('vis.vis_id', 'vis.vis_code', 'vis.vis_fname', 'vis.vis_mname', 
                                        'vis.vis_lname', 'vis.vis_email', 'vis.vis_gsm', 
                                        'vis.vis_address', 'vis.vis_age', 'vis.vis_company', 
                                        'vis.created_at', 'gender.gender_name', 'civil.civil_name', 
                                        'region.region_name', 'class.class_name')
                               ->join('er_genders as gender', 'gender.gender_id', '=', 'vis.gender_id')
                               ->join('er_civilstatus as civil', 'civil.civil_id', '=', 'vis.civil_id')
                               ->join('er_regions as region', 'region.region_id', '=', 'vis.region_id')
                               ->join('er_classifications as class', 'class.class_id', '=', 'vis.class_id')
                               ->join('er_events as event', 'event.event_id', '=', 'vis.event_id')
                               ->where('event.event_active', 1)
                               ->where('vis.created_at', 'LIKE', '%' . $date . '%')
                               ->count();
                $countVis2 = DB::table('er_visitors as vis')
                               ->select('vis.vis_id', 'vis.vis_code', 'vis.vis_fname', 'vis.vis_mname', 
                                        'vis.vis_lname', 'vis.vis_email', 'vis.vis_gsm', 
                                        'vis.vis_address', 'vis.vis_age', 'vis.vis_company', 
                                        'counter.created_at', 'gender.gender_name', 'civil.civil_name', 
                                        'region.region_name', 'class.class_name')
                               ->join('er_genders as gender', 'gender.gender_id', '=', 'vis.gender_id')
                               ->join('er_civilstatus as civil', 'civil.civil_id', '=', 'vis.civil_id')
                               ->join('er_regions as region', 'region.region_id', '=', 'vis.region_id')
                               ->join('er_classifications as class', 'class.class_id', '=', 'vis.class_id')
                               ->join('er_events as event', 'event.event_id', '=', 'vis.event_id')
                               ->join('er_counter_visitors as counter', 'counter.vis_id', '=', 'vis.vis_id')
                               ->where('event.event_active', 1)
                               ->where('counter.created_at', 'LIKE', '%' . $date . '%')
                               ->count();
                $countVisitors = $countVis1 + $countVis2;

                $countData[] = (object) ['date' => $date,
                                         'count' => $countVisitors];
            }    
        }

        return $countData;
    }

	public function add(Request $request, $id){

		$event = \App\Event::where('event_active', 1)->first();
		$msg = '';
		if (!$event){
			$msg = 'No active events are taking place.';
			Session::put('errmsg', $msg);
			return redirect('/counterv/'.$id);
		}

		$input = $request->all();
		$attr = array(
			'barcode-eval' => 'Barcode'
		);
		$rules = array(
			'barcode-eval' => 'required'
		);

		$val = Validator::make($input, $rules);
		$val->setAttributeNames($attr);

		if ($val->fails()){
			$msg = 'Barcode is required.';
  			Session::put('errmsg', $msg);
			return redirect('/counterv/'.$id)->withInput()->withErrors($val);
		} 

	    $vis = \App\Visitor::where('vis_code', $request->input('barcode-eval'))->first();
		if (!$vis){
			$msg = 'Barcode unregistered.';
			Session::put('errmsg', $msg);
			return redirect('/counterv/'.$id);
		}

        $checkAttendance = \App\CounterVisitor::whereRaw('date(created_at) = ?', [date('Y-m-d')])
                                              ->where('vis_id', $vis->vis_id)
                                              ->count();

        if ($checkAttendance > 0) {
            $msg = 'You are already registered today.';
            Session::put('errmsg', $msg);
            return redirect('/counterv/'.$id)->withInput()->withErrors($val);
        }

		$row = new \App\CounterVisitor;

		$row->vis_id = $vis->vis_id;
		$row->counter_id = $id;
		$row->save();

		$msg = 'Barcode Registered!';
		Session::put('errmsg', $msg);
		return redirect('/counterv/'.$id);
	}

}
