@extends('layouts.print')
	@section('content')
	<?php
	$ctr = 0;
	?>
	<h3>Evaluations</h3>
	<table class="table table-striped table-hover table-condensed table-bordered">
		<thead>
			<tr>
				<th>#</th>
				<th>Is this your first time to attend this event?</th>
				<th>How did you learn about this event?</th>
				<th>What is your overall rating of the event?</th>
				<th>Visitor Name</th>
				<th>Barcode</th>
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
			@foreach($rows as $row)
			<?php 

				$ctr++;
				$from = '';

				if (strlen($row->eval_ref_1_label) > 0){
					if (strlen($from) > 0){
						$from .= ' ';
					}
					$from .= $row->eval_ref_1_label;
				}

				if (strlen($row->eval_ref_2_label) > 0){
					if (strlen($from) > 0){
						$from .= ' ';
					}
					$from .= $row->eval_ref_2_label;
				}

				if (strlen($row->eval_ref_3_label) > 0){
					if (strlen($from) > 0){
						$from .= ' ';
					}
					$from .= $row->eval_ref_3_label;
				}

				if (strlen($row->eval_ref_4_label) > 0){
					if (strlen($from) > 0){
						$from .= ' ';
					}
					$from .= $row->eval_ref_4_label;
				}

				if (strlen($row->eval_ref_5_label) > 0){
					if (strlen($from) > 0){
						$from .= ' ';
					}
					$from .= $row->eval_ref_5_label;
				}

				if (strlen($row->eval_ref_6_label) > 0){
					if (strlen($from) > 0){
						$from .= ' ';
					}
					$from .= $row->eval_ref_6_label;
				}

				if (strlen($row->eval_ref_7_label) > 0){
					if (strlen($from) > 0){
						$from .= ' ';
					}
					$from .= $row->eval_ref_7_label;
				}

				if (strlen($row->eval_ref_8_label) > 0){
					if (strlen($from) > 0){
						$from .= ' ';
					}
					$from .= $row->eval_ref_8_label;
				}

			 ?>
			<tr>
				<td>{{ $ctr }}</td>
				<td>{{ $row->eval_eval_firsttime_label }}</td>
				<td>{{ $from }}</td>
				<td>{{ $row->eval_rating_overall_name }}</td>
				<td>{{ $row->vis_lname }}, {{ $row->vis_fname }} {{ $row->vis_mname }}</td>
				<td>{{ $row->vis_code }}</td>
				<td>{{ $row->vis_email }}</td>
				<td>{{ $row->vis_gsm }}</td>
				<td>{{ $row->vis_age }}</td>
				<td>{{ $row->gender_name }}</td>
				<td>{{ $row->civil_name }}</td>
				<td>{{ $row->region_name }}</td>
				<td>{{ $row->class_name }}</td>
			</tr>
			@endforeach
		</tbody>
	</table>
	@stop