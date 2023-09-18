<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Barcode extends Model {
	public $timestamps 		= true;

	protected $table 		= 'er_barcodes';
	protected $primaryKey 	= 'barcode_id';

	/*
	public function setEventFromAttribute($value){
		$this->attributes['event_from'] = $value;
	}

	public function setEventToAttribute($value){
		$this->attributes['event_to'] = $value;
	}

	*/


	// public function getEventCreatedAttribute(){
	// 	return date('m/d/Y H:i:s', strtotime($this->attributes['event_created']));
	// }

	// public function setEventCreatedAttribute($value){
	// 	$this->attributes['event_created'] = $value;
	// }

	// public function getEventLastmodifiedAttribute(){
	// 	return date('m/d/Y H:i:s', strtotime($this->attributes['event_lastmodified']));
	// }

	// public function setEventLastmodifiedAttribute($value){
	// 	$this->attributes['event_lastmodified'] = $value;
	// }


}
