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
				<h1>User</h1>
				<thead>
					<tr>
						<th style="color: black;">ID</th>
						<th style="color: black;">Name</th>
						<th style="color: black;">Email</th>
						<th style="color: black;">Phone</th>
						<th style="color: black;">Address</th>
						<th style="color: black;">Bri</th>
						<th style="color: black;">ACtion</th>
					</tr>
				</thead>
				<tbody>
					@foreach($user as $key1)
					<tr>
						<td style="color: black;">{{$key1->id}}</td>
						<td style="color: black;">{{$key1->name}}</td>
						<td style="color: black;">{{$key1->email}}</td>
						<td style="color: black;">{{$key1->phone_number}}</td>
						<td style="color: black;" style="width: 200px;">{{$key1->address}}</td>
						<td style="color: black;">{{$key1->birthday}}</td>
						<td style="width: 200px;">
							<a href="http://127.0.0.1:8000/admin/user/xoa/{{$key1->id}}" class="btn btn-danger">Delete</a>
							<a href="http://127.0.0.1:8000/admin/user/sua1/{{$key1->id}}" class="btn btn-info">Edit</a>
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