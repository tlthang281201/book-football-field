@extends('admin.layout.index')

@section('content')
<div class="thongke">
	<div class="thongke" style="display: grid;grid-template-columns: 200px 200px 200px 200px;grid-column-gap: 50px;">
		<div style="display: block;justify-content: space-between;background: #80FF00;padding: 20px 20px 20px 20px;">
			<h6>Thu Nhập</h6>
			<h1>{{$sumTien}}</h1>
		</div>
		<div style="display: block;justify-content: space-between;background: #2EFEF7;padding: 20px 20px 20px 20px;">
			<h6>Đội Bóng</h6>
			<h1>{{$doibong}}</h1>
		</div>
		<div style="display: block;justify-content: space-between;background: #DF013A;padding: 20px 20px 20px 20px;">
			<h6>Thành Viên</h6>
			<h1>{{$thanhvien}}</h1>
		</div>
		<div style="display: block;justify-content: space-between;background: #FAAC58;padding: 20px 20px 20px 20px;">
			<h6>Tin Tức</h6>
			<h1>{{$tintuc}}</h1>
		</div>
	</div>
	<div class="chart" style="margin-top: -100px;">
		<h1>Biểu Đồ Doanh Thu</h1>
		<ul class="number">
			<li>
				<span>100%</span>
			</li>
			<li>
				<span>50%</span>
			</li>
			<li>
				<span>0%</span>
			</li>
		</ul>
		<ul class="bars"> 
			<li><div class="bar" data-percentage="{{$booking}}"></div><span>21-12-2020</span></li>
			<li><div class="bar" data-percentage="{{$booking1}}"></div><span>24-12-2020</span></li>
			<li><div class="bar" data-percentage="{{$booking2}}"></div><span>25-12-2020</span></li>
			<li><div class="bar" data-percentage="{{$booking3}}"></div><span>12-01-2021</span></li>
		</ul>
	</div>
</div>

@endsection