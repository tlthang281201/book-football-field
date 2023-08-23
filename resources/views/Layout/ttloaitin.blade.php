<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
	<link rel="stylesheet" href="{{asset('css/tintuc.css')}}">
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
	<base href="{{asset('')}}">
	<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500&display=swap" rel="stylesheet">
</head>
<body>
		<header style="margin-top: 0;margin-bottom: 15px;">
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
					<a href="http://127.0.0.1:8000/trangchu/tintuc/tintuc1" class="active"  style="text-decoration: none;">Tin Tức</a>
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
			<div class="drops-btn" style="z-index: 1000;width: 200px;">
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
					<a href="http://127.0.0.1:8000/home1" style="text-decoration: none;">Trang Chủ</a>
				</li>
				<li style="padding-right: 5px;">
					<a href="http://127.0.0.1:8000/tim-san" style="text-decoration: none;">Đặt Sân</a>
				</li>
				<li style="padding-right: 5px;">
					<a href="http://127.0.0.1:8000/trangchu/tintuc/tintuc1" class="active"  style="text-decoration: none;">Tin Tức</a>
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
<div class="container">
		<div class="tintuc-left">
			<h1 style="margin-bottom: 30px;font-size: 40px;">{{$loaitin->TenLoaiTin}}</h1>
			@foreach($tintuc as $tt)
			<div class="card mb-8" style="width: 800px;	margin-bottom: 30px;">
				<div class="row g-0" style="height: 250px;">
					<div class="col-md-4">
						<img width="250px" height="250px" src="{{url('upload/tintuc/'.$tt->Hinh)}}" alt="...">
					</div>
					<div class="col-md-8">
						<div class="card-body">
							<div>
								<h5 class="card-title">{{$tt->TieuDe}}</h5>
								<p class="card-text">{!! $tt->TomTat !!}</p>
								<a href="http://127.0.0.1:8000/trangchu/tintuc/bao/{{$tt->id_tintuc}}/{{$tt->TieuDe}}.html" class="btn btn-danger">ĐỌC</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			@endforeach
		</div>


		<div class="tintuc-right" >
			<div class="tintuc-right-search">
				<input type="text" name="" placeholder="Search"><label><i class="fas fa-search"></i></label>
			</div>
			<div class="tintuc-right-ngaythang" style="border-right: 1px solid;border-left: 1px solid;border-radius: 5px;border-left-color: gray;border-right-color: gray;">
				<h4 style="border-radius: 5px;">LOẠI TIN</h4>
				<ul>
					<li style="border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;border-color: gray;">
						<a href="http://127.0.0.1:8000/trangchu/tintuc/loaitin/{{$loaitin->id_LoaiTin}}/{{$loaitin->TenLoaiTin}}.html" style="color: black;">{{$loaitin->TenLoaiTin}}</a>
					</li>
				</ul>
			</div>
			<div class="tintuc-right-tag" style="border-right: 1px solid;border-left: 1px solid;border-radius: 5px;border-left-color: gray;border-right-color: gray;border-bottom: 1px solid;border-bottom-color: gray; padding-bottom: 10px;">
				<h4 style="border-radius: 5px;">TAG</h4>
				<button class="btn btn-outline-danger">Ball</button><button class="btn btn-outline-danger">Coach</button><button class="btn btn-outline-danger">leagua</button><button class="btn btn-outline-danger">Vku sport</button>
			</div>
		</div>
	</div>
</div>
<footer>
				<div class="container">
					<div class="sec aboutus">
						<h2>CHÚNG TÔI</h2>
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
							<li><a href="#">Đội Bóng</a></li>
							<li><a href="#">Tin Tức</a></li>
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
	<script type="text/javascript">
		const drop_btn = document.querySelector('.drops-btn');
		const menu_wrapper = document.querySelector('.wrapper');
		drop_btn.onclick = (()=>{
			menu_wrapper.classList.toggle("show");
		});
	</script>
	<script type="text/javascript" src="js/home.js"></script> 
</body>
</html>