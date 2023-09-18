<?php namespace App\Http\Controllers;

use Input;
use Session;
use Validator;
use App\Visitor;
use App\VWVisitor;
use Carbon\Carbon;
use Illuminate\Http\Request;

class VisitorsController extends Controller {

	public function index(Request $request)
	{
		$q_rc = 'q_visitors';
		$qt_rc = 'qt_vistors';
		$qt1_rc = 'qt1_visitors';
		$qt2_rc = 'qt2_visitors';
		$qt3_rc = 'qt3_visitors';

		$q = '';
		$qt = 0;
		$qt1 = 0;
		$qt2 = 0;
		$qt3 = 0;

		if ($request->has('search-btn')){
			if ($request->has('q')){
				$q = $request->input('q', '');
			}

			if ($request->has('qt')){
				$qt = $request->input('qt', 0);
			}

			if ($request->has('qt1')){
				$qt1 = $request->input('qt1', 0);
			}

			if ($request->has('qt2')){
				$qt2 = $request->input('qt2', 0);
			}

			if ($request->has('qt3')){
				$qt3 = $request->input('qt3', 0);
			}

			Session::put($q_rc, $q);
			Session::put($qt_rc, $qt);
			Session::put($qt1_rc, $qt1);
			Session::put($qt2_rc, $qt2);
			Session::put($qt3_rc, $qt3);

		} elseif (Session::has($q_rc)){
			$q = Session::get($q_rc);
			$qt = Session::get($qt_rc);
			$qt1 = Session::get($qt1_rc);
			$qt2 = Session::get($qt2_rc);
			$qt3 = Session::get($qt3_rc);
		}

		$msg = Session::pull('errmsg', '');

		$where = '';
		$values = array();
		if (strlen($q) > 0){
			$where .= "((vis_name LIKE ?) OR (vis_fname LIKE ?) OR (vis_mname LIKE ?) OR (vis_lname LIKE ?) OR (vis_email LIKE ?) OR (vis_gsm LIKE ?) OR (vis_company LIKE ?))";
			$values[] = "%$q%";
			$values[] = "%$q%";
			$values[] = "%$q%";
			$values[] = "%$q%";
			$values[] = "%$q%";

			$values[] = "%$q%";
			$values[] = "%$q%";
		}

		if ($qt > 0){
			if (strlen($where) > 0){
				$where .= ' AND ';
			}
			$where .= '(region_id = ?)';
			$values[] = "$qt";
		}

		if ($qt1 > 0){
			if (strlen($where) > 0){
				$where .= ' AND ';
			}
			$where .= '(event_id = ?)';
			$values[] = "$qt1";
		}

		if ($qt2 > 0){
			if (strlen($where) > 0){
				$where .= ' AND ';
			}
			$where .= '(class_id = ?)';
			$values[] = "$qt2";
		}

		/*
		if ($qt3 > 0){
			if (strlen($where) > 0){
				$where .= ' AND ';
			}
			$where .= '(site_id = ?)';
			$values[] = "$qt3";
		}

		*/

		$rows = ( (strlen($where) == 0) ? \App\VWVisitor::orderBy('vis_id', 'DESC')->get() : \App\VWVisitor::whereRaw($where, $values)->orderBy('vis_id', 'DESC')->get());

		return view('visitors.index', compact('rows', 'msg', 'q', 'qt', 'qt1', 'qt2', 'qt3'));
	}

	public static function getNewBarcode(){


		$eid = 0;

		$event = \App\Event::where('event_active', 1)->first();

		if ($event){
			$eid = $event->event_id;
		}

		$row = \App\Barcode::where('event_id', $eid)->orderBy('barcode_batch', 'DESC')->orderBy('barcode_serial', 'DESC')->first();
		
		$batch = 0;
		$serial = 0;

		if ($row){
			$batch = $row->barcode_batch;
			$serial = $row->barcode_serial;
		}

//		echo $batch.'<br>';
//		echo $serial.'<br>';

		$serial++;
		if ($serial > 9999){
			$batch++;
			$serial = 0;
		}

//		echo $batch.'<br>';
//		echo $serial.'<br>';

		$row = new \App\Barcode;

		$row->event_id = $eid;
		$row->barcode_batch = $batch;
		$row->barcode_serial = $serial;
		$row->save();

		$res = array();
		$res['batch'] = $batch;
		$res['serial'] = $serial;

//		var_dump($res);
//		die();
		return $res;
	}

	public function add(){
		$id = 0;
		
		$op = 0;
		$row = new \App\Visitor;

		$code = VisitorsController::getNewBarcode();
		$batch = str_pad($code['batch'].'',4,'0', STR_PAD_LEFT);
		$serial = str_pad($code['serial'].'',4,'0', STR_PAD_LEFT);
		$barcode = $batch.$serial;
		
		$row->vis_code = $barcode;
		$row->vis_batch = $batch;
		$row->vis_serial = $serial;

		$event = \App\Event::where('event_active', 1)->first();
		if ($event){
			$row->event_id = $event->event_id;
		}

		return view('visitors.form', compact('row', 'op', 'id'));
	}

	public function edit($id){
		$op = 0;
		$row = \App\Visitor::find($id);

		if (!$row){
			Session::put('errmsg', 'Record not found!!!');
			return redirect('visitors');
		}

		return view('visitors.form', compact('row', 'op', 'id'));
	}

	public function change_barcodes(){
		$op = 0;
		$rows = \App\Visitor::all();

		foreach ($rows as $row){
			$code = VisitorsController::getNewBarcode();
			$row->vis_batch = $code['batch'];
			$row->vis_serial = $code['serial'];
			//$row->vis_code = uniqid('DOST', false);
			//$row->event_id = 8;
			$row->save();
		}

		return redirect('visitors');
	}

	public function delete($id){

		$row = Visitor::find($id);

		if (!$row){
			Session::put('errmsg', 'Record not found!!!');
			return redirect('visitors');
		}

		$row->delete();

		Session::put('errmsg', 'Record deleted!!!');
		return redirect('visitors');
	}

	public function save(Request $request, $id){

		$row = new \App\Visitor;
		$msg = 'Record Added.';
		if ($id > 0){
			$row = \App\Visitor::find($id);
			if (!$row){
				return redirect('visitors');
			}
			$msg = 'Record Updated.';
		}

		$input = $request->all();

		//var_dump($input);
		//die();

		$attr = array(
			'vis_fname' => 'First Name',
			'vis_mname' => 'Middle Name',
			'vis_lname' => 'Last Name',
			'vis_email' => 'Email',
			'vis_gsm' => 'Mobile',
			'vis_age' => 'Age',
			'vis_company' => 'Age',
			);
		$rules = array(
			'vis_fname' => 'required|min:1',
			'vis_lname' => 'required|min:1',
			'vis_email' => 'email',
			'vis_age' => 'integer',
			);

		$val = Validator::make($input, $rules);
		$val->setAttributeNames($attr);

		if ($val->fails()){
			if ($id == 0){
				return redirect('visitors/add?e=1')->withInput()->withErrors($val);
			} else {
				return redirect('visitors/'.$id.'/edit')->withInput()->withErrors($val->errors());
			}
		}

		$row->vis_fname = $request->input('vis_fname');
		$row->vis_mname = $request->input('vis_mname');
		$row->vis_lname = $request->input('vis_lname');
		$row->vis_email = $request->input('vis_email');
		$row->vis_gsm = $request->input('vis_gsm');
		$row->vis_company = $request->input('vis_company');
		$row->region_id = $request->input('region_id');
		$row->gender_id = $request->input('gender_id');
		$row->civil_id = $request->input('civil_id');
		$row->class_id = $request->input('class_id');
		$row->event_id = $request->input('event_id');
		$row->vis_batch = $request->input('vis_batch');
		$row->vis_code = $request->input('vis_code');
		$row->vis_serial = $request->input('vis_serial');
		//$row->site_id = $request->input('site_id');

		/*
		if ($id == 0){
			$code = VisitorsController::getNewBarcode();
			$row->vis_batch = $code['batch'];
			$row->vis_serial = $code['serial'];
		}
		*/
		$row->save();

		return redirect('visitors');
	}

	public function set_visitor_id(){
		$rows = \App\EventVisitor::where('event_id', 8)->get();

		if (!$rows) return 'No Visitors';

		//var_dump($rows);
		$ctr = 0;
		foreach ($rows as $row) {
			$ctr++;
			$code =  $row ->vis_code;
			$len = strlen($code);
			$code = substr($code, 0, $len - 1);
			echo $ctr.'. '.$code;
			$vis = \App\Visitor::where('vis_code', $code)->first();
			if (!$vis){
				echo '<br>';
				continue;
			}
			echo ' OK!<br>';

			$row->vis_id = $vis->vis_id;
			$row->save();
		}

		return  'Done!';
	}	

	public function print_list(Request $request)
	{
		$q_rc = 'q_visitors';
		$qt_rc = 'qt_vistors';
		$qt1_rc = 'qt1_visitors';
		$qt2_rc = 'qt2_visitors';
		$qt3_rc = 'qt3_visitors';

		$q = '';
		$qt = 0;
		$qt1 = 0;
		$qt2 = 0;
		$qt3 = 0;

		if ($request->has('search-btn')){
			if ($request->has('q')){
				$q = $request->input('q', '');
			}

			if ($request->has('qt')){
				$qt = $request->input('qt', 0);
			}

			if ($request->has('qt1')){
				$qt1 = $request->input('qt1', 0);
			}

			if ($request->has('qt2')){
				$qt2 = $request->input('qt2', 0);
			}

			if ($request->has('qt3')){
				$qt3 = $request->input('qt3', 0);
			}

			Session::put($q_rc, $q);
			Session::put($qt_rc, $qt);
			Session::put($qt1_rc, $qt1);
			Session::put($qt2_rc, $qt2);
			Session::put($qt3_rc, $qt3);

		} elseif (Session::has($q_rc)){
			$q = Session::get($q_rc);
			$qt = Session::get($qt_rc);
			$qt1 = Session::get($qt1_rc);
			$qt2 = Session::get($qt2_rc);
			$qt3 = Session::get($qt3_rc);
		}

		$msg = Session::pull('errmsg', '');

		$where = '';
		$values = array();
		if (strlen($q) > 0){
			$where .= "((vis_name LIKE ?) OR (vis_fname LIKE ?) OR (vis_mname LIKE ?) OR (vis_lname LIKE ?) OR (vis_email LIKE ?) OR (vis_gsm LIKE ?) OR (vis_company LIKE ?))";
			$values[] = "%$q%";
			$values[] = "%$q%";
			$values[] = "%$q%";
			$values[] = "%$q%";
			$values[] = "%$q%";

			$values[] = "%$q%";
			$values[] = "%$q%";
		}

		if ($qt > 0){
			if (strlen($where) > 0){
				$where .= ' AND ';
			}
			$where .= '(region_id = ?)';
			$values[] = "$qt";
		}

		if ($qt1 > 0){
			if (strlen($where) > 0){
				$where .= ' AND ';
			}
			$where .= '(event_id = ?)';
			$values[] = "$qt1";
		}

		if ($qt2 > 0){
			if (strlen($where) > 0){
				$where .= ' AND ';
			}
			$where .= '(class_id = ?)';
			$values[] = "$qt2";
		}

		/*
		if ($qt3 > 0){
			if (strlen($where) > 0){
				$where .= ' AND ';
			}
			$where .= '(site_id = ?)';
			$values[] = "$qt3";
		}

		*/

		$rows = ( (strlen($where) == 0) ? \App\VWVisitor::orderBy('vis_id', 'DESC')->get() : \App\VWVisitor::whereRaw($where, $values)->orderBy('vis_id', 'DESC')->get());

		return view('visitors.print', compact('rows', 'msg', 'q', 'qt', 'qt1', 'qt2', 'qt3'));
	}

	public function download_list(Request $request)
	{
		$q_rc = 'q_visitors';
		$qt_rc = 'qt_vistors';
		$qt1_rc = 'qt1_visitors';
		$qt2_rc = 'qt2_visitors';
		$qt3_rc = 'qt3_visitors';

		$q = '';
		$qt = 0;
		$qt1 = 0;
		$qt2 = 0;
		$qt3 = 0;

		if ($request->has('search-btn')){
			if ($request->has('q')){
				$q = $request->input('q', '');
			}

			if ($request->has('qt')){
				$qt = $request->input('qt', 0);
			}

			if ($request->has('qt1')){
				$qt1 = $request->input('qt1', 0);
			}

			if ($request->has('qt2')){
				$qt2 = $request->input('qt2', 0);
			}

			if ($request->has('qt3')){
				$qt3 = $request->input('qt3', 0);
			}

			Session::put($q_rc, $q);
			Session::put($qt_rc, $qt);
			Session::put($qt1_rc, $qt1);
			Session::put($qt2_rc, $qt2);
			Session::put($qt3_rc, $qt3);

		} elseif (Session::has($q_rc)){
			$q = Session::get($q_rc);
			$qt = Session::get($qt_rc);
			$qt1 = Session::get($qt1_rc);
			$qt2 = Session::get($qt2_rc);
			$qt3 = Session::get($qt3_rc);
		}

		$msg = Session::pull('errmsg', '');

		$where = '';
		$values = array();
		if (strlen($q) > 0){
			$where .= "((vis_name LIKE ?) OR (vis_fname LIKE ?) OR (vis_mname LIKE ?) OR (vis_lname LIKE ?) OR (vis_email LIKE ?) OR (vis_gsm LIKE ?) OR (vis_company LIKE ?))";
			$values[] = "%$q%";
			$values[] = "%$q%";
			$values[] = "%$q%";
			$values[] = "%$q%";
			$values[] = "%$q%";

			$values[] = "%$q%";
			$values[] = "%$q%";
		}

		if ($qt > 0){
			if (strlen($where) > 0){
				$where .= ' AND ';
			}
			$where .= '(region_id = ?)';
			$values[] = "$qt";
		}

		if ($qt1 > 0){
			if (strlen($where) > 0){
				$where .= ' AND ';
			}
			$where .= '(event_id = ?)';
			$values[] = "$qt1";
		}

		if ($qt2 > 0){
			if (strlen($where) > 0){
				$where .= ' AND ';
			}
			$where .= '(class_id = ?)';
			$values[] = "$qt2";
		}

		/*
		if ($qt3 > 0){
			if (strlen($where) > 0){
				$where .= ' AND ';
			}
			$where .= '(site_id = ?)';
			$values[] = "$qt3";
		}

		*/

		$rows = ( (strlen($where) == 0) ? \App\VWVisitor::orderBy('vis_id', 'DESC')->get() : \App\VWVisitor::whereRaw($where, $values)->orderBy('vis_id', 'DESC')->get());

		$filename = "visitors_" . date('Y_m_d') . ".xls";

		header("Content-Disposition: attachment; filename=\"$filename\"");
		header("Content-Type: application/vnd.ms-excel");
		return view('visitors.download', compact('rows', 'msg', 'q', 'qt', 'qt1', 'qt2', 'qt3'));
	}


}