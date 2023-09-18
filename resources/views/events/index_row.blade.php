			<tr>
				<td class="nowrap text-left">
					<a class="btn btn-primary btn-xs" href="{{ URL::to('/events/'.$row->event_id.'/edit') }}" title="Edit" role="button"><span class="fa fa-pencil"></span></a>
					<a class="btn btn-warning btn-xs" href="javascript:void(0);" onclick="confirmDialog('Delete this item?', 'Confirm Delete', '{{ URL::to('/events/'.$row->event_id.'/delete') }}');" title="Delete" role="button"><span class="fa fa-minus"></span></a>
				</td>
				<td class="text-center">{{ $i }}</td>
				<td class="text-center">
					@if ($row->event_active == 1)
					<span class="fa fa-thumbs-up text-success">&nbsp;</span>
					@endif
				</td>
				<td>{{ $row->event_title }}</td>

				<td>{!! nl2br($row->event_desc.'') !!}</td>
				<td>{{ $row->event_from }}</td>
				<td>{{ $row->event_to }}</td>
				<td>{{ $row->vis_count }}</td>
			</tr>
