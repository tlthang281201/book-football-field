<!DOCTYPE html>
<html>
<head>
	<title>TẠO ĐỘI BÓNG</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
	<link rel="stylesheet" href="{{asset('css/doibong.css')}}">
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500&display=swap" rel="stylesheet">
	<link rel="shortcut icon" type="image/png" href="img/logo2.png">
</head>
<body>
	<header style="margin-top: 0;margin-bottom: 25px;">
		@if(Auth::check())
		<a href="http://127.0.0.1:8000/home1" class="logo"><img style="width: 87px;height: 60px;margin-left: 60px;margin-top: 13px;" src="http://soccerclub.axiomthemes.com/wp-content/uploads/2016/04/logo.png"></a>
		<div class="menu-toggle"></div>
		<nav>
			<ul>
				<li style="padding-right: 5px;">
					<a href="http://127.0.0.1:8000/home1" style="text-decoration: none;">Trang Chủ</a>
				</li>
				<li style="padding-right: 5px;">
					<a href="http://127.0.0.1:8000/tim-san" style="text-decoration: none;">Đặt Sân</a>
				</li>
				<li style="padding-right: 5px;">
					<a href="http://127.0.0.1:8000/trangchu/tintuc/tintuc1" style="text-decoration: none;">Tin Tức</a>
				</li>
				<li style="padding-right: 5px;">
					<a href="http://127.0.0.1:8000/doibong" class="active" style="text-decoration: none;">Đội Bóng</a>
				</li>
				<li style="padding-right: 5px;">
					<a href="http://127.0.0.1:8000/lienhe" style="text-decoration: none;">Liên Hệ</a>
				</li>
			</ul>
		</nav>
		<div class="drop-btn" style="cursor: pointer;">
			<div class="drops-btn" style="z-index: 1000;margin-right: 40px;width: 200px;">
				{{Auth::user()->name}}
			</div>
			<div class="wrapper">
				<ul class="menu-bar">
					<li>
			            <a href="http://127.0.0.1:8000/profile">
			              <div class="icon"><span class="fas fa-home"></span></div>
			              Profile
			            </a>
			          </li>
			          <li>
			            <a href="http://127.0.0.1:8000/trangchu/doibong1/profile">
			              <div class="icon"><span class="fas fa-home"></span></div>
			              Club
			            </a>
			          </li>
			          <li>
			            <a href="{{ route('logout') }}" onclick="event.preventDefault();document.getElementById('logout-form').submit();">
			              <div class="icon"><span class="fas fa-home"></span></div>
			              <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
		                        @csrf
		                    </form>
			              Đăng Xuất
			            </a>
			          </li>
				</ul>
			</div>
		</div>
		@else
		<a href="#" class="logo"><img style="width: 87px;height: 60px;margin-left: 60px;margin-top: 13px;" src="http://soccerclub.axiomthemes.com/wp-content/uploads/2016/04/logo.png"></a>
		<div class="menu-toggle"></div>
		<nav>
			<ul>
				<li style="padding-right: 5px;">
					<a href="#" class="active" style="text-decoration: none;">Trang Chủ</a>
				</li>
				<li style="padding-right: 5px;">
					<a href="http://127.0.0.1:8000/tim-san" style="text-decoration: none;">Đặt Sân</a>
				</li>
				<li style="padding-right: 5px;">
					<a href="http://127.0.0.1:8000/trangchu/tintuc/tintuc1" style="text-decoration: none;">Tin Tức</a>
				</li>
				<li style="padding-right: 5px;">
					<a href="http://127.0.0.1:8000/doibong" style="text-decoration: none;">Đội Bóng</a>
				</li>
				<li style="padding-right: 5px;">
					<a href="http://127.0.0.1:8000/lienhe" style="text-decoration: none;">Liên Hệ</a>
				</li>
			</ul>
		</nav>
		<div class="drop-btn" style="cursor: pointer;">
			<div class="drops-btn" style="z-index: 1000;">
				<a href="http://127.0.0.1:8000/dang-nhap" style="font-size: 12px;text-decoration: none;font-size: 17px;color: white;">Đăng nhập</a>
			</div>
		</div>
		@endif
		<div class="side" style="z-index: 3000;">
			<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</span>
			<div id="mySidenav" class="sidenav" style="z-index: 9999;">
				<a href="javascript:void(0)" class="closebtn" onclick="closeNav()" style="background: #fe5900;padding-right: 30px;">&times;</a>
				<div class="side-text">
					<h3>THÔNG TIN NHANH</h3>
					<p>Chất lượng đặt lên hàng đầu <br> nơi giao lưu các đội bóng khác</p>
					<h5><i class="far fa-clock"></i>Thứ Hai - Thứ Sáu: 7 giờ  sáng đến 11h tối <br> Thứ 7 và CN  Full Time</h5>
					<h5><i class="fas fa-map-marker-alt"></i>Đà Nẵng</h5>
					<h5><i class="fas fa-phone-alt"></i>+0829485934234</h5>
					<h5><i class="fas fa-at"></i>nvthang.19it3@gmail.com</h5>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</header>
	<div style="height: 8px;margin-top: -20px;" class="progress rounded-0 sticky-top">
		<div role="progressbar" style="width: 66%" aria-valuenow="66" aria-valuemin="0" aria-valuemax="100" class="progress-bar"></div>
	</div>
	<div class="container">
		<div style="margin-top: 50px;margin-bottom: 100px;">
			<h1>B2: Thông Tin Chi Tiết</h1>
			<form method="POST" action="http://127.0.0.1:8000/trangchu/doibong1/b2">
				<input type="hidden" name="_token" value="{{csrf_token()}}"/>
				<?php
				 $id = Auth::user()->id;
				?>
				<select name="id">
					<option value="{{$id}}"></option>
				</select>
				<div class="form-group">
					<label>HỌ và TÊN</label>
					<input type="text" class="form-control" name="ten" placeholder="Nhập HỌ và TÊN">
				</div>
				<div class="form-group">
					<label>SĐT</label>
					<input type="text" name="sdt" placeholder="Nhập SĐT" class="form-control">
				</div>
				<div class="form-group">
					<label>Chức vụ</label>
					<select id="chucvu" name="chucvu">
						<option value="1">Đội Trưởng</option>
						<option value="2">Đội Phó</option>
						<option value="0">Thành Viên</option>
					</select>
				</div>
				<div class="form-group">
					<label>Chọn tên đội</label>
					<select id="doibong1" name="doibong1">
						@foreach($doibong1 as $db1)
						<option value="{{$db1->id}}">{{$db1->TenDoiBong}}</option>
						@endforeach
					</select>
				</div>
				<button type="submit" class="btn btn-success">TIẾP THEO</button>
			</form>
		</div>
	</div>
	<footer>
		<div class="container">
			<div class="sec aboutus">
				<h2>About Us</h2>
				<p>Cung cấp cho khách hàng những trận đấu tuyệt vời nhất <br> với chất lượng tốt nhất với các dịch vụ tốt nhất <br> Nơi đặt sự trải nghiệm lên hàng đầu </p>
				<ul class="sci">
					<li>
						<a href="#"><i class="fab fa-facebook"></i></a>
					</li>
					<li>
						<a href="#"><i class="fab fa-instagram"></i></a>
					</li>
					<li>
						<a href="#"><i class="fab fa-twitter"></i></i></a>
					</li>
					<li>
						<a href="#"><i class="fab fa-twitter"></i></i></a>
					</li>	
				</ul>
			</div>
			<div class="sec quickLinks">
				<h2>Quick Links</h2>
				<ul>
					<li><a href="#">Trang Chủ</a></li>
					<li><a href="#">Đặt Sân</a></li>
					<li><a href="#">Liên Hệ</a></li>
					<li><a href="#">Trang Chủ</a></li>
					<li><a href="#">Trang Chủ</a></li>
				</ul>
			</div>
			<div class="sec contact">
				<h2>Contact Info</h2>
				<ul class="info">
					<li>
						<span><i class="far fa-envelope"></i></span>
						<span>678 ldsad sadas ,Đà nẵng <br>Việt Nam</span>
					</li>
					<li>
						<span><i class="far fa-envelope"></i></span>
						<p><a href="#">3218321821738</a><br><a href="#">432432343243</a></p>
					</li>
					<li>
						<span><i class="far fa-envelope"></i></span>
						<span>678 ldsad sadas <br> Đà nẵng <br>Việt Nam</span>
					</li>
				</ul>
			</div>
		</div>
	</footer>
	<div class="copyrightText">
		<p>Copyright @</p>
	</div>
	<script type="text/javascript" src="{{asset('js/home.js')}}"></script>
	<script type="text/javascript">
    let drop_btn = document.querySelector('.drops-btn');
    let menu_wrapper = document.querySelector('.wrapper');
    drop_btn.onclick = (()=>{
      menu_wrapper.classList.toggle("show");
    });
  </script>
</body>
</html>