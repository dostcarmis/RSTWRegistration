@extends('layouts.ereg_layout')
@section('content')
@if (strlen($msg) > 0)
<script>
	webView.showToast("{{ $msg }}");
</script>
@endif

<div class="text-center">
	<h3>
		There are no active events taking place at this time.
		<br>
		Please try again later...
	</h3>
</div>

@endsection
