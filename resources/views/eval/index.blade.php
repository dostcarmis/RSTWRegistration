@extends('layouts.eval_layout')
@section('content')
@if (strlen($msg) > 0)
<script>
	webView.showToast("{{ $msg }}");
</script>
@endif

<div class="text-center">
	<h3>Scan barcode to evaluate...</h3>
</div>
{!! Form::open(['id' => 'barcode-form', 'name' => 'barcode-form', 'url' => URL::to('evaluate/check'), 'class' => 'form', 'role' => 'form', 'autocomplete' => 'off']) !!}
	<div class="form-group"> 
		<input id="barcode-eval" name="barcode-eval" class="barcode-input" type="text" maxlength="255">
	</div>
{!! Form::close() !!}

@endsection
