<?php namespace App\Http\Controllers;

use Input;
use Session;
use Validator;
use App\Site;
use Carbon\Carbon;
use Illuminate\Http\Request;

class SitesController extends Controller {

	public function index(Request $request)
	{
		$q_rc = 'q_sites';
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
			$where .= "(site_name LIKE ?)";
			$values[] = "%$q%";
		}

		$rows = ( (strlen($q) == 0) ? \App\Site::all() : \App\Site::whereRaw($where, $values)->get());

		return view('sites.index', compact('rows', 'msg', 'q'));
	}

	public function add()
	{
		$row = new Site;
		return view('sites.form')->with(['row' => $row, 'op' => 0, 'id' => 0]);
	}

	public function edit($id){
		$row = Site::find($id);
		if (!$row){
			Session::put('errmsg', 'Record not found!!!');
			return redirect('sites.form');
		}

		return view('sites.form')->with(['row' => $row, 'op' => 1, 'id' => $id]);
	}

	public function delete($id){

		return redirect('sites');

		$row = Site::find($id)->first();

		if (!$row){
			Session::put('errmsg', 'Record not found!!!');
		} else {
			$row->delete();
			Session::put('errmsg', 'Record Deleted.');
		}
		return redirect('sites');
	}

	public function save(Request $request, $id){

		$row = new \App\Site;
		$msg = 'Record Added.';
		if ($id > 0){
			$row = \App\Site::find($id);
			if (!$row){
				return redirect('sites');
			}
			$msg = 'Record Updated.';
		}

		$input = $request->all();

		//var_dump($input);
		//die();

		$attr = array(
			'site_name' => 'Name',
		);
		$rules = array(
			'site_name' => 'required|min:1',
		);

		$val = Validator::make($input, $rules);
		$val->setAttributeNames($attr);

		if ($val->fails()){
			if ($id == 0){
				return redirect('sites/add')->withInput()->withErrors($val);
			} else {
				return redirect('sites/'.$id.'/edit')->withInput()->withErrors($val->errors());
			}
		}


		$row->site_name = $request->input('site_name');
		$row->site_desc = $request->input('site_desc');
		$row->save();

		return redirect('sites');

	}


}
