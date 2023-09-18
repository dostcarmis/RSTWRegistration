			<?php

				$batch = str_pad($row->vis_batch.'',6,'0', STR_PAD_LEFT);
				$serial = str_pad($row->vis_serial.'',6,'0', STR_PAD_LEFT);

			?>
			<tr>
				<td class="nowrap text-left">
					<a class="btn btn-primary btn-xs" href="{{ URL::to('/visitors/'.$row->vis_id.'/edit') }}" title="Edit" role="button"><span class="fa fa-pencil"></span></a>
					<a class="btn btn-warning btn-xs" href="javascript:void(0);" onclick="confirmDialog('Delete this item?', 'Confirm Delete', '{{ URL::to('/visitors/'.$row->vis_id.'/delete') }}');" title="Delete" role="button"><span class="fa fa-minus"></span></a>
				</td>
				<td class="text-center">{{ $i }}</td>
				<td>{{ $row->vis_code }}</td>
				<td>{{ $row->vis_name }}</td>
				<td>{{ $row->gender_name }}</td>
				<td>{{ $row->vis_company }}</td>
				<td>{{ $row->vis_gsm }}</td>
				<td>{{ $row->vis_email }}</td>
				<td>{{ $row->region_name }}</td>
				<td>{{ $row->class_name }}</td>
				<td>{{ $row->event_title }}</td>
				<td>{{ $row->created_at }}</td>
				<td>{{ $row->vis_day }}</td>
			</tr>
