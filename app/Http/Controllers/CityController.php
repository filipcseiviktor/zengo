<?php

namespace App\Http\Controllers;

use App\City;
use App\County;
use Illuminate\Http\Request;

class CityController extends Controller
{

    public function index()
    {
        $counties = County::get();
        return view('index', compact('counties'));
    }


    public function store(Request $request)
    {

        $city = new City();
        $city->name = $request->name;
        $city->county_id = $request->county_id;
        $city->save();

        return response()->json($city);
    }


    public function select(Request $request)
    {
        $county_id = $request->county_id;
        $cities = City::where('county_id', $county_id)->get();

        return response()->json($cities);
    }


    public function update(Request $request)
    {
        $id = $request->id;
        $city = City::find($id);
        $city->name = $request->name;
        $city->save();

        return response()->json($city);
    }

    public function delete(Request $request)
    {
        $id = $request->id;
        $city = City::find($id);
        $city->delete();

        return response()->json($city);
    }
}