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
				<a href="http://127.0.0.1:8000/admin/user/danhsach">Back</a>
				<form action="http://127.0.0.1:8000/admin/user/sua1/{{$user->id}}" method="POST">
					<input type="hidden" name="_token" value="{{csrf_token()}}"/>
					<div class="form-group">
						<label>Name</label>
						<input type="text" name="name" class="form-control" placeholder="Điền tên thể loại" value="{{$user->name}}" /> 
					</div>
					<div class="form-group">
						<label>Email</label>
						<input type="text" name="email" class="form-control" placeholder="Điền tên thể loại" value="{{$user->email}}" /> 
					</div>
					<div class="form-group">
						<label>Phone</label>
						<input type="text" name="phone" class="form-control" placeholder="Điền tên thể loại" value="{{$user->phone}}" /> 
					</div>
					<div class="form-group">
						<label>Địa Chỉ</label>
						<input type="text" name="diachi" class="form-control" placeholder="Điền tên thể loại" value="{{$user->address}}" /> 
					</div>
					<div class="form-group">
						<label>Birthday</label>
						<input type="text" name="ngay" class="form-control" placeholder="Điền tên thể loại" value="{{$user->birthday}}" /> 
					</div>
					<button type="submit" class="btn btn-success">Update</button>
				</form>
			</div>
		</div>
	</div>
@endsection