@extends('layouts.eval_layout')
@section('content')
<?php 
		$event = \App\Event::where('event_active', 1)->first();
?>
<div class="row">
	<div class="col-sm-6">

		<div class="row">
			<div class="row q-item">
				<h1>Thank You.</h1>
			</div>

			@if (strlen($eval_file) > 0)
				<img class="img-responsive selfie-img" src="{{ asset('uploads/'.$eval_file) }}" alt="selfie">
			@endif

		</div>

	</div>

	<div class="col-sm-6">
		<img class="img-responsive" src="{{ asset('uploads/'.$event->event_image) }}">
	</div>
</div>

<div class="row">
	<div class="col-sm-6">
		<input type="button" class="btn btn-default btn-block" value="Finish" id="eval-finish-btn" name="eval-finish-btn" onclick="window.location = '{{ URL::to('evaluate/finished') }}'; return false;">
	</div>
</div>

@endsection
