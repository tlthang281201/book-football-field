<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TheLoai;
use App\LoaiTin;
use App\TinTuc;
use App\Comment;
use Auth;
use DB;

class PageController extends Controller
{
    public function tentheloai()
    {
    	$theloai = TheLoai::all();
    	$loaitin = LoaiTin::all();
    	return view("layout.tintuc",['theloai'=>$theloai,'loaitin'=>$loaitin]);
    }
    public function tenloaitin($id)
    {
        $theloai = TheLoai::all();
    	$loaitin = LoaiTin::find($id);
    	$tintuc = TinTuc::where('LoaiTin_id',$id)->paginate(5);
    	return view("layout.ttloaitin",['tintuc'=>$tintuc,'loaitin'=>$loaitin,'theloai'=>$theloai]);
    }
    public function getTintuc($id)
    {
        $tintuc = TinTuc::find($id);
        $tintucnoibat = Tintuc::where('NoiBat',1)->take(4)->get();
        $tinlienquan = Tintuc::where('LoaiTin_id',$tintuc->LoaiTin_id)->take(4)->get();

        $comment = Comment::where('id_TinTuc',$id)->get();
        return view('layout.bao',['tintuc'=>$tintuc,'tintucnoibat'=>$tintucnoibat,'tinlienquan'=>$tinlienquan, 'comment'=>$comment]);
    }
    public function comment(Request $request,$id) {
        $comment = new Comment;

        $comment->NoiDung = $request->comment;
        $comment->user_name = Auth::user()->name;
        $comment->id_TinTuc = $id;
        $comment->save();

        return redirect()->back();
    }
}
