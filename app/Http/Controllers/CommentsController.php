<?php

namespace App\Http\Controllers;

use App\Comments;
use Illuminate\Http\Request;

class CommentsController extends Controller
{
    public function index(){
        return Comments::all();
    }

    public function show($id){
      //  return Comments::find($id);
        return Comments::where('id_movie' ,$id)->get();

    }

    public function store(Request $request){
        return Comments::create($request -> all());
    }
}
