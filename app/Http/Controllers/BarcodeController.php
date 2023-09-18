<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use Validator;
use Auth;
use Session;
use Input;

class BarcodeController extends Controller {

	public $attempts = 0;

	public function index(Request $request){

		$event = \App\Event::where('event_active', 1)->first();
		if (!$event){
			$msg = 'No active events are taking place.';
			Session::put('errmsg', $msg);
			return view('barcode.noevent')->with(['msg' => $msg]);
		}

		$q1_rc = 'q1_barcode';
		$q2_rc = 'q2_barcode';
		$q3_rc = 'q3_barcode';

		$q1 = 0;
		$q2 = 0;
		$q3 = 0;

		if ($request->has('search-btn')){
			if ($request->has('batch')){
				$q1 = $request->input('batch', 0);
			}

			if ($request->has('serial')){
				$q2 = $request->input('serial', 0);
			}

			if ($request->has('count')){
				$q3 = $request->input('count', 0);
			}

			Session::put($q1_rc, $q1);
			Session::put($q2_rc, $q2);
			Session::put($q3_rc, $q3);

		} elseif (Session::has($q1_rc)){
			$q1 = Session::get($q1_rc);
			$q2 = Session::get($q2_rc);
			$q3 = Session::get($q3_rc);
		}


		$msg = Session::pull('errmsg', '');

		$gen = new \Picqer\Barcode\BarcodeGeneratorPNG();

		return view('barcode.index')->with(['event' => $event, 'msg' => $msg, 'batch' => $q1, 'serial' => $q2, 'count' => $q3, 'gen' => $gen]);
	}

	public function prereg(Request $request){

		$event = \App\Event::where('event_active', 1)->first();
		if (!$event){
			$msg = 'No active events are taking place.';
			Session::put('errmsg', $msg);
			return view('barcode.noevent')->with(['msg' => $msg]);
		}

		$msg = Session::pull('errmsg', '');
		$rows = \App\VWVisitor::where('event_id', $event->event_id)->orderBy('vis_name', 'ASC')->get();

		return view('barcode.guests', compact('rows', 'msg'));
	}
}
