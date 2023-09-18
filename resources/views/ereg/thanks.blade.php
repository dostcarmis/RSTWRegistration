@extends('layouts.ereg_layout')
@section('content')
<div class="row">
	<div class="col-sm-8">

		<div class="row">
			<div class="row q-item">
				<h1>Thank You.</h1>
			</div>

			@if (strlen($ereg_file) > 0)
				<img class="img-responsive selfie-img" src="{{ asset('uploads/'.$ereg_file) }}" alt="selfie">
			@endif

		</div>

	</div>

	<div class="col-sm-4">
		<img class="img-responsive" src="{{ asset('uploads/'.$event->event_image) }}">
	</div>
</div>

<div class="row">
	<div class="col-sm-8">
		<input type="button" class="btn btn-default btn-block" value="Finish" id="eval-finish-btn" name="eval-finish-btn" onclick="window.location = '{{ URL::to('evaluate/finished') }}'; return false;">
	</div>
</div>

@endsection
