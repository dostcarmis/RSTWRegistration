<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class VWEvent extends Model {
	public $timestamps 		= true;

	protected $table 		= 'vw_events';
	protected $primaryKey 	= 'event_id';

	/*
	public function setEventFromAttribute($value){
		$this->attributes['event_from'] = $value;
	}

	public function setEventToAttribute($value){
		$this->attributes['event_to'] = $value;
	}

	*/

	public function getEventFromAttribute(){
		if (!$this->attributes) return NULL;
		if (!array_key_exists('event_from', $this->attributes)) return NULL;
		if ($this->attributes['event_from'] == NULL) return NULL;
		return date('m/d/Y', strtotime($this->attributes['event_from']));
	}


	public function getEventToAttribute(){
		if (!$this->attributes) return NULL;
		if (!array_key_exists('event_to', $this->attributes)) return NULL;
		if ($this->attributes['event_to'] == NULL) return NULL;
		return date('m/d/Y', strtotime($this->attributes['event_to']));
	}


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
