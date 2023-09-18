@extends('layouts.ereg_layout')
@section('content')
<?php

$genders = \App\Gender::lists('gender_name', 'gender_id');
$civil = \App\CivilStatus::lists('civil_name', 'civil_id');
$classes = \App\Classification::lists('class_name', 'class_id');
$regions = \App\Region::lists('region_name', 'region_id');

?>
@if (strlen($msg) > 0)
<div class="alert alert-info">{{ $msg }}</div>
@endif

{!! Form::model($row, ['id' => 'ereg-form', 'name' => 'ereg-form', 'url' => URL::to('register/save'), 'class' => 'form', 'role' => 'form', 'autocomplete' => 'off']) !!}
<div class="row clearfix">
	<div class="col-sm-6 text-left">
		<h3>Registration</h3>
		<div class="row">
			<div class="form-group col-sm-12">
				{!! Form::label('vis_code', 'Code', array('class' => 'control-label')) !!}
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('vis_code') }}</small></span>
				{!! Form::text('vis_code', NULL, ['id' => 'vis_code', 'class'=>'form-control', 'required', 'maxlength'=>255]) !!}
			</div>
		</div>

		<div class="row">
			<div class="form-group col-sm-4">
				{!! Form::label('vis_fname', 'First Name', array('class' => 'control-label')) !!}
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('vis_fname') }}</small></span>
				{!! Form::text('vis_fname', NULL, ['id' => 'vis_fname', 'class'=>'form-control', 'required', 'maxlength'=>255]) !!}
			</div>

			<div class="form-group col-sm-4">
				{!! Form::label('vis_mname', 'Middle Name', array('class' => 'control-label')) !!}
				{!! Form::text('vis_mname', NULL, ['id' => 'vis_mname', 'class'=>'form-control', 'maxlength'=>255]) !!}
			</div>

			<div class="form-group col-sm-4">
				{!! Form::label('vis_lname', 'Last Name', array('class' => 'control-label')) !!}
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('vis_lname') }}</small></span>
				{!! Form::text('vis_lname', NULL, ['id' => 'vis_lname', 'class'=>'form-control', 'required', 'maxlength'=>255]) !!}
			</div>
		</div>

		<div class="row">
			<div class="form-group col-sm-6">
				{!! Form::label('vis_email', 'Email', array('class' => 'control-label')) !!}
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('vis_email') }}</small></span>
				{!! Form::text('vis_email', NULL, ['id' => 'vis_email', 'class'=>'form-control', 'maxlength'=>255]) !!}
				
			</div>
			<div class="form-group col-sm-6">
				{!! Form::label('vis_gsm', 'Mobile', array('class' => 'control-label')) !!}
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('vis_gsm') }}</small></span>
				{!! Form::text('vis_gsm', NULL, ['id' => 'vis_gsm', 'class'=>'form-control', 'maxlength'=>255]) !!}
				
			</div>
		</div>

		<div class="row">
			<div class="form-group col-sm-4">
				{!! Form::label('vis_age', 'Age', array('class' => 'control-label')) !!}
				&nbsp;&nbsp;<span class="text-danger"><small>{{ $errors->first('vis_age') }}</small></span>
				{!! Form::number('vis_age', NULL, ['class'=>'form-control', 'placeholder'=>'Age', 'maxlength'=>'3', 'min'=>'1', 'max'=>'200', 'required']) !!}
			</div>

			<div class="form-group col-sm-4">
				{!! Form::label('gender_id', 'Gender', array('class' => 'control-label')) !!}
				{!! Form::select('gender_id', $genders, NULL, ['class'=>'form-control']) !!}
			</div>

			<div class="form-group col-sm-4">
				{!! Form::label('civil_id', 'Civil Status', array('class' => 'control-label')) !!}
				{!! Form::select('civil_id', $civil, NULL, ['class'=>'form-control']) !!}
			</div>
		</div>

		<div class="row">
			<div class="form-group col-sm-12">
				{!! Form::label('vis_company', 'Company / Institution', array('class' => 'control-label')) !!}
				{!! Form::text('vis_company', NULL, ['id' => 'vis_company', 'class'=>'form-control', 'maxlength'=>255]) !!}
			</div>

		</div>
		<div class="row">
			<div class="form-group col-sm-6">
				{!! Form::label('region_id', 'Region', array('class' => 'control-label')) !!}
				{!! Form::select('region_id', $regions, NULL, ['class'=>'form-control']) !!}
			</div>

			<div class="form-group col-sm-6">
				{!! Form::label('class_id', 'Classification', array('class' => 'control-label')) !!}
				{!! Form::select('class_id', $classes, NULL, ['class'=>'form-control']) !!}
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				{!! Form::submit('Register' , ['class'=>'btn btn-default btn-block']) !!}
			</div>
		</div>
        <br>
        <div class="row">
            <div class="col-sm-12">
                <a href="{{ url('counterv/' . date('Ymd')) }}" class="btn btn-success btn-block">Barcode already registered? Click Here...</a>
            </div>
        </div>
	</div>

	<div class="col-sm-6">
		<center>
			<img class="img-responsive" src="{{ asset('uploads/'.$event->event_image) }}">
		</center>
	</div>
</div>
	{!! Form::hidden('vis_batch', NULL) !!}
	{!! Form::hidden('vis_serial', NULL) !!}
	{!! Form::hidden('event_id', NULL) !!}

{!! Form::close() !!}
@endsection
