<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Evaluation extends Model {

	protected $table = 'er_event_evaluations';
	protected $primaryKey = 'eval_id';


	public function getEvalCreatedAttribute(){
		return date('m/d/Y H:i:s', strtotime($this->attributes['eval_created']));
	}

	public function setEvalCreatedAttribute($value){
		$this->attributes['eval_created'] = $value;
	}

	public function getEvalLastmodifiedAttribute(){
		return date('m/d/Y H:i:s', strtotime($this->attributes['eval_lastmodified']));
	}

	public function setEvalLastmodifiedAttribute($value){
		$this->attributes['eval_lastmodified'] = $value;
	}


}
