<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\DoiBong;
use Illuminate\Support\Str;
use Carbon\Carbon;
use App\ThanhVien;
use Auth;
use App\TranDau;
use App\Booking;
use App\TinTuc;
use DB; 
use App\Student;
use App\Owner;
use App\Pitch;
use App\SubPitch;
use Session;


class ClubController extends Controller
{
  public function indexDk()
  {
   return view('TrangChu.DoiBong.taodb');
 }
 public function getDk(Request $request)
 {
   $dt = Carbon::now('Asia/Ho_Chi_Minh');
   $doibong = new DoiBong;
   $doibong->TenDoiBong = $request->tendoibong;
   $doibong->TenVietTat = $request->tenvt;
   $doibong->KhauHieu = $request->khauhieu;
   $doibong->date_tl = $dt->toDateString();
   $doibong->TrangChundau = 0;
   if($request->hasFile('Logo'))
   {
    $file = $request->file('Logo');
    $duoi = $file->getClientOriginalExtension();
    if($duoi != 'jpg' && $duoi != 'png' && $duoi != 'jpeg')
    {
      return redirect('TrangChu/DoiBong/them')->with('thongbao','Chỉ thêm được đuôi JPG ,PNG, JPEG');
    }
    $name = $file->getClientOriginalName();
    $Logo = Str::random(4)."_".$name;
    while (file_exists('upload/logo/'.$Logo)) {
     $Logo = Str::random(4)."_".$name;
   }
   $file->move('upload/logo',$Logo);
   $doibong->Logo=$Logo;
 }
 else
 {
  $doibong->Logo=" ";
}
if (Auth::check())
{
 $id = Auth::user()->id;
 $doibong->id_user = $id;
}  
$doibong->save();
$doibong1 = DoiBong::all();
return view('TrangChu.DoiBong.taodb1',compact('doibong1'));
}
public function getDk2(Request $request)
{
  $thanhvien = new ThanhVien();   
  if (Auth::check())
  {
   $id = Auth::user()->id;
 }   
 $thanhvien->id_user = $request->id;
 $thanhvien->SDT = $request->sdt;
 $thanhvien->ChucVu = $request->chucvu;
 $thanhvien->DoiBong_id = $request->doibong1;
 $thanhvien->TenThanhVien = $request->ten;
 $thanhvien->save();
 return view('TrangChu.DoiBong.taodb2');
}




public function indexDk1()
{
  $user = auth::user();
  $doibong = DoiBong::all();
  return view('TrangChu.DoiBong.taodb1')->with(['doibong'=>$doibong,'user'=>$user]);
}
public function indexDk2()
{
 return view('TrangChu.DoiBong.taodb2');
}
public function indexProfile()
{
  if(Auth::check())
  {
    $id = Auth::user()->id;
  }
  $doibong = DoiBong::all();
  $thanhvien = ThanhVien::all();
  return view('TrangChu.DoiBong.profile-club')->with(['thanhvien'=>$thanhvien,'doibong'=>$doibong]);
}
public function xac_nhan($id)
{
  $trandau = TranDau::find($id);
  $trandau->confirm = 1;
  $trandau->save();
  return redirect()->back();
}
public function huy($id)
{
  $trandau = TranDau::find($id);
  $trandau->confirm = 2;
  $trandau->save();
  return redirect()->back();
}
public function indexTk()
{
  $sum1 = Booking::sum('total_price');
   $sum2 = Booking::where('today','21-12-2020')->sum('total_price');
   $booking = ($sum2/$sum1)*100;

   $sum3 = Booking::sum('total_price');
   $sum4 = Booking::where('today','24-12-2020')->sum('total_price');
   $booking1 = ($sum4/$sum3)*100;

   $sum5 = Booking::sum('total_price');
   $sum6 = Booking::where('today','25-12-2020')->sum('total_price');
   $booking2 = ($sum6/$sum5)*100;

   $sum7 = Booking::sum('total_price');
   $sum8 = Booking::where('today','12-01-2021')->sum('total_price');
   $booking3 = ($sum8/$sum7)*100;

  $thanhvien = ThanhVien::count();
  $tintuc = TinTuc::count();
  $doibong = DoiBong::count();
  $sumTien = Booking::sum('total_price');
  return view('admin.ThongKe.index',['sumTien'=>$sumTien,'doibong'=>$doibong,'tintuc'=>$tintuc,'thanhvien'=>$thanhvien,'booking'=>$booking,'booking1'=>$booking1,'booking2'=>$booking2,'booking3'=>$booking3]);
}
public function thongke()
{
  $sumTien = Booking::sum('total_price');
  return view('admin.ThongKe.index',['sumTien'=>$sumTien]);
}

}
