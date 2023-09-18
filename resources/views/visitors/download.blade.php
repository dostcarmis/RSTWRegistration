@extends('layouts.excel')
@section('content')
<?php
$ctr = 0;
?>
<h3>Visitors</h3>
<table>
	<thead>
		<tr>
			<th>#</th>
			<th>Barcode</th>
			<th>Name</th>
			<th>Gender</th>
			<th>Age</th>
			<th>Civil Status</th>
			<th>Company</th>
			<th>Mobile</th>
			<th>Email</th>
			<th>Region</th>
			<th>Classification</th>
			<th>Event</th>
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
			<td>{{ $row->vis_gsm }}</td>
			<td>{{ $row->vis_email }}</td>
			<td>{{ $row->region_name }}</td>
			<td>{{ $row->class_name }}</td>
			<td>{{ $row->event_title }}</td>
		</tr>
		@endforeach
	</tbody>
</table>
@stop