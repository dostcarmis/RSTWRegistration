<?php namespace App\Http\Controllers;

use Input;
use Session;
use Validator;
use App\Event;
use Carbon\Carbon;
use Illuminate\Http\Request;

class EventsController extends Controller {

	public function events(Request $request)
	{
		$q_rc = 'q_events';
		$q = '';

		if ($request->has('search-btn')){
			if ($request->has('q')){
				$q = $request->input('q', '');
				Session::put($q_rc, $q);
			}
		} elseif (Session::has($q_rc)){
			$q = Session::get($q_rc);
		}

		$msg = Session::pull('errmsg', '');

		$where = '';
		$values = array();
		if (strlen($q) > 0){
			$where .= "((event_title LIKE ?) OR (event_desc LIKE ?))";
			$values[] = "%$q%";
			$values[] = "%$q%";
		}

		$rows = ( (strlen($q) == 0) ? \App\VWEvent::all() : \App\VWEvent::whereRaw($where, $values)->get());

		return view('events.index', compact('rows', 'msg', 'q'));
	}

	public function add()
	{
		$row = new Event;
		return view('events.form')->with(['row' => $row, 'op' => 0, 'id' => 0]);
	}

	public function edit($id){
		$row = Event::find($id);
		if (!$row){
			Session::put('errmsg', 'Record not found!!!');
			return redirect('events.form');
		}

		return view('events.form')->with(['row' => $row, 'op' => 1, 'id' => $id]);
	}

	public function delete($id){
		$row = Event::find($id)->first();

		if (!$row){
			Session::put('errmsg', 'Record not found!!!');
		} else {
			$row->delete();
			Session::put('errmsg', 'Record Deleted.');
		}
		return redirect('events');
	}

	public static function randName($p_prefix,$p_ext){
		$s='';
		for ($i = 0; $i < 7; $i++){
			$s .= chr(rand(97,122));
		}
		$s = "$p_prefix-$s-".date('Ymd_His').".$p_ext";
		return $s;
	}
	
	public function save(Request $request, $id){

		$row = new \App\Event;
		$msg = 'Record Added.';
		if ($id > 0){
			$row = \App\Event::find($id);
			if (!$row){
				return redirect('events');
			}
			$msg = 'Record Updated.';
		}

		$input = $request->all();

		//var_dump($input);
		//die();

		$attr = array(
			'event_title' => 'Event Title',
			'event_desc' => 'Description',
			'event_from' => 'Start Date',
			'event_to' => 'End Date',
			'event_active' => 'Active',
			'event_image' => 'Image',
			'event_file' => 'File',
		);
		$rules = array(
			'event_title' => 'required|min:1',
			'event_from' => 'date_format:"m/d/Y"',
			'event_to' => 'date_format:"m/d/Y"',
			'event_image' => 'image',
		);

		$val = Validator::make($input, $rules);
		$val->setAttributeNames($attr);

		if ($val->fails()){
			if ($id == 0){
				return redirect('events/add')->withInput()->withErrors($val);
			} else {
				return redirect('events/'.$id.'/edit')->withInput()->withErrors($val->errors());
			}
		}

		$dest_path = realpath('./uploads');
		$dest_fn = '';

		if ($request->hasFile('event_image')){
			$request->file('event_image');
			$src = $request->file('event_image')->getRealPath();
			$orig_fn = $request->file('event_image')->getClientOriginalName();
			$orig_ext = $request->file('event_image')->getClientOriginalExtension();

			$ext = pathinfo($orig_fn, PATHINFO_EXTENSION);
			$filename = basename($orig_fn, '.'.$ext);

			$dest_fn = EventsController::randName($filename, $ext);
			//$new_path = $dest_path.DIRECTORY_SEPARATOR.$dest_fn;

			$request->file('event_image')->move($dest_path, $dest_fn);

		}

		$row->event_active = 0;
		if ($request->has('event_active')){
			if ($request->input('event_active') == 1){
				if ($id == 0){
					\App\Event::where('event_active', 1)->update(['event_active' => 0]);
				} else {
					\App\Event::where('event_id', '<>', $id)->where('event_active', 1)->update(['event_active' => 0]);
				}
				$row->event_active = 1;
			}
		}

		$row->event_title = $request->input('event_title');
		$row->event_desc = $request->input('event_desc');

		if ($request->has('event_from')){
			$row->event_from = Date('Y-m-d', strtotime($request->input('event_from')));
		} else {
			$row->event_from = NULL;
		}

		if ($request->has('event_to')){
			$row->event_to = Date('Y-m-d', strtotime($request->input('event_to')));
		} else {
			$row->event_to = NULL;
		}

		$row->event_active = $request->input('event_active');
		
		if ($request->hasFile('event_image')){
			$row->event_image = $dest_fn;
		}

		$row->save();

		return redirect('events');

	}


}
