@extends('admin.layout.index')

@section('content')
	<div id="tintuc" style="margin-left: 100px;margin-top: 100px;">
		<div class="row">
			<div class="col-lg-12">
				<h1>Sửa</h1>
			</div>
			<div class="col-lg-7">
				@if(count($errors) > 0)
				<div class="alert alert-success">
					@foreach($errors->all() as $err)
					{{$err}}<br>
					@endforeach
				</div>
				@endif
				@if(session('thongbao'))
				<div class="alert alert-success">
					{{session('thongbao')}}
				</div>
				@endif
				<a href="http://127.0.0.1:8000/admin/doibong/tendb/trandau1">Back</a>
				<form action="http://127.0.0.1:8000/admin/doibong/tendb/sua/{{$trandau->id}}" method="POST">
					<input type="hidden" name="_token" value="{{csrf_token()}}"/>
					<div class="form-group">
						<label>Time</label>
						<input type="text" name="time" class="form-control" placeholder="Điền tên thể loại" value="{{$trandau->time}}" /> 
					</div>
					<div class="form-group">
						<label>Ngày</label>
						<input type="text" name="ngay" class="form-control" placeholder="Điền tên thể loại" value="{{$trandau->ngay}}" /> 
					</div>
					<button type="submit" class="btn btn-success">Update</button>
				</form>
			</div>
		</div>
	</div>
@endsection