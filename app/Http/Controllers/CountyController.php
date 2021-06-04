<?php

namespace App\Http\Controllers;

use App\County;

class CountyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $counties = County::get();
        return view('index', compact('counties'));
    }
}