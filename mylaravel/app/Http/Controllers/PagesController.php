<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use View;

class PagesController extends Controller
{
    //
    public function index(){

    	if(View::exists('pages.index'))
 			return view ('pages.index')
 				->with('name', 'Pogie')
 				->with(['location' => 'Europe']);
 		else   	
    		return 'NO VIEW AVAILABLE';
    }


    public function profile(){
    	return view('pages.profile');
    }

    public function blade(){
    	return view('blade.bladetest');
    }
}
