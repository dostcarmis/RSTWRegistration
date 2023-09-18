@extends('layouts.master_layout')
@section('content')
<?php

	$regions = \App\Region::lists('region_name', 'region_id');
	$events = \App\Event::lists('event_title', 'event_id');
	$sites = \App\Site::lists('site_name', 'site_id');
	$classifications = \App\Classification::lists('class_name', 'class_id');
	$genders = \App\Gender::lists('gender_name', 'gender_id');
	$status = \App\Status::lists('civil_name', 'civil_id');

?>
<div class="panel panel-default">
	<div class="panel-heading">
		<div class="clearfix">
			<h3 class="panel-title pull-left">Visitors <small>({{ ($id == 0) ? 'Add' : 'Edit' }})</small></h3>
			<div class="pull-right">
				<a class="btn btn-success btn-xm" href="{{ URL::to('visitors') }}" title="Add" role="button"><span class="fa fa-arrow-left"></span> Back</a>
			</div>
		</div>
	</div>
	<div class="panel-body">
		{!! Form::model($row, array('name' => 'input_form', 'url' => URL::to('visitors/'.$id.'/save'), 'class' => 'form', 'role' => 'form', 'files' => true)) !!}

			<div class="form-group">
				{!! Form::label('vis_code', 'Barcode', array('class' => 'control-label')) !!}
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('vis_code') }}</small></span>
				{!! Form::text('vis_code', NULL, array('class' => 'form-control', 'placeholder' => 'Barcode', 'maxlength' => '255')) !!}
			</div>

			<div class="form-group">
				{!! Form::label('region_id', 'Region', array('class' => 'control-label')) !!}
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('region_id') }}</small></span>
				{!! Form::select('region_id', $regions, NULL, array('class' => 'form-control input-sm')) !!}
			</div>

			<div class="form-group">
				{!! Form::label('event_id', 'Event', array('class' => 'control-label')) !!}
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('event_id') }}</small></span>
				{!! Form::select('event_id', $events, NULL, array('class' => 'form-control input-sm')) !!}
			</div>
			<!--
			<div class="form-group">
				{!! Form::label('site_id', 'Site', array('class' => 'control-label')) !!}
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('site_id') }}</small></span>
				{!! Form::select('site_id', $sites, NULL, array('class' => 'form-control input-sm')) !!}
			</div>
			-->
			<div class="form-group">
				{!! Form::label('vis_company', 'Company', array('class' => 'control-label')) !!}
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('vis_company') }}</small></span>
				{!! Form::text('vis_company', NULL, array('class' => 'form-control', 'placeholder' => 'Company', 'maxlength' => '255')) !!}
			</div>

			<div class="form-group">
				{!! Form::label('class_id', 'Classification', array('class' => 'control-label')) !!}
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('class_id') }}</small></span>
				{!! Form::select('class_id', $classifications, NULL, array('class' => 'form-control input-sm')) !!}
			</div>

			<div class="form-group">
				{!! Form::label('vis_fname', 'First Name *', array('class' => 'control-label')) !!}
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('vis_fname') }}</small></span>
				{!! Form::text('vis_fname', NULL, array('class' => 'form-control', 'placeholder' => 'First Name', 'maxlength' => '255', 'required')) !!}
			</div>

			<div class="form-group">
				{!! Form::label('vis_mname', 'Middle Name', array('class' => 'control-label')) !!}
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('vis_mname') }}</small></span>
				{!! Form::text('vis_mname', NULL, array('class' => 'form-control', 'placeholder' => 'Middle Name', 'maxlength' => '255')) !!}
			</div>

			<div class="form-group">
				{!! Form::label('vis_lname', 'Last Name *', array('class' => 'control-label')) !!}
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('vis_lname') }}</small></span>
				{!! Form::text('vis_lname', NULL, array('class' => 'form-control', 'placeholder' => 'Last Name', 'maxlength' => '255', 'required')) !!}
			</div>

			<div class="form-group">
				{!! Form::label('vis_age', 'Age', array('class' => 'control-label')) !!}
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('vis_age') }}</small></span>
				{!! Form::number('vis_age', NULL, array('class' => 'form-control', 'placeholder' => 'Age', 'maxlength' => '3', 'min' => 0, 'step' => 1)) !!}
			</div>

			<div class="form-group">
				{!! Form::label('gender_id', 'Gender', array('class' => 'control-label')) !!}
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('gender_id') }}</small></span>
				{!! Form::select('gender_id', $genders, NULL, array('class' => 'form-control input-sm')) !!}
			</div>

			<div class="form-group">
				{!! Form::label('civil_id', 'Civil Status', array('class' => 'control-label')) !!}
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('civil_id') }}</small></span>
				{!! Form::select('civil_id', $status, NULL, array('class' => 'form-control input-sm')) !!}
			</div>

			<div class="form-group">
				{!! Form::label('vis_email', 'Email', array('class' => 'control-label')) !!}
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('vis_email') }}</small></span>
				{!! Form::email('vis_email', NULL, array('class' => 'form-control', 'placeholder' => 'Email', 'maxlength' => '255')) !!}
			</div>


		{!! Form::submit('Save' , ['class'=>'btn btn-primary btn-block']) !!}

		{!! Form::hidden('vis_batch', NULL) !!}
		{!! Form::hidden('vis_serial', NULL) !!}
		{!! Form::close() !!}
	</div>
	<div class="panel-footer">
	</div>
</div>
@endsection
