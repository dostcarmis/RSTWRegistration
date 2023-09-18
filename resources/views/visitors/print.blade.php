@extends('layouts.print')
@section('content')
<?php
$ctr = 0;
?>
<h3>Visitors</h3>
<table class="table table-striped table-hover table-condensed table-bordered">
	<thead>
		<tr>
			<th>#</th>
			<th class="text-center">Barcode</th>
			<th class="text-center">Name</th>
			<th class="text-center">Gender</th>
			<th class="text-center">Age</th>
			<th class="text-center">Civil Status</th>
			<th class="text-center">Company</th>
			<th class="text-center">Mobile</th>
			<th class="text-center">Email</th>
			<th class="text-center">Region</th>
			<th class="text-center">Classification</th>
		</tr>
	</thead>
	<tbody>
		@foreach($rows as $row)
		<?php $ctr++; ?>
		<tr>
			<td>{{ $ctr }}</td>
			<td>{{ $row->vis_code }}</td>
			<td>{{ $row->vis_lname }}, {{ $row->vis_fname }} {{ $row->vis_mname }}</td>
			<td>{{ $row->gender_name }}</td>
			<td>{{ $row->vis_age }}</td>
			<td>{{ $row->civil_name }}</td>
			<td>{{ $row->vis_company }}</td>
			<td>{{ $row->vis_email }}</td>
			<td>{{ $row->vis_gsm }}</td>
			<td>{{ $row->region_name }}</td>
			<td>{{ $row->class_name }}</td>
		</tr>
		@endforeach
	</tbody>
</table>
@stop