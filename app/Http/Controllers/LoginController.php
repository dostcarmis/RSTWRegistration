<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use Validator;
use Auth;
use Session;

class LoginController extends Controller {

	public $attempts = 0;

	public function login_form()
	{
		$msg = Session::pull('errmsg', '');

		return view('login.index')->with(['msg' => $msg]);
	}

	/**
	 * Try to authenticate user
	 *
	 * @return Response
	 */
	public function login(Request $request)
	{

		$input = $request->all();
		$attr = array(
			'username' => 'Username',
			'password' => 'Password'
		);

		$rules = array(
			'username' => 'required',
			'password' => 'required'
		);

		$val = Validator::make($input, $rules);
		$val->SetAttributeNames($attr);

		if ($val->fails()){
			return redirect('/loginform')->withInput()->withErrors($val);
		}

		// Username **************************************************
		$user_login = array(
			'u_username' => $request->input('username'),
			'password' => $request->input('password')
		);

		if (Auth::attempt($user_login)){
			$this->attempts = 0;
			LoginController::load_user();
			return redirect('/events');
			die();
		}


		// Email **************************************************
		$user_login = array(
			'u_email' => $request->input('username'),
			'password' => $request->input('password')
		);

		if (Auth::attempt($user_login)){
			$this->attempts = 0;
			LoginController::load_user();
			return redirect('/events');
			die();
		}

		// mobile **************************************************
		$user_login = array(
			'u_gsm' => $request->input('username'),
			'password' => $request->input('password')
		);

		if (Auth::attempt($user_login)){
			$this->attempts = 0;
			LoginController::load_user();
			return redirect('/events');
			die();
		}

		$this->attempts++;
		Session::put('errmsg', 'Invalid Username or Password.');
		return redirect('/loginform');
	}

	/**
	 * Load user information
	 *
	 */
	public static function load_user(){
		$user = \App\VWUser::where('u_id', Auth::id())->first();
		if (!$user) return false;
		Session::put('ad_u_id', $user->u_id);
		Session::put('ad_u_username', $user->u_username);
		Session::put('ad_u_name', $user->u_name);
		Session::put('ad_u_fname', $user->u_fname);
		Session::put('ad_u_mname', $user->u_mname);
		Session::put('ad_u_lname', $user->u_lname);

		/*
		Session::put('ad_u_is_hrmo', $user->u_is_hrmo);
		Session::put('ad_u_is_director', $user->u_is_director);

		Session::put('ad_pos_id', $user->pos_id);
		Session::put('ad_pos_name', $user->pos_name);
		Session::put('ad_pos_abbr', $user->pos_abbr);
		Session::put('ad_pos_is_supervisor', $user->pos_is_supervisor);

		Session::put('ad_dep_id', $user->dep_id);
		Session::put('ad_dep_name', $user->dep_name);
		Session::put('ad_dep_abbr', $user->dep_abbr);
		*/

		Session::put('ad_ug_id', $user->ug_id);
		Session::put('ad_ug_name', $user->ug_name);
		Session::put('ad_ug_is_admin', $user->ug_is_admin);

		/*
		$rights = \App\VWUserGroupRight::where('ug_id', $user->ug_id)->get();

		$ugr = array();

		foreach ($rights as $right) {
			$ugr[$right->ur_name] = array();

			if ($right->ugr_view == 1){
				$ugr[$right->ur_name]['view'] = 1;
			}

			if ($right->ugr_add == 1){
				$ugr[$right->ur_name]['add'] = 1;
			}
			
			if ($right->ugr_edit == 1){
				$ugr[$right->ur_name]['edit'] = 1;
			}

			if ($right->ugr_delete == 1){
				$ugr[$right->ur_name]['delete'] = 1;
			}

			if ($right->ugr_approve == 1){
				$ugr[$right->ur_name]['approve'] = 1;
			}
		}

		Session::put('ad_ug_rights', $ugr);
		*/
		return true;
	}

	/**
	 * logout user
	 *
	 * @return Response
	 */
	public function logout()
	{
		Session::flush();
		Auth::logout();
		return redirect('/');
	}

	public static function can_access($key, $op = ''){
		return true;
		if (!LoginController::load_user()) return false;
	    $ugr = Session::get('ad_ug_rights');
	    if (!is_array($ugr)) return false;
	    if (!array_key_exists($key, $ugr)) return false;
	    if (strlen($op) == 0) return true;
	    return (array_key_exists($op, $ugr[$key]));
	}

}
