<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Gender extends Model {

	protected $table = 'er_genders';
	protected $primaryKey = 'gender_id';


	public function getGenderCreatedAttribute(){
		return date('m/d/Y H:i:s', strtotime($this->attributes['gender_created']));
	}

	public function setGenderCreatedAttribute($value){
		$this->attributes['gender_created'] = $value;
	}

	public function getGenderLastmodifiedAttribute(){
		return date('m/d/Y H:i:s', strtotime($this->attributes['gender_lastmodified']));
	}

	public function setGenderLastmodifiedAttribute($value){
		$this->attributes['gender_lastmodified'] = $value;
	}


}
