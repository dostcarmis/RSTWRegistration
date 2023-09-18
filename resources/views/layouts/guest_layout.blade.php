@include('layouts.public_header')
	<div id="page-wrapper" class="container">
		<img src="{{ asset('images/eval_logo.png') }}" class="img-responsive" alt="e-valuate">
	    @yield('content')

	</div>
@include('layouts.footer')