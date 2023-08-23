@extends('admin.layout.index')

@section('content')
<div>
		<div id="tintuc" class="container" style="width: 1000px;">
			<br>
			<table class="table table-striped" style="width: 700px;">
				@if(Session::has('theloai_delete'))
				<div class="alert alert-success" role='alert'>
					{{Session::get('theloai_delete')}}
				</div>
				@endif
				<h1>Danh Sách Trận Đấu</h1>
				<thead>
					<tr>
						<th style="color: black;">ID</th>
						<th style="color: black;">Đội Bóng</th>
						<th style="color: black;">ĐỐI Thủ</th>
						<th style="color: black;">Time</th>
						<th style="color: black;">Ngày</th>
						<th style="color: black;">Tình Trạng</th>
						<th style="color: black;">ACtion</th>
					</tr>
				</thead>
				<tbody>
					@foreach($trandau as $key1)
					<tr>
						<td style="color: black;">{{$key1->id}}</td>
						@foreach($doibong as $db)
						@if($db->id == $key1->id_doibong1 )
						<td style="color: black;"><img width="100px" src="{{url('upload/logo/'.$db->Logo)}}"></td>
						@endif
						@endforeach
						@foreach($doibong as $db)
						@if($db->id == $key1->id_doibong2)
						<td style="color: black;"><img width="100px" src="{{url('upload/logo/'.$db->Logo)}}"></td>
						@endif
						@endforeach
						<td style="color: black;">{{$key1->time}}</td>
						<td style="color: black;">{{$key1->ngay}}</td>
						<td style="color: black;">
							@if($key1->confirm == 1)
							XÁC NHẬN
							@elseif ($key1->confim == 0)
							ĐỢi
							@else
							Hủy
							@endif
						</td>
						<td>
							<a href="http://127.0.0.1:8000/admin/doibong/tendb/xoa/{{$key1->id}}" class="btn btn-danger">Delete</a>
							<a href="http://127.0.0.1:8000/admin/doibong/tendb/sua/{{$key1->id}}" class="btn btn-info">Edit</a>
						</td>
					</tr>
					@endforeach
				</tbody>
			</table>
			
		</div>
	</div>
	<script type="text/javascript">
		$(function () {  
			$("#datepicker").datepicker({         
				autoclose: true,         
				todayHighlight: true 
			}).datepicker('update', new Date());
			$("#datepicker1").datepicker({         
				autoclose: true,         
				todayHighlight: true 
			}).datepicker('update', new Date());
		});
	</script>
	@endsection