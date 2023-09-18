@extends('layouts.master_layout')
@section('content')
	<?php
		$ctr = 0;
	?>			
		<div class="panel-heading">
			<div class="clearfix">
				<h3 class="panel-title pull-left">Visitors</h3>
				<div class="pull-right">
					<a class="btn btn-success btn-xs" href="{{ URL::to('/visitors/add') }}" title="Add Item" role="button"><span class="fa fa-plus"></span> Add Item</a>
				</div>
			</div>
		</div>
		<!-- <div class="table-responsive">
			<table id="grid_table" class="table table-bordered table-striped table-hover table-condensed tablesorter">
				<thead>
					<tr>
						<th>Student/Academe</th>
						<th>Business/Entrepreneur</th>
						<th>Government Employee</th>
						<th>Private Organization</th>
						<th>Homemakers</th>
						<th>Media</th>
						<th>Others</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>{{ App\Visitor::where('class_id', 5)->count() }}</td>
						<td>{{ App\Visitor::where('class_id', 5)->count() }}</td>
						<td>{{ App\Visitor::where('class_id', 5)->count() }}</td>
						<td>{{ App\Visitor::where('class_id', 5)->count() }}</td>
						<td>{{ App\Visitor::where('class_id', 5)->count() }}</td>
						<td>{{ App\Visitor::where('class_id', 5)->count() }}</td>
						<td>{{ App\Visitor::where('class_id', 5)->count() }}</td>
					</tr>
				</tbody>
			</table>
		</div> -->

		<div class="table-responsive">
			<table id="grid_table" class="table table-bordered table-striped table-hover table-condensed tablesorter">
				<thead>
					<tr>
						<th>&nbsp</th>
						<th>#</th>
						<th>Event</th>
						<th>Visitor Name</th>
						<th>Barcode</th>
						<th>Company</th>
						<th>Email</th>
						<th>Mobile</th>
						<th>Age</th>
						<th>Gender</th>
						<th>Civil Status</th>
						<th>Region</th>
						<th>Classification</th>
					</tr>
				</thead>
				<tbody>
					@foreach($visitors as $visitor)
					<?php 
					$ctr++;
					?>
					<tr>
						<td class="nowrap text-left">
							<a class="btn btn-success btn-xs" href="{{ url('/visitor/edit/'.$visitor->vis_id) }}" title="Edit" role="button"><span class="fa fa-pencil"></span></a>
							<a class="btn btn-danger btn-xs" href="{{ url('/visitor/delete/'.$visitor->vis_id) }}" title="Delete" role="button"><span class="fa fa-times"></span></a>
						</td>
						<td>{{ $ctr }}</td>
						<td>{{ $visitor->event_title }}</td>
						<td>{{ $visitor->vis_lname }}, {{ strtoupper($visitor->vis_fname) }} {{ $visitor->vis_mname }}</td>
						<td>{{ $visitor->vis_code }}</td>
						<td>{{ $visitor->vis_company }}</td>
						<td>{{ $visitor->vis_email }}</td>
						<td>{{ $visitor->vis_gsm }}</td>
						<td>{{ $visitor->vis_age }}</td>
						<td>{{ $visitor->gender_name }}</td>
						<td>{{ $visitor->civil_name }}</td>
						<td>{{ $visitor->region_name }}</td>
						<td>{{ $visitor->class_name }}</td>
					</tr>
					@endforeach
				</tbody>
			</table>
		</div>
	</div>

	<script type="text/javascript">
		var _tsOptions = {
			headers:{
				0: { sorter: false },
				}
		};
	</script>
@stop