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
	<link rel="stylesheet" href="css/home.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500&display=swap" rel="stylesheet">
	<script src="https://cdn.ckeditor.com/4.15.1/standard/ckeditor.js"></script>
</head>
<body>
	<header style="margin-top: 0;margin-bottom: 15px;">
		@if(Auth::check())
		<a href="http://127.0.0.1:8000/home1" class="logo"><img style="width: 87px;height: 60px;margin-left: 60px;margin-top: 13px;" src="http://soccerclub.axiomthemes.com/wp-content/uploads/2016/04/logo.png"></a>
		<div class="menu-toggle"></div>
		<nav>
			<ul>
				<li style="padding-right: 5px;">
					<a href="http://127.0.0.1:8000/home1" class="active" style="text-decoration: none;">Trang Chủ</a>
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
			            <a href="http://127.0.0.1:8000/lich">
			              <div class="icon"><span class="fas fa-home"></span></div>
			              Lịch Đấu
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
	<div class="col-md-12 slider">
		<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active slider-one">
					<div class="container">
						<div class="slider-1">
							<div class="slider-1-text">
								<div class=" animate__animated animate__flash"></div>
								<div class=" animate__animated animate__flash"></div>
								<div class="content-1 animate__animated animate__flipInX"></div>
								<h6 class="animate__animated animate__flipInX">VKU Chamption</h6>
								<h1 class="animate__animated animate__flipInX animate__delay-1s">NƠI CÁC VỊ VUA THỂ HIỆN</h1>
								<p class="animate__animated animate__flipInX animate__delay-1s">Những trận cầu kinh điển được xảy ra</p>
								<button class="btn-3 animate__animated animate__flipInX animate__delay-2s">READ MORE</button>
								<button class="btn-4 animate__animated animate__flipInX animate__delay-2s">READ MORE</button>
							</div>
							<div class="img-box">
								<img src="img/cr7777.png" class="pic-one animate__animated animate__backInUp animate__delay-2s">
							</div>
						</div>
					</div> 
				</div>
				<div class="carousel-item">
					<div class="container">
						<div class="slider-2">
							<div class="slider-2-text">
								<div class="animate__animated animate__flash"></div>
								<div class="animate__animated animate__flash"></div>
								<div class="content-1 animate__animated animate__flipInX"></div>
								<h6 class="animate__animated animate__flipInX">ĐẶT SÂN NGAY</h6>
								<p class="animate__animated animate__flipInX animate__delay-1s">CHẤT LƯỢNG SÂN TỐT NHẤT</p>
								<button class="btn-3 animate__animated animate__flipInX animate__delay-2s">ĐẶT SÂN</button>
								<button class="btn-4 animate__animated animate__flipInX animate__delay-2s">LIÊN HỆ VỚI CHUNG TÔI</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<div class="trandau-tieptheo">
		<div class="trandau-tieptheo-1">
			<div class="daucham5" style="background-image: none;"></div>
			<div class="tradau-tt-img">
				<img src="img/real.png">
				<span>19IT3</span>
			</div>
		</div>
		<div class="live">
			<span>07:06</span>
		</div>
		<div class="trandau-tieptheo-2">
			<div class="daucham6" style="background-image: none;"></div>
			<div class="tradau-tt-img-1">
				<span>19IT4</span>
				<img src="img/barca.png">
			</div>
		</div>
	</div>
	<div class="dichvu">
		<h6>KHÁM PHÁ TÍNH NĂNG</h6>
		<h1>XU HƯỚNG NỔI BẬT</h1>
		<div class="dichvu-1">
			<div class="dv-1">
				<img src="img/sanbong1.jpg" alt="Avatar" class="image">
				<div class="overlay">
					<div class="text-1">
						<h5>LEAGUE</h5>
						<h3>Sân Bóng</h3>
						<a href="#">Đọc Thêm</a>
					</div>
					<div class="text">01</div>
				</div>
			</div>
			<div class="dv-1">
				<img src="img/sanbong.jpg" alt="Avatar" class="image">
				<div class="overlay">
					<div class="text-1">
						<h5>LEAGUE</h5>
						<h3>Đội Bóng</h3>
						<a href="#">Đọc Thêm</a>
					</div>
					<div class="text">02</div>
				</div>
			</div>
			<div class="dv-1">
				<img src="img/neymar.jpg" alt="Avatar" class="image">
				<div class="overlay">
					<div class="text-1">
						<h5>LEAGUE</h5>
						<h3>Sân Bóng</h3>
						<a href="#">Đọc Thêm</a>
					</div>
					<div class="text">03</div>
				</div>
			</div>
			<div class="dv-1">
				<img src="img/cup.jpg" alt="Avatar" class="image">
				<div class="overlay">
					<div class="text-1">
						<h5>LEAGUE</h5>
						<h3>VKU CHAMPTIONSHIP</h3>
						<a href="#">Đọc Thêm</a>
					</div>
					<div class="text">04</div>
				</div>
			</div>
		</div>
	</div>
	<div class="tintuc">
		<div class="tintuc-text">
			Tin Tức
		</div>
		<div  style="padding-top: 50px;">
			<div id="home" class="container tab-pane active"><br>
				<div style="display: grid;grid-template-columns: 300px 300px">
					<div>
						@foreach($tintucnoibat as $tt)
						<div class="card mb-8" style="width: 800px;margin-left: 70px; margin-bottom: 100px;">
							<div class="row g-0" style="height: 250px;display: block;">
								<div class="col-md-4">
									<img width="250px" height="250px" src="{{url('upload/tintuc/'.$tt->Hinh)}}" alt="..."`123r5f4tgb v2>
								</div>
								<div class="col-md-8">
									<div class="card-body">
										<div>
											<h5 class="card-title">{{$tt->TieuDe}}</h5>
											<a href="http://127.0.0.1:8000/trangchu/tintuc/bao/{{$tt->id_tintuc}}/{{$tt->TieuDe}}.html" class="btn btn-danger">ĐỌC</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						@endforeach
					</div>
					<div>
						@foreach($tintuc1 as $tt1)
						<div class="card mb-8" style="width: 500px;margin-left: 140px;">
							<div class="row g-0" style="height: 250px;display: block;">
								<div class="col-md-4">
									<img width="700px" height="600px" src="{{url('upload/tintuc/'.$tt1->Hinh)}}" alt="...">
								</div>
								<div class="col-md-8">
									<div class="card-body">
										<div>
											<h5 class="card-title">{{$tt1->TieuDe}}</h5>
											<a href="http://127.0.0.1:8000/trangchu/tintuc/bao/{{$tt1->id_tintuc}}/{{$tt1->TieuDe}}.html" class="btn btn-danger">ĐỌC</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						@endforeach
					</div>
				</div>
			</div>
			<div class="thongso col-md-12">
				<div class="thongso-1">
					<img src="img/ico_awards.png">
					<div class="thongso-1-text">
						<span id="thongso-2"></span>
						<h4>Số Cup</h4>
					</div>
				</div>
				<div class="thongso-1" style="padding-left: 240px;">
					<img src="img/ico_awards.png">
					<div class="thongso-1-text">
						<span id="thongso-3"></span>
						<h4>Vận Động Viên</h4>
					</div>
				</div>
				<div class="thongso-1">
					<img src="img/ico_awards.png">
					<div class="thongso-1-text">
						<span id="thongso-4"></span>
						<h4>Sân</h4>
					</div>
				</div>
			</div>
			<!-------------------------------thongtinsandau---------------------------------->
			<div class="tt-sd">
				<div class="daucham7"></div>
				<div class="tt-sd-1">
					<img src="img/8_1.jpg">
					<div id="accordion">
						<div class="card">
							<div class="card-header" id="headingOne">
								<h5 class="mb-0">
									<button class="btn btn-link " data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
										THỜI GIAN
									</button>
								</h5>
							</div>
							<div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
								<div class="card-body">
									Sân bóng luôn luôn hoạt động 24/24h phục vụ người chơi tốt nhất.
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-header" id="headingTwo">
								<h5 class="mb-0">
									<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
										CHẤT LƯỢNG SÂN
									</button>
								</h5>
							</div>
							<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
								<div class="card-body">
									Mặt sân cỏ tố nhất giúp cho người đá có những trận đấu thăng hoa nhất
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-header" id="headingThree">
								<h5 class="mb-0">
									<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
									  THỂ LOẠI SÂN BÓNG
									</button>
								</h5>
							</div>
							<div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
								<div class="card-body">
									Mặt sân cỏ tố nhất giúp cho người đá có những trận đấu thăng hoa nhất
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-header" id="headingFour">
								<h5 class="mb-0">
									<button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
										CHẤT LƯỢNG SÂN BÓNG
									</button>
								</h5>
							</div>
							<div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
								<div class="card-body">
									Mặt sân cỏ tố nhất giúp cho người đá có những trận đấu thăng hoa nhất
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-------------------------------end----------------------------------->
			<!-------------------------video---------------------->
			<div class="videos">
				<div class="videos-img">
					<img src="img/ed86c03e80af6093344be663cf6c5ec5afd159d0.jpg" alt="">
				</div>
				<div class="star">
					<button onclick="toggle1();"><i class="fas fa-play"></i></button>
				</div>
				<div class="trailer">
					<iframe width="800" height="400" controls="true" src="https://www.youtube.com/embed/rmjdsWVU_vU" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
					<i class="far fa-times-circle" onclick="toggle1()";></i>
				</div>
			</div>
			<div class="tintuc">
				<div class="tintuc-text">
					MEDIA
				</div>
				<ul class="nav">
					<li class="nav-item">
						<a class="active" data-toggle="tab" href="#home">ALl</a>
					</li>
					<li class="nav-item">
						<a class="" data-toggle="tab" href="#menu1">Interviews</a>
					</li>
					<li class="nav-item">
						<a class="" data-toggle="tab" href="#menu2">Champions</a>
					</li>
				</ul>
				<div class="tab-content" style="padding-top: 50px;">
					<div id="home" class="container tab-pane active"><br>
						<div style="display: flex;">
							<div>
								<div style="display: flex;">
									<img src="img/ckc1.jpg" style="width: 350px;height: 350px;padding-right: 20px;padding-bottom: 20px;">
									<img src="img/cr7-0509.jpg" style="width: 350px;height: 350px;padding-bottom: 20px;">
								</div>
								<div>
									<img src="img/bayner.jpeg" style="width: 700px;height: 540px;padding-bottom: 30px;">
								</div>
							</div>
							<div>
								<img src="img/hihi.jpg" style="width: 500px;padding-left: 20px;">
							</div>
						</div>
					</div>
					<div id="menu1" class="container tab-pane fade"><br>
						<div style="display: flex;">
							<div>
								<div style="display: flex;">
									<img src="img/vn.jpg" style="width: 350px;height: 350px;padding-right: 20px;padding-bottom: 20px;">
									<img src="img/khat-khao5.jpg" style="width: 350px;height: 350px;padding-bottom: 20px;">
								</div>
								<div>
									<img src="img/23-22731e4.jpg" style="width: 700px;height: 540px;padding-bottom: 30px;">
								</div>
							</div>
							<div>
								<img src="img/images (8).jpg" style="width: 500px;padding-left: 20px;height: 850px;">
							</div>
						</div>	
					</div>
					<div id="menu2" class="container tab-pane fade"><br>
						<div style="display: flex;">
							<div>
								<div style="display: flex;">
									<img src="img/unnamed.jpg" style="width: 350px;height: 350px;padding-right: 20px;padding-bottom: 20px;">
									<img src="img/2_1_1.jpg" style="width: 350px;height: 350px;padding-bottom: 20px;">
								</div>
								<div>
									<img src="img/kkkkk.jpg" style="width: 700px;height: 540px;padding-bottom: 30px;">
								</div>
							</div>
							<div>
								<img src="img/a876e1a43d520c03c698d98bf1817b69.jpg" style="width: 500px;padding-left: 20px;">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="danh-gia">
				<div class="cont"></div>
				<div class="img-tuvan">
					<img src="img/nm.png">
				</div>
				<div class="slideshow-container">
					<div class="mySlides">
						<q>Chất Lượng Sân Rất Tốt</q>
						<p class="author">- John Keats</p>
					</div>

					<div class="mySlides">
						<q>Dịch Vụ Rất Tốt</q>
						<p class="author">- Ernest Hemingway</p>
					</div>

					<div class="mySlides">
						<q>Trải Nghiệm Rất Ổn</q>
						<p class="author">- Thomas A. Edison</p>
					</div>
				</div>
				<div class="dot-container">
					<span class="dot" onclick="currentSlide(1)">01</span> <br>
					<span class="dot" onclick="currentSlide(2)">02</span> <br>
					<span class="dot" onclick="currentSlide(3)">03</span> 
				</div>
			</div>
			<!-------------------------end-video---------------------->
			<div class="cup">
				<div class="cup-1"></div>
				<div class="daucham-8"></div>
				<div class="cup-text">
					<h5>CÁC GIẢI ĐẤU</h5>
					<h1>TỔ CHỨC HÀNG NĂM</h1>
				</div>
				<div class="cup-card">
					<div class="cup-card-1">
						<h5>FINAL FOUR</h5>
						<h3>CHAMPIONSHIP 2019</h3>
						<h4>01</h4>
						<img src="img/cup1.png">
					</div>
					<div class="cup-card-1">
						<h5>FINAL FOUR</h5>
						<h3>CHAMPIONSHIP 2020</h3>
						<h4>02</h4>
						<img src="img/cup1.png">
					</div>
					<div class="cup-card-1">
						<h5>FINAL FOUR</h5>
						<h3>CHAMPIONSHIP 2021</h3>
						<h4>03</h4>
						<img src="img/cup1.png">
					</div>
					<div class="cup-card-1">
						<h5>FINAL FOUR</h5>
						<h3>CHAMPIONSHIP 2022</h3>
						<h4>04</h4>
						<img src="img/cup1.png">
					</div>
				</div>
			</div>
			<!------------------end------------------------------------------------->
			<!----------------------------logo------------------------------------>
			<div class="logo-ts">
				<img src="img/client-1.png">
				<img src="img/client-2.png">
				<img src="img/client-3.png">
				<img src="img/client-4.png">
				<img src="img/client-5.png">
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

				$(document).ready(function(){
					$('.menu-toggle').click(function(){
						$('.menu-toggle').toggleClass('active');
						$('nav').toggleClass('active');
					})
				});
				function toggle1()
				{
					var trailer = document.querySelector(".trailer");
					var video = document.querySelector("iframe");
					trailer.classList.toggle("active");
					video.pause();
					video.currentTime =0;
				}
				function animateNumber(finalNumber, duration = 5000, startNumber = 0, callback) {
					let currentNumber = startNumber
					const interval = window.setInterval(updateNumber, 17)
					function updateNumber() {
						if (currentNumber >= finalNumber) {
							clearInterval(interval)
						} else {
							let inc = Math.ceil(finalNumber / (duration / 17))
							if (currentNumber + inc > finalNumber) {
								currentNumber = finalNumber
								clearInterval(interval)
							} else {
								currentNumber += inc
							}
							callback(currentNumber)
						}
					}
				}

				document.addEventListener('DOMContentLoaded', function () {
					animateNumber(200, 3000, 0, function (number) {
						const formattedNumber = number.toLocaleString()
						document.getElementById('thongso-2').innerText = formattedNumber
					})

					animateNumber(98, 3000, 0, function (number) {
						const formattedNumber = number.toLocaleString()
						document.getElementById('thongso-3').innerText = formattedNumber
					})

					animateNumber(700, 3000, 0, function (number) {
						const formattedNumber = number.toLocaleString()
						document.getElementById('thongso-4').innerText = formattedNumber
					})
					animateNumber(500, 3000, 0, function (number) {
						const formattedNumber = number.toLocaleString()
						document.getElementById('thongso-5').innerText = formattedNumber
					})
				})

				var slideIndex = 1;
				showSlides(slideIndex);

				function plusSlides(n) {
					showSlides(slideIndex += n);
				}

				function currentSlide(n) {
					showSlides(slideIndex = n);
				}

				function showSlides(n) {
					var i;
					var slides = document.getElementsByClassName("mySlides");
					var dots = document.getElementsByClassName("dot");
					if (n > slides.length) {slideIndex = 1}    
						if (n < 1) {slideIndex = slides.length}
							for (i = 0; i < slides.length; i++) {
								slides[i].style.display = "none";  
							}
							for (i = 0; i < dots.length; i++) {
								dots[i].className = dots[i].className.replace(" active", "");
							}
							slides[slideIndex-1].style.display = "block";  
							dots[slideIndex-1].className += " active";
						}


						function openNav() {
							document.getElementById("mySidenav").style.width = "500px";
						}

						function closeNav() {
							document.getElementById("mySidenav").style.width = "0";
						}
						mybutton = document.getElementById("myBtn");

						window.onscroll = function() {scrollFunction()};

						function scrollFunction() {
							if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
								mybutton.style.display = "block";
							} else {
								mybutton.style.display = "none";
							}
						}

						function topFunction() {
  document.body.scrollTop = 0; // For Safari
  document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
}

const drop_btn = document.querySelector('.drops-btn');
const menu_wrapper = document.querySelector('.wrapper');
drop_btn.onclick = (()=>{
	menu_wrapper.classList.toggle("show");
});
</script>
<script type="text/javascript" src="js/hihi.js"></script>
</body>
</html>