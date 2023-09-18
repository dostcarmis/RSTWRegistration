<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class VWUser extends Model {

	protected $table = 'vw_users';
	protected $primaryKey = 'u_id';

	public $personnel = array();

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
