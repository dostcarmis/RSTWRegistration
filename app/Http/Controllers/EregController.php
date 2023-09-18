<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Event;
use DateTime;
use DateInterval;
use DatePeriod;
use Validator;
use Auth;
use Session;
use Input;
use DB;

class EregController extends Controller {

	public $attempts = 0;

	public function index(){

		$event = \App\Event::where('event_active', 1)->first();
		if (!$event){
			$msg = 'No active events are taking place.';
			Session::put('errmsg', $msg);
			return view('ereg.noevent')->with(['msg' => $msg]);
		}

		$code = ['serial' => '0000' , 'batch' => '0000']; // VisitorsController::getNewBarcode();
		$batch = str_pad($code['batch'].'',4,'0', STR_PAD_LEFT);
		$serial = str_pad($code['serial'].'',4,'0', STR_PAD_LEFT);

		$barcode = $batch.$serial;
		$msg = Session::pull('errmsg', '');

		$row = new \App\Visitor;
		$row->region_id = 0;
		$row->event_id = $event->event_id;
		$row->vis_code = '';
		$row->vis_batch = $code['batch'];
		$row->vis_serial = $code['serial'];

        // Count Visitors
        $countData = $this->countVisitors();

		return view('ereg.form')->with(['row' => $row, 'msg' => $msg, 'barcode' => $barcode, 'event' => $event,
                                        'visitorCount' => $countData]);
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

	public function save(Request $request){

		$event = \App\Event::where('event_active', 1)->first();
		if (!$event){
			$msg = 'No active events are taking place.';
			Session::put('errmsg', $msg);
			return view('ereg.noevent')->with(['msg' => $msg]);
		}

		$msg = '';

		/*
		$barcode = Session::pull('barcode','');
        $vis = \App\Visitor::where('vis_code', $barcode)->first();
		if ($vis){
			Session::put('errmsg', 'Barcode already registered.');
			return redirect('register');
		}
		*/

		$input = $request->all();
		$attr = array(
			'vis_code' => 'Barcode',
			'vis_fname' => 'First Name',
			'vis_mname' => 'Middle Name',
			'vis_lname' => 'Last Name',
			'vis_email' => 'Email',
			'vis_gsm' => 'Mobile',
			'vis_enabled' => 'Enabled',
			'vis_age' => 'Age',
			'vis_address' => 'Address',
			'vis_barangay' => 'Barangay',
			'vis_province' => 'Province',
			'vis_municipality' => 'Municipality',
			'vis_company' => 'Company',
			'gender_id' => 'Gender',
			'region_id' => 'Region',
			'civil_id' => 'Civil Status',
		);
		$rules = array(
			'vis_code' => 'required|unique:er_visitors',
			'vis_age' => 'integer',
			'vis_email' => 'email',
			'vis_fname' => 'required|min:1',
		);

		$val = Validator::make($input, $rules);
		$val->setAttributeNames($attr);

		if ($val->fails()){
			return redirect('register')->withInput()->withErrors($val);
		}

		$row = new \App\Visitor;
		
		$row->event_id = $event->event_id;
		$row->vis_fname = $request->input('vis_fname');
		$row->vis_mname = $request->input('vis_mname');
		$row->vis_lname = $request->input('vis_lname');
		$row->vis_email = $request->input('vis_email');
		$row->vis_gsm = $request->input('vis_gsm');
		$row->vis_age = $request->input('vis_age');
		$row->vis_company = $request->input('vis_company');
		$row->gender_id = $request->input('gender_id');
		$row->civil_id = $request->input('civil_id');
		$row->region_id = $request->input('region_id');
		$row->class_id = $request->input('class_id');

		$row->vis_code = $request->input('vis_code');
		$row->vis_batch = $request->input('vis_batch');
		$row->vis_serial = $request->input('vis_serial');
		$row->vis_day = $request->input('vis_day');
		
		$row->save();

		Session::put('errmsg', 'Registration Complete.');
		Session::put('barcode', '');

		return redirect('register');
	}

	public function cancel(){
		Session::put('barcode', '');
		return redirect('register');
	}

	public function finished(){
		Session::put('barcode', '');
		return redirect('register');
	}

	public static function randName($p_prefix,$p_ext){
		$s='';
		for ($i = 0; $i < 7; $i++){
			$s .= chr(rand(97,122));
		}
		$s = "$p_prefix-$s-".date('Ymd_His').".$p_ext";
		return $s;
	}


}
