<?php namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;
use Validator;

class UsersController extends Controller {

	/**
	 * Show the index page.
	 *
	 * @return View
	 */
	public function index(Request $request){
		
		if (!LoginController::can_access('Users')) return redirect('/');

		$q_rc = 'q_users';
		$qt_rc = 'qt_users';
		$qpos_rc = 'qpos_users';
		$qdep_rc = 'qdep_users';

		$q = '';
		$qt = 0;

		if ($request->has('search-btn')){
			if ($request->has('q')){
				$q = $request->input('q', '');
				Session::put($q_rc, $q);
			}

			if ($request->has('qt')){
				$qt = $request->input('qt', 0);
				Session::put($qt_rc, $qt);
			}

		} else{
			if (Session::has($q_rc)){
				$q = Session::get($q_rc);
			}

			if (Session::has($qt_rc)){
				$qt = Session::get($qt_rc);
			}

		}

		$msg = Session::pull('errmsg', '');
		$where = '';

		$values = array();


		if (strlen($q) > 0){
			$where .= "((u_name LIKE ?) OR (u_fname LIKE ?) OR (u_mname LIKE ?) OR (u_lname LIKE ?) OR (u_email LIKE ?) OR (u_gsm LIKE ?) OR (u_username LIKE ?))";
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
			$where .= '(ug_id = ?)';
			$values[] = $qt;
		}

		$rows = ( (strlen($where) == 0) ? \App\VWUser::all() : \App\VWUser::whereRaw($where, $values)->get());
		return view('users.index')->with(['rows' => $rows, 'msg' => $msg, 'q' => $q, 'qt' => $qt]);
	}

	/**
	 * Add.
	 *
	 * @return View
	 */
	public function add(){
		if (!LoginController::can_access('Users', 'add')) return redirect('/');
		$row = new \App\User;
		return view('users.form')->with(['row' => $row, 'op' => 0, 'id' => 0]);
	}

	/**
	 * Edit.
	 *
	 * @return View
	 */
	public function edit($id){
		if (!LoginController::can_access('Users', 'edit')) return redirect('/');
		$row = \App\User::find($id);

		if (!$row){
			return redirect('users');
		}

		return view('users.form')->with(['row' => $row, 'op' => 1, 'id' => $id]);
	}

	/**
	 * Save.
	 *
	 * @return View
	 */
	public function save(Request $request, $id){
		if ((!LoginController::can_access('Users', 'add')) && (!LoginController::can_access('Users', 'edit'))) return redirect('/');

		$msg = '';
		if ($id == 0){
			$row = new \App\User;
			$msg = 'Record Added.';
		} else {
			$row = \App\User::find($id);
			if (!$row){
				return redirect('users');
			}
			$msg = 'Record Updated.';
		}

		$input = $request->all();
		$attr = array(
			'ug_id' => 'User Group',
			'u_code' => 'Code',
			'u_fname' => 'First Name',
			'u_mname' => 'Middle Name',
			'u_lname' => 'Last Name',
			'u_username' => 'Username',
			'u_email' => 'Email',
			'u_gsm' => 'Mobile #',
			'password' => 'Password',
			'password_confirmation' => 'Password Confirmation'
		);
		$rules = array(
			'ug_id' => 'required|exists:er_usergroups,ug_id',
			'u_fname' => 'required|min:1',
			'u_lname' => 'required|min:1',
			'u_username' => 'required|min:3|unique:er_users,u_username,'.$id.',u_id',
			//'u_email' => 'email|required|min:3|unique:cm_users,u_email,'.$id.',u_id',
			'password' => ($id == 0 ? 'required' : 'sometimes').'|min:6|confirmed',
			'password_confirmation' => 'required_with:password|same:password'			
		);

			//'u_gsm' => array(
				//'regex:(^\+\d{12}$)',
				//'required', 
				//'min:13', 
				//'unique:cm_users,u_gsm,'.$id.',u_id'
			//),


		$val = Validator::make($input, $rules);
		$val->setAttributeNames($attr);

		if ($val->fails()){
			if ($id == 0){
				return redirect('users/add')->withInput()->withErrors($val);
			} else {
				return redirect('users/'.$id.'/edit')->withInput()->withErrors($val->errors());
			}
		}

		$row->u_fname = $request->input('u_fname');
		$row->u_mname = $request->input('u_mname');
		$row->u_lname = $request->input('u_lname');
		
		$row->u_username = $request->input('u_username');
		$row->u_email = $request->input('u_email');
		$row->u_gsm = $request->input('u_gsm');
		
		$row->ug_id = $request->input('ug_id');
		
		if ($request->has('password')){
			$row->password = $request->input('password');
		}
		$row->u_enabled = $request->input('u_enabled');

		if ($id == 0){
			$row->u_created = Date('Y-m-d H:i:s');
			$row->u_created_by = Session::get('ad_u_name');
		}
		$row->u_lastmodified = Date('Y-m-d H:i:s');
		$row->u_lastmodified_by = Session::get('ad_u_name');
		$row->save();

		$form_return = 0;
		if ($id == 0){
			if ($request->has('form_return')){
				$form_return = $request->input('form_return');
				Session::put('form_return', $form_return);
			}
		}

		Session::put('errmsg', $msg);

		if ($form_return == 1){
			return redirect('users/add');
		}

		return redirect('users');
	}

	/**
	 * Delete.
	 *
	 * @return View
	 */
	public function delete($id){
		if (!LoginController::can_access('Users', 'delete')) return redirect('/');
		$row = \App\User::find($id);

		if (!$row){
			return redirect('users');
		}

		$row->delete();

		Session::put('errmsg', 'Record Deleted.');
		return redirect('users');
	}
}
