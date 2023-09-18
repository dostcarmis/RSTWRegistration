<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class UserGroupRight extends Model {

	protected $table = 'er_usergroup_rights';
	protected $primaryKey = 'ugr_id';


	public function getUgrCreatedAttribute(){
		return date('m/d/Y H:i:s', strtotime($this->attributes['ugr_created']));
	}

	public function setUgrCreatedAttribute($value){
		$this->attributes['ugr_created'] = $value;
	}

	public function getUgrLastmodifiedAttribute(){
		return date('m/d/Y H:i:s', strtotime($this->attributes['ugr_lastmodified']));
	}

	public function setUgrLastmodifiedAttribute($value){
		$this->attributes['ugr_lastmodified'] = $value;
	}


}
