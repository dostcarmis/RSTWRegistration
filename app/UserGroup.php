<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class UserGroup extends Model {

	protected $table = 'er_usergroups';
	protected $primaryKey = 'ug_id';


	public function getUgrCreatedAttribute(){
		return date('m/d/Y H:i:s', strtotime($this->attributes['ug_created']));
	}

	public function setUgrCreatedAttribute($value){
		$this->attributes['ug_created'] = $value;
	}

	public function getUgrLastmodifiedAttribute(){
		return date('m/d/Y H:i:s', strtotime($this->attributes['ug_lastmodified']));
	}

	public function setUgrLastmodifiedAttribute($value){
		$this->attributes['ug_lastmodified'] = $value;
	}


}
