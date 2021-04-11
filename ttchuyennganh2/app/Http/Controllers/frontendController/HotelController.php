<?php

namespace App\Http\Controllers\frontendController;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;
use App\Models\frontendModels\HotelModel as MainModel;
use Session;
class HotelController extends Controller
{
    public $model;
	//ham tao
	public function __construct(){
		//gan bien $model la mot object cua model User
		$this->model = new MainModel;
	}
    public function index($id)
    {
        $data = $this->model->listItems($id);
        $getImages = $this->model->getImages($id);
        $suggest = $this->model->suggest($id);
        $room = $this->model->room($id);
        return view('frontend.hotel-single',["data"=>$data,"getImages"=>$getImages,"suggest"=>$suggest,"room"=>$room]);
    }
}