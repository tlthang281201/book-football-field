<!DOCTYPE html>
<html>
<head>
	<title>Thông tin người dùng</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/profile.css">
	<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
	<link href="http://soccerclub.axiomthemes.com/wp-content/uploads/2016/04/logo.png" rel="shortcut icon" type="image/png">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="https://code.jquery.com/ui/1.12.0/themes/smoothness/jquery-ui.css">
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500&display=swap" rel="stylesheet">
</head>
<body>
	<header style="margin-top: 0;margin-bottom: 10px;">
    @if(Auth::check())
    <a href="http://127.0.0.1:8000/home1" class="logo"><img style="width: 87px;height: 60px;margin-left: 60px;margin-top: 13px;" src="http://soccerclub.axiomthemes.com/wp-content/uploads/2016/04/logo.png"></a>
    <div class="menu-toggle"></div>
    <nav>
      <ul> 
        <li style="padding-right: 5px;">
          <a href="http://127.0.0.1:8000/home1" style="margin: 20px 0;">Trang Chủ</a>
        </li>
        <li style="padding-right: 5px;">
          <a href="http://127.0.0.1:8000/tim-san" style="margin: 20px 0;">Đặt Sân</a>
        </li>
        <li style="padding-right: 5px;">
          <a href="http://127.0.0.1:8000/trangchu/tintuc/tintuc1" style="margin: 20px 0;">Tin Tức</a>
        </li>
        <li style="padding-right: 5px;">
          <a href="http://127.0.0.1:8000/doibong" style="margin: 20px 0;">Đội Bóng</a>
        </li>
        <li style="padding-right: 5px;">
          <a href="http://127.0.0.1:8000/lienhe" style="margin: 20px 0;">Liên Hệ</a>
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
          <a href="http://127.0.0.1:8000/home1">Trang Chủ</a>
        </li>
        <li style="padding-right: 5px;">
          <a href="http://127.0.0.1:8000/tim-san" class="active">Đặt Sân</a>
        </li >
        <li style="padding-right: 5px;">
          <a href="http://127.0.0.1:8000/trangchu/tintuc/tintuc1">Tin Tức</a>
        </li>
        <li style="padding-right: 5px;">
          <a href="http://127.0.0.1:8000/doibong">Đội Bóng</a>
        </li>
        <li style="padding-right: 5px;">
          <a href="http://127.0.0.1:8000/lienhe">Liên Hệ</a>
        </li>
      </ul>
    </nav>
    <div class="drop-btn" style="cursor: pointer;">
      <div class="drops-btn" style="z-index: 1000;">
        <a href="http://127.0.0.1:8000/dang-nhap" style="font-size: 12px;text-decoration: none;font-size: 15px;color: white;">Đăng nhập</a>
      </div>
    </div>
    @endif
    <div class="side" style="z-index: 3000;">
      <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</span>
      <div id="mySidenav" class="sidenav">
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

	<main>
		<div class="container-fluid pt-3 pb-3 border-bottom px-lg-5">
			<div class="row justify-content-md-center mt-3 minimum-heigh">
				<div class="col-md-4 col-lg-3 text-center pl-0 pr-0">
					<div class="dropdown user-sidebar sidebar-md text-center">
						<button class="btn btn-default dropdown-toggle" type="button" id="user_sidenav" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Thông tin tài khoản</button>
						<ul class="dropdown-menu" aria-labelledby="user_sidenave">
						      <li class="dropdown-header">
						          <div class="user-brief justify-content-center">
						            <a class="user-brief_avatar m-1" href="#">
						              <div class="sporta-avatar">
						                <img id="avatar" src="https://www.sporta.vn/assets/default_user_image-dc0209ffeabf7fa68fcbc7d512a6ceeb051ad3fb16706d26679cccdcf3384043.png">
						              </div>
						            </a>
						            <div class="d-flex flex-column align-self-center user-brief_right m-md-1">
						              <div class="user-brief-name text-muted">{{ Auth::user()->name }}</div>
						              <div class="text-muted text-sm d-none d-md-flex"><a class="text-decoration-none" href="profile"><i class="far fa-edit"></i> Sửa hồ sơ</a></div>
						            </div>
						          </div>
						      </li>
						      <div class="_border d-none d-md-block"></div>
						      <div class="row justify-content-center">
						        <div class="m-2 col-lg-7 col-7 menu-items">
						          <li class="mb-1 active"><i class="fas fa-user-circle"></i><a href="http://127.0.0.1:8000/profile">Thông tin tài khoản</a></li>
						          <li class="mb-1 </li>"><i class="far fa-futbol"></i><a href="http://127.0.0.1:8000/sport_profile">Hồ sơ thể thao</a></li>
						          <li class="mb-1 "><i class="fas fa-clock"></i><a href="http://127.0.0.1:8000/booking_request">Lịch đặt của tôi</a></li>
						          <li class="mb-1 "><i class="fas fa-unlock-alt"></i><a href="http://127.0.0.1:8000/change_password">Đổi mật khẩu</a></li>
						        </div>
						      </div>
						</ul>
					</div>
				</div>
				<div class="col-md-8 col-lg-9 pl-3 pr-3">
					<div class="user-page-content">
						<section class="border-light">
						  <div class="row justify-content-center m-2">
						    <h5 class="w-100 text-center d-none d-md-block">Thông tin tài khoản</h5>
						  </div>
						  <div class="row justify-content-center m-2">
						    <div class="col-md-3">
						      <header class="profile-picture" style="background: none;box-shadow: none;">
						        <form class="edit_user" id="edit_user_avatar" enctype="multipart/form-data" action="" accept-charset="UTF-8" method="post">
						        	@csrf
						  <div class="avatar">
						    <img id="avatar" style="width: 100%;" src="https://www.sporta.vn/assets/default_user_image-dc0209ffeabf7fa68fcbc7d512a6ceeb051ad3fb16706d26679cccdcf3384043.png">
						    <div class="btn-upload-avatar"><i class="fas fa-camera fa-1x"></i> Cập nhật</div>
						    <input onchange="this.form.submit()" type="file" name="user[avatar]" id="user_avatar">
						  </div>
						</form>
						      </header>
						      <p class="text-center">Ảnh đại diện</p>
						    </div>
						    <div class="col col-md-9">
						      <div class="d-flex justify-content-center">
						        <form class="w-75" action="user_update" accept-charset="UTF-8" method="post">
						        	@csrf
						          <div class="form-row">
						            <div class="form-group col-md-6">
						              <label for="user_email">Email</label>
						              <input class="form-control" placeholder="Email" type="email" value="{{ Auth::user()->email }}" name="email" id="user_email">
						            </div>
						            <div class="form-group col-md-6">
						              <label for="user_name">Họ Tên</label>
						              <input class="form-control" placeholder="Họ Tên" type="text" value="{{ Auth::user()->name }}" name="name" id="user_name">
						            </div>
						          </div>
						          <div class="form-group">
						            
						              <label for="user_phone_attributes_number">Số điện thoại</label>
						              <input class="form-control" placeholder="Số điện thoại" type="text" value="{{Auth::user()->phone_number}}" name="phone_number" id="user_phone_attributes_number">
						
						          </div>
						          <div class="form-group mb-0">
						            
						              <div class="form-group">
						                <label for="user_address_attributes_street">Địa chỉ</label>
						                <input required="required" class="form-control" type="text" value="{{Auth::user()->address}}" name="address" id="user_address_attributes_street">
						              </div>
						              <div class="form-row">
						                <div class="form-group col-md-6">
						                  <label class="active" for="city">Thành phố/Tỉnh</label>
						                  <select name="city" id="city" required="required" class="form-control"><option selected="selected" value="50">Tp Hồ Chí Minh</option>
											<option value="1">Tp Hà Nội</option>
											<option value="20">Tp Hải Phòng</option>
											<option value="32">Tp Đà Nẵng</option>
											<option value="59">Tp Cần Thơ</option>
											<option value="10">Tỉnh Yên Bái</option>
											<option value="17">Tỉnh Vĩnh Phúc</option>
											<option value="55">Tỉnh Vĩnh Long</option>
											<option value="5">Tỉnh Tuyên Quang</option>
											<option value="54">Tỉnh Trà Vinh</option>
											<option value="52">Tỉnh Tiền Giang</option>
											<option value="31">Tỉnh Thừa Thiên Huế</option>
											<option value="26">Tỉnh Thanh Hóa</option>
											<option value="12">Tỉnh Thái Nguyên</option>
											<option value="22">Tỉnh Thái Bình</option>
											<option value="46">Tỉnh Tây Ninh</option>
											<option value="9">Tỉnh Sơn La</option>
											<option value="61">Tỉnh Sóc Trăng</option>
											<option value="30">Tỉnh Quảng Trị</option>
											<option value="14">Tỉnh Quảng Ninh</option>
											<option value="34">Tỉnh Quảng Ngãi</option>
											<option value="33">Tỉnh Quảng Nam</option>
											<option value="29">Tỉnh Quảng Bình</option>
											<option value="36">Tỉnh Phú Yên</option>
											<option value="16">Tỉnh Phú Thọ</option>
											<option value="38">Tỉnh Ninh Thuận</option>
											<option value="25">Tỉnh Ninh Bình</option>
											<option value="27">Tỉnh Nghệ An</option>
											<option value="24">Tỉnh Nam Định</option>
											<option value="51">Tỉnh Long An</option>
											<option value="6">Tỉnh Lào Cai</option>
											<option value="13">Tỉnh Lạng Sơn</option>
											<option value="44">Tỉnh Lâm Đồng</option>
											<option value="8">Tỉnh Lai Châu</option>
											<option value="40">Tỉnh Kon Tum</option>
											<option value="58">Tỉnh Kiên Giang</option>
											<option value="37">Tỉnh Khánh Hòa</option>
											<option value="21">Tỉnh Hưng Yên</option>
											<option value="11">Tỉnh Hòa Bình</option>
											<option value="60">Tỉnh Hậu Giang</option>
											<option value="28">Tỉnh Hà Tĩnh</option>
											<option value="23">Tỉnh Hà Nam</option>
											<option value="19">Tỉnh Hải Dương</option>
											<option value="2">Tỉnh Hà Giang</option>
											<option value="41">Tỉnh Gia Lai</option>
											<option value="56">Tỉnh Đồng Tháp</option>
											<option value="48">Tỉnh Đồng Nai</option>
											<option value="7">Tỉnh Điện Biên</option>
											<option value="43">Tỉnh Đắk Nông</option>
											<option value="42">Tỉnh Đắk Lắk</option>
											<option value="3">Tỉnh Cao Bằng</option>
											<option value="63">Tỉnh Cà Mau</option>
											<option value="39">Tỉnh Bình Thuận</option>
											<option value="45">Tỉnh Bình Phước</option>
											<option value="47">Tỉnh Bình Dương</option>
											<option value="35">Tỉnh Bình Định</option>
											<option value="53">Tỉnh Bến Tre</option>
											<option value="49">Tỉnh Bà Rịa-Vũng Tàu</option>
											<option value="18">Tỉnh Bắc Ninh</option>
											<option value="62">Tỉnh Bạc Liêu</option>
											<option value="4">Tỉnh Bắc Kạn</option>
											<option value="15">Tỉnh Bắc Giang</option>
											<option value="57">Tỉnh An Giang</option></select>
						                </div>

						                <div class="form-group col-md-6">
						                  <label class="active" for="user_address_attributes_district_id">Quận/Huyện</label>
						                  <select class="form-control" name="user[address_attributes][district_id]" id="user_address_attributes_district_id"><option value="554">Quận Thủ Đức</option>
											<option value="559">Quận Tân Phú</option>
											<option value="558">Quận Tân Bình</option>
											<option value="560">Quận Phú Nhuận</option>
											<option value="556">Quận Gò Vấp</option>
											<option value="557">Quận Bình Thạnh</option>
											<option value="569">Quận Bình Tân</option>
											<option value="555">Quận 9</option>
											<option value="568">Quận 8</option>
											<option value="570">Quận 7</option>
											<option value="567">Quận 6</option>
											<option value="566">Quận 5</option>
											<option value="565">Quận 4</option>
											<option value="562">Quận 3</option>
											<option value="561">Quận 2</option>
											<option value="553">Quận 12</option>
											<option value="564">Quận 11</option>
											<option value="563">Quận 10</option>
											<option value="552">Quận 1</option>
											<option value="574">Huyện Nhà Bè</option>
											<option value="572">Huyện Hóc Môn</option>
											<option value="571">Huyện Củ Chi</option>
											<option value="575">Huyện Cần Giờ</option>
											<option selected="selected" value="573">Huyện Bình Chánh</option></select>
						                </div>
						                
						              </div>
										       
									</div>

						          <div class="form-row">
						            <div class="form-group col-md-6">
						              <label for="user_height">Chiều cao(cm)</label>
						              <input min="0" class="form-control" placeholder="cm" type="number" name="user[height]" id="user_height">
						            </div>
						            <div class="form-group col-md-6">
						              <label for="user_weight">Cân nặng(kg)</label>
						              <input min="0" step="any" class="form-control" placeholder="kg" type="number" name="user[weight]" id="user_weight">
						            </div>
						          </div>

						          <div class="form-row">
						            <div class="form-group col-md-12">
						              <label for="user_date_of_birth">Ngày sinh</label>
						              <input class="form-control" placeholder="Ngày sinh" type="date" name="birthday" id="user_date_of_birth" value="{{Auth::user()->birthday}}">
						            </div>
						          </div>
						          <button name="button" type="submit" class="btn btn-primary">Cập nhật</button>

						</form>      </div>
						    </div>
						  </div>
						</section>
					</div>
				</div>
			</div>
		</div>
	</main>
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
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js" integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU=" crossorigin="anonymous"></script>
<script type="text/javascript" src="js/javascript.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
<script type="text/javascript">
    const drop_btn = document.querySelector('.drops-btn');
    const menu_wrapper = document.querySelector('.wrapper');
    drop_btn.onclick = (()=>{
      menu_wrapper.classList.toggle("show");
    });
  </script>
</body>
</html>