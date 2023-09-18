<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Personnel extends Model {

	protected $table = 'cm_personnel';
	protected $primaryKey = 'pers_id';

	public function getTrcCreatedAttribute(){
		return date('m/d/Y H:i:s', strtotime($this->attributes['pers_created']));
	}

	public function setTrcCreatedAttribute($value){
		$this->attributes['pers_created'] = $value;
	}

	public function getTrcLastmodifiedAttribute(){
		return date('m/d/Y H:i:s', strtotime($this->attributes['pers_lastmodified']));
	}

	public function setTrcLastmodifiedAttribute($value){
		$this->attributes['pers_lastmodified'] = $value;
	}

}
