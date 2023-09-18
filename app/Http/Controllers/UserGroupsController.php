<?php namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;
use Validator;

class UserGroupsController extends Controller {

	/*
	|--------------------------------------------------------------------------
	| Home Controller
	|--------------------------------------------------------------------------
	|
	| This controller renders your application's "dashboard" for usergroups that
	| are authenticated. Of course, you are free to change or remove the
	| controller as you wish. It is just here to get your app started!
	|
	*/

	/**
	 * Show the index page.
	 *
	 * @return View
	 */
	public function index(Request $request){
		if (!LoginController::can_access('UserGroups')) return redirect('/');

		$q_rc = 'q_usergroups';
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
		
		$rows = ( (strlen($q) == 0) ? \App\UserGroup::all() : \App\UserGroup::where('ug_name', 'LIKE' , '%'.$q.'%')->get() );
		return view('usergroups.index')->with(['rows' => $rows, 'msg' => $msg, 'q' => $q]);
	}

	/**
	 * Add.
	 *
	 * @return View
	 */
	public function add(){
		if (!LoginController::can_access('UserGroups', 'add')) return redirect('/');
		$row = new \App\UserGroup;
		return view('usergroups.form')->with(['row' => $row, 'op' => 0, 'id' => 0]);
	}

	/**
	 * Edit.
	 *
	 * @return View
	 */
	public function edit($id){
		if (!LoginController::can_access('UserGroups', 'edit')) return redirect('/');
		$row = \App\UserGroup::find($id);

		if (!$row){
			return redirect('usergroups');
		}

		return view('usergroups.form')->with(['row' => $row, 'op' => 1, 'id' => $id]);
	}

	/**
	 * Save.
	 *
	 * @return View
	 */
	public function save(Request $request, $id){
		if ((!LoginController::can_access('UserGroups', 'add')) && (!LoginController::can_access('UserGroups', 'edit'))) return redirect('/');

		$msg = '';
		if ($id == 0){
			$row = new \App\UserGroup;
			$msg = 'Record Added.';
		} else {
			$row = \App\UserGroup::find($id);
			if (!$row){
				return redirect('usergroups');
			}
			$msg = 'Record Updated.';
		}

		$input = $request->all();
		$attr = array(
			'ug_name' => 'Name',
		);
		$rules = array(
			'ug_name' => 'required|min:3|unique:er_usergroups,ug_name,'.$id.',ug_id'
		);

		$val = Validator::make($input, $rules);
		$val->setAttributeNames($attr);

		if ($val->fails()){
			if ($id == 0){
				return redirect('usergroups/add')->withInput()->withErrors($val);
			} else {
				return redirect('usergroups/'.$id.'/edit')->withInput()->withErrors($val->errors());
			}
		}
		$row->ug_name = $request->input('ug_name');
		$row->ug_is_admin = $request->input('ug_is_admin');

		if ($id == 0){
			$row->ug_created = Date('Y-m-d H:i:s');
			$row->ug_created_by = Session::get('ad_u_name');
		}
		$row->ug_lastmodified = Date('Y-m-d H:i:s');
		$row->ug_lastmodified_by = Session::get('ad_u_name');
		$row->save();
		
		// Delete previous rights
		if ($id > 0){
			\App\UserGroupRight::where('ug_id', $row->ug_id)->delete();
		}

		// Add selected rights
		$rights = \App\UserRight::all();
		foreach($rights as $right){
			$item = 'ur'.$right->ur_id;
			$input_view = 0;
			$input_add = 0;
			$input_edit = 0;
			$input_delete = 0;
			$input_approve = 0;

			$selected = false;

			if ($request->has($item.'_view')){
				$input_view = 1;
				$selected = true;
			}

			if ($request->has($item.'_add')){
				$input_add = 1;
				$selected = true;
			}

			if ($request->has($item.'_edit')){
				$input_edit = 1;
				$selected = true;
			}

			if ($request->has($item.'_delete')){
				$input_delete = 1;
				$selected = true;
			}

			if ($request->has($item.'_approve')){
				$input_approve = 1;
				$selected = true;
			}

			if (!$selected) continue;

			$nur = new \App\UserGroupRight;
			$nur->ug_id = $row->ug_id;
			$nur->ur_id = $right->ur_id;
			$nur->ugr_view = $input_view;
			$nur->ugr_add = $input_add;
			$nur->ugr_edit= $input_edit;
			$nur->ugr_delete = $input_delete;
			$nur->ugr_approve = $input_approve;
			$nur->save();
		}


		Session::put('errmsg', $msg);
		return redirect('usergroups');
	}

	/**
	 * Delete.
	 *
	 * @return View
	 */
	public function delete($id){
		if (!LoginController::can_access('UserGroups', 'delete')) return redirect('/');
		$row = \App\UserGroup::find($id);

		if (!$row){
			return redirect('usergroups');
		}

		$row->delete();

		Session::put('errmsg', 'Record Deleted.');
		return redirect('usergroups');
	}
}
