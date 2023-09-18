<?php namespace App;

use Illuminate\Auth\Authenticatable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth\Passwords\CanResetPassword;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Contracts\Auth\CanResetPassword as CanResetPasswordContract;
use Hash;

class User extends Model implements AuthenticatableContract, CanResetPasswordContract {

	use Authenticatable, CanResetPassword;

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'er_users';
	protected $primaryKey = 'u_id';


	/**
	 * The attributes that are mass assignable.
	 *
	 * @var array
	 */
	protected $fillable = ['u_fname', 'u_mname', 'u_lname', 'u_email', 'u_username', 'u_gsm', 'u_enabled', 'u_password'];

	/**
	 * The attributes excluded from the model's JSON form.
	 *
	 * @var array
	 */
	protected $hidden = ['u_password'];

	public function getAuthIdentifier(){
		return $this->getKey();
	}
	
	public function getAuthPassword(){
		return $this->u_password;
	}
	
	public function getReminderEmail(){
		return $this->u_email;
	}
	
	public function setPasswordAttribute($value){
		$this->u_password = bcrypt($value);
	}

	public function getPasswordAttribute(){
		return $this->u_password;
	}


	public function getUCreatedAttribute(){
		return date('m/d/Y H:i:s', strtotime($this->attributes['u_created']));
	}

	public function setUCreatedAttribute($value){
		$this->attributes['u_created'] = $value;
	}

	public function getULastmodifiedAttribute(){
		return date('m/d/Y H:i:s', strtotime($this->attributes['u_lastmodified']));
	}

	public function setULastmodifiedAttribute($value){
		$this->attributes['u_lastmodified'] = $value;
	}

	

}
