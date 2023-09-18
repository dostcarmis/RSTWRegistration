<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Event;
use DateTime;
use DateInterval;
use DatePeriod;
use App\Visitor;
use Validator;
use Auth;
use Session;
use Input;
use DB;
use Carbon\Carbon;

class EvalController extends Controller {

	public $attempts = 0;

	private static $debug = 1;

	public function index()
	{
		$barcode = '';
		$msg = '';

		$event = \App\Event::where('event_active', 1)->first();
		if (!$event){
			$msg = 'No active events are taking place.';
			Session::put('errmsg', $msg);
			return redirect('evaluate');
		}

        // Count Visitors
        $countData = $this->countVisitors();

		$msg = Session::pull('errmsg', '');
		$row = new \App\Evaluation;
		return view('eval.form')->with(['row' => $row, 'msg' => $msg, 'barcode' => $barcode, 'event' => $event,
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

	public function show_form(){
		
		$barcode = '';
		$msg = '';

		$event = \App\Event::where('event_active', 1)->first();
		if (!$event){
			$msg = 'No active events are taking place.';
			Session::put('errmsg', $msg);
			return redirect('evaluate');
		}

		$msg = Session::pull('errmsg', '');

		$row = new \App\Evaluation;
		return view('eval.form')->with(['row' => $row, 'msg' => $msg, 'barcode' => $barcode, 'event' => $event]);
	}

	public function save(Request $request){

		$barcode = uniqid('NONE', true);
		$msg = '';

		$event = \App\Event::where('event_active', 1)->first();
		if (!$event){
			$msg = 'No active events are taking place.';
			Session::put('errmsg', $msg);
			return redirect('evaluate');
		}

		$input = $request->all();
        $barCode = $request['barcode'];
        $visitor = Visitor::where('vis_code', $barCode)->first();

        if (!$visitor) {
            $msg = 'Barcode not yet registered.';
            Session::put('errmsg', $msg);
            return redirect('evaluate');
        }

        $checkEvalData = \App\Evaluation::whereRaw('date(created_at) = ?', [date('Y-m-d')])
                                        ->where('vis_id', $visitor->vis_id)
                                        ->count();

        if ($checkEvalData > 0) {
            $msg = 'You are only allowed to evaluate once a day.';
            Session::put('errmsg', $msg);
            return redirect('evaluate');
        }
        

		$attr = array(
			'eval_rating_overall' => 'Overall rating.'
		);
		$rules = array(
			'eval_rating_overall' => 'required'
		);

		$val = Validator::make($input, $rules);
		$val->setAttributeNames($attr);

		if ($val->fails()){
			return redirect('evaluate')->withInput()->withErrors($val);
		}

		$row = new \App\Evaluation;

		$row->event_id = $event->event_id;
        $row->vis_id = $visitor->vis_id;

		$row->eval_firsttime = $request->input('eval_firsttime');
		$row->eval_rating_overall = $request->input('eval_rating_overall');

		$referer = $request->input('eval-ref');

		if (in_array('1', $referer)){
			$row->eval_ref_1 = 1;
		} else {
			$row->eval_ref_1 = 0;
		}

		if (in_array('2', $referer)){
			$row->eval_ref_2 = 1;
		} else {
			$row->eval_ref_2 = 0;
		}

		if (in_array('3', $referer)){
			$row->eval_ref_3 = 1;
		} else {
			$row->eval_ref_3 = 0;
		}

		if (in_array('4', $referer)){
			$row->eval_ref_4 = 1;
		} else {
			$row->eval_ref_4 = 0;
		}

		if (in_array('5', $referer)){
			$row->eval_ref_5 = 1;
		} else {
			$row->eval_ref_5 = 0;
		}

		if (in_array('6', $referer)){
			$row->eval_ref_6 = 1;
		} else {
			$row->eval_ref_6 = 0;
		}

		if (in_array('7', $referer)){
			$row->eval_ref_7 = 1;
		} else {
			$row->eval_ref_7 = 0;
		}

		if (in_array('8', $referer)){
			$row->eval_ref_8 = 1;
		} else {
			$row->eval_ref_8 = 0;
		}

		$row->save();

		Session::put('eval_id', $row->eval_id);

		//return redirect('evaluate/selfie_form');
		return redirect('evaluate/thanks');
	}

	public function selfie_form(){
		$event = \App\Event::where('event_active', 1)->first();
		if (!$event){
			$msg = 'No active events are taking place.';
			Session::put('errmsg', $msg);
			return redirect('evaluate');
		}

		$msg = Session::pull('errmsg', '');

		$eval_id = Session::get('eval_id', '');
		$msg = '';
		if (strlen($eval_id) == 0){
			$msg = 'Evaluation required.';
			Session::put('errmsg', $msg);
			return redirect('evaluate');
		}

		return view('eval.selfie_form')->with(['msg' => $msg, 'eval_id' => $eval_id, 'event' => $event]);
	}

	public function selfie_save(Request $request){

		$event = \App\Event::where('event_active', 1)->first();
		if (!$event){
			$msg = 'No active events are taking place.';
			Session::put('errmsg', $msg);
			return redirect('evaluate');
		}
		
		$eval_id = Session::get('eval_id', '');
		$msg = '';
		if (strlen($eval_id) == 0){
			$msg = 'Evaluation required.';
			Session::put('errmsg', $msg);
			return redirect('evaluate');
		}

		$row = \App\Evaluation::where('eval_id', $eval_id)->first();
		if (!$row){
			$msg = 'Evaluation not found.';
			Session::put('errmsg', $msg);
			return redirect('evaluate');
		}

		$dest_path = realpath('./uploads');

		if (!$request->hasFile('eval_file')) {
			return redirect('evaluate/thanks');
		}
			
		$src = $request->file('eval_file')->getRealPath();
		$orig_fn = $request->file('eval_file')->getClientOriginalName();
		$orig_ext = $request->file('eval_file')->getClientOriginalExtension();

		$ext = pathinfo($orig_fn, PATHINFO_EXTENSION);
		$filename = basename($orig_fn, '.'.$ext);

		$dest_fn = EvalController::randName($filename, $ext);
		//$new_path = $dest_path.DIRECTORY_SEPARATOR.$dest_fn;

		$request->file('eval_file')->move($dest_path, $dest_fn);

		$row->eval_file = $dest_fn;
		//$row->re_pdf = $orig_fn;

		$row->save();

		Session::put('eval_file', $row->eval_file);

		return redirect('evaluate/thanks');

	}

	public function show_thanks(){
		
		$msg = Session::pull('errmsg', '');
		$eval_file = Session::get('eval_file', '');

		return view('eval.thanks')->with(['msg' => $msg, 'eval_file' => $eval_file]);
	}

	public function cancel(){
		Session::put('barcode', '');
		return redirect('evaluate');
	}

	public function finished(){
		Session::put('barcode', '');
		return redirect('evaluate');
	}

	public static function randName($p_prefix,$p_ext){
		$s='';
		for ($i = 0; $i < 7; $i++){
			$s .= chr(rand(97,122));
		}
		$s = "$p_prefix-$s-".date('Ymd_His').".$p_ext";
		return $s;
	}


	public function eval_print(){
		$rows = \App\VWEvaluation::all();
		return view('eval.eval_print', compact('rows'));
	}


}
