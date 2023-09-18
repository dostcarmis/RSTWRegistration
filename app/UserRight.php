<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class UserRight extends Model {

	protected $table = 'er_userrights';
	protected $primaryKey = 'ur_id';


	public function getUrCreatedAttribute(){
		return date('m/d/Y H:i:s', strtotime($this->attributes['ur_created']));
	}

	public function setUrCreatedAttribute($value){
		$this->attributes['ur_created'] = $value;
	}

	public function getUrLastmodifiedAttribute(){
		return date('m/d/Y H:i:s', strtotime($this->attributes['ur_lastmodified']));
	}

	public function setUrLastmodifiedAttribute($value){
		$this->attributes['ur_lastmodified'] = $value;
	}


}
