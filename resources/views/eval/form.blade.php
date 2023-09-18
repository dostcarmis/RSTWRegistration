@extends('layouts.eval_layout')
@section('content')
<?php 
	 // Form::hidden('barcode-eval', $barcode) 
	 // Form::hidden('event_id', $event->event_id) 

?>
@if (strlen($msg) > 0)
<div class="alert alert-danger text-center">
    {{ $msg }}
</div>
@endif
{!! Form::model($row, ['id' => 'eval-form', 'name' => 'eval-form', 'url' => URL::to('evaluate/save'), 'class' => 'form', 'role' => 'form', 'autocomplete' => 'off']) !!}
<div class="row">
	<div class="col-sm-6">

        <!--
        ***************************************************************************************************************************
        -->
        <div class="row">
            <div class="row q-item">
                <h4 class="q-question">Enter your registered barcode</h4>
            </div>
            <div class="row">
                <div class="form-group">
                    <input class="barcode-input" type="text" class="form-control" name="barcode" maxlength="8"
                           style="border: 1px #00BFFF solid; width: 89%; margin-top: 5px;" placeholder="Barcode"
                           name="barcode" required="required">
                </div>
            </div>
            <br>
        </div>

		<!--
		***************************************************************************************************************************
		-->
		<div class="row">
			<div class="row q-item">
				<h4 class="q-question">Is this your first time to attend this event?</h4>
			</div>
			<div class="row">
				<label class="eval-firsttime-label" for="eval-firsttime-yes" title="YES">
					<img class="img-responsive" src="{{ asset('images/1_yes.png') }}" alt="YES">
				</label>
				{!! Form::radio('eval_firsttime', '1', NULL, ['id' => 'eval-firsttime-yes']) !!}
				<label class="eval-firsttime-label" for="eval-firsttime-no" title="NO">
					<img class="img-responsive" src="{{ asset('images/2_no.png') }}" alt="NO">
				</label>
				{!! Form::radio('eval_firsttime', '0', NULL, ['id' => 'eval-firsttime-no']) !!}
			</div>
			<br>
		</div>

		<!--
		***************************************************************************************************************************
		-->

		<div class="row">
			<div class="row q-item">
				<h4 class="q-question">How did you learn about this event? (Choose atleast one)</h4>
			</div>
			<div class="row">
				<label class="eval-ref-label" for="eval_ref_1">
					<img class="img-responsive" src="{{ asset('images/1_radio.png') }}" alt="RADIO">
				</label>
				{!! Form::checkbox('eval-ref[]', '1', NULL, ['id' => 'eval_ref_1']) !!}
				<label class="eval-ref-label" for="eval_ref_2">
					<img class="img-responsive" src="{{ asset('images/2_tv.png') }}" alt="TV">
				</label>
				{!! Form::checkbox('eval-ref[]', '2', NULL, ['id' => 'eval_ref_2']) !!}
				<label class="eval-ref-label" for="eval_ref_3">
					<img class="img-responsive" src="{{ asset('images/3_news.png') }}" alt="NEWSPAPER">
				</label>
				{!! Form::checkbox('eval-ref[]', '3', NULL, ['id' => 'eval_ref_3']) !!}
				<label class="eval-ref-label" for="eval_ref_4">
					<img class="img-responsive" src="{{ asset('images/4_internet.png') }}" alt="INTERNET">
				</label>
				{!! Form::checkbox('eval-ref[]', '4', NULL, ['id' => 'eval_ref_4']) !!}
				<label class="eval-ref-label" for="eval_ref_5">
					<img class="img-responsive" src="{{ asset('images/5_school.png') }}" alt="SCHOOL">
				</label>
				{!! Form::checkbox('eval-ref[]', '5', NULL, ['id' => 'eval_ref_5']) !!}
				<label class="eval-ref-label" for="eval_ref_6">
					<img class="img-responsive" src="{{ asset('images/6_office.png') }}" alt="OFFICE">
				</label>
				{!! Form::checkbox('eval-ref[]', '6', NULL, ['id' => 'eval_ref_6']) !!}
				<label class="eval-ref-label" for="eval_ref_7">
					<img class="img-responsive" src="{{ asset('images/7_mail.png') }}" alt="INVITATION">
				</label>
				{!! Form::checkbox('eval-ref[]', '7', NULL, ['id' => 'eval_ref_7']) !!}
				<label class="eval-ref-label" for="eval_ref_8">
					<img class="img-responsive" src="{{ asset('images/8_referral.png') }}" alt="REFERRAL">
				</label>
				{!! Form::checkbox('eval-ref[]', '8', NULL, ['id' => 'eval_ref_8']) !!}
			</div>
			<br>
		</div>

		<!--
		***************************************************************************************************************************
		-->

		<div class="row">
			<div class="row q-item">
				<h4 class="q-question">What is your overall rating of the event?</h4>
			</div>
			<div class="row">
				<label class="eval-rate-label" for="eval-rate-5" title="Very Satisfied">
					<img class="img-responsive" src="{{ asset('images/star_5.png') }}" alt="Very Satisfied">
				</label>
				{!! Form::radio('eval_rating_overall', '5', NULL, ['id' => 'eval-rate-5']) !!}
				<label class="eval-rate-label" for="eval-rate-4" title="Satisfied">
					<img class="img-responsive" src="{{ asset('images/star_4.png') }}" alt="Satisfied">
				</label>
				{!! Form::radio('eval_rating_overall', '4', NULL, ['id' => 'eval-rate-4']) !!}
				<label class="eval-rate-label" for="eval-rate-3" title="Neither Satisfied Nor Dissatisfied">
					<img class="img-responsive" src="{{ asset('images/star_3.png') }}" alt="Neither Satisfied Nor Dissatisfied">
				</label>
				{!! Form::radio('eval_rating_overall', '3', NULL, ['id' => 'eval-rate-3']) !!}
				<label class="eval-rate-label" for="eval-rate-2" title="Dissatisfied">
					<img class="img-responsive" src="{{ asset('images/star_2.png') }}" alt="Dissatisfied">
				</label>
				{!! Form::radio('eval_rating_overall', '2', NULL, ['id' => 'eval-rate-2']) !!}
				<label class="eval-rate-label" for="eval-rate-1" title="Very Dissatisfied">
					<img class="img-responsive" src="{{ asset('images/star_1.png') }}" alt="Very Dissatisfied">
				</label>
				{!! Form::radio('eval_rating_overall', '1', NULL, ['id' => 'eval-rate-1']) !!}
			</div>
			<br>
		</div>

		<!--
		***************************************************************************************************************************
		-->

	</div>

	<div class="col-sm-6">
		<img class="img-responsive" src="{{ asset('uploads/'.$event->event_image) }}">
	</div>
</div>

<div class="row">
	<div class="col-sm-6">
		{!! Form::submit('Continue' , ['class'=>'btn btn-default btn-block']) !!}
	</div>
	<div class="col-sm-6">
		
	</div>
</div>

{!! Form::close() !!}
@endsection
