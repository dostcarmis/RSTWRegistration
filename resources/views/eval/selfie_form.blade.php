@extends('layouts.eval_layout')
@section('content')
{!! Form::open(['id' => 'selfie-form', 'name' => 'selfie-form', 'url' => URL::to('evaluate/selfie_save'), 'class' => 'form', 'role' => 'form', 'files' => true]) !!}
<div class="row">
	<div class="col-sm-6">

		<div class="row">
			<div class="row q-item">
				<h3>Take a selfie to finish the evaluation.</h3>
				<small>Note : All photos will be uploaded to the DOST Calabarzon Facebook Page.</small>				
			</div>
			<div class="row">
				<br>
				<br>
				<br>
				<br>
				<br>
				{!! Form::file('eval_file', ['id' => 'eval_file', 'capture'=>'camera', 'accept'=>'image/*', 'style'=>'width:200px; margin:0 auto;']) !!}
			</div>
		</div>

	</div>

	<div class="col-sm-6">
		<img class="img-responsive" src="{{ asset('uploads/'.$event->event_image) }}">
	</div>
</div>
<div class="row">
	<div class="col-sm-6">
		{!! Form::submit('Continue' , ['class'=>'btn btn-default btn-block']) !!}
	</div>
</div>

{!! Form::close() !!}
@endsection
