<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\DoiBong;
use App\ThanhVien;
use App\TTdoibong;
use App\Http\Controllers\Controller;
use App\TranDau;
use App\User;

class DbController extends Controller
{
    public function indexDoibong()
    {
    	$doibong = DoiBong::all();
    	return view('admin.doibong.index',compact('doibong'));
    }
     public function getThem()
     {
     	return view('admin.doibong.them');
     }
    public function postThem(Request $request)
    {
    	$doibong = new DoiBong();
    	$doibong->TenDoiBong = $request->tendb;
    	$doibong->save();
    	return redirect('http://127.0.0.1:8000/admin/doibong/tendb/danhsach')->with('thongbao','them thanh cong');
    }
    public function indexTv()
    {
    	$tvdoibong = ThanhVien::all();
    	return view('admin.doibong.thanhvien.index',compact('tvdoibong'));
    }
     public function getThemTv()
     {
     	$doibong = DoiBong::all();
     	return view('admin.doibong.thanhvien.them',compact('doibong'));
     }
    public function postThemTv(Request $request)
    {
        $tvdoibong = new ThanhVien;
        $tvdoibong->DoiBong_id = $request->id_db;
        $tvdoibong->TenThanhVien = $request->tv;
        $tvdoibong->save();
        return redirect('admin/doibong/thanhvien/them')->with('thongbao','them thanh cong');
    }
     public function indexTt()
    {
        $ttdoibong = TTdoibong::all();
        return view('admin.doibong.thanhtich.index',compact('ttdoibong'));
    }
    public function indexDb()
    {
        $doibong = DoiBong::all();
        $trandau = TranDau::all();
        return view('admin.TranDau.index',['trandau'=>$trandau,'doibong'=>$doibong]);
    }
    public function deleDb($id)
    {
        $trandau = TranDau::find($id);
        $trandau->delete();
         return redirect('admin/doibong/tendb/trandau1')->with('thongbao','xóa thành công');
    }
    public function indexsuaDb($id)
    {
        $trandau = TranDau::where('id',$id)->first();
        return view('admin.TranDau.sua',compact('trandau'));
    }
    public function updateDb(Request $request ,$id)
    {
        $trandau = TranDau::where('id',$id)->first();
        $trandau->time = $request->time;
        $trandau->ngay = $request->ngay;
        $trandau->save();
       return redirect('admin/doibong/tendb/trandau1')->with('thongbao','xóa thành công');
    }
    public function indexUser()
    {
        $user = User::all();
        return view('admin.user.index',['user'=>$user]);
    }
    public function deleUser($id)
    {
        $user = User::find($id);
        $user->delete();
        return redirect('admin/user/danhsach')->with('thongbao','xóa thành công');
    }
    public function editUser($id)
    {
        $user = User::where('id',$id)->first();
        return view('admin.user.sua',compact('user'));
    }
    public function updateUser(Request $request,$id)
    {
        $user = User::where('id',$id)->first();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->phone_number = $request->phone;
        $user->address = $request->diachi;
        $user->birthday = $request->ngay;
        $user->save();
        return redirect('/admin/user/danhsach');
    }
}
