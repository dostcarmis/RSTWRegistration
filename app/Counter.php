<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Counter extends Model {
	public $timestamps 		= true;
	protected $table 		= 'er_counters';
	protected $primaryKey 	= 'counter_id';
	protected $fillable 	= ['counter_name'];

	 public function getCounterCreatedAttribute(){
	 	return date('m/d/Y H:i:s', strtotime($this->attributes['counter_created']));
	 }

	 public function setCounterCreatedAttribute($value){
	 	$this->attributes['counter_created'] = $value;
	 }

	 public function getCounterLastmodifiedAttribute(){
	 	return date('m/d/Y H:i:s', strtotime($this->attributes['counter_lastmodified']));
	 }

	 public function setCounterLastmodifiedAttribute($value){
	 	$this->attributes['counter_lastmodified'] = $value;
	 }


}
