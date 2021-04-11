<?php

namespace App\Http\Controllers\adminController;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;
use App\Models\adminModels\CruiseModel as MainModel;
use Session;
class CruiseController extends Controller
{
    public $model;
	//ham tao
	public function __construct(){
		//gan bien $model la mot object cua model User
		$this->model = new MainModel;
	}
    public function index()
    {
        $data = $this->model->listItems();
        return view('admin.cruiseView',["data"=>$data]);
    }
    public function create(){
        return view('admin.cruiseFormView');
    }
    public function createPost(Request $request){
    	//goi ham create ban ghi
        
        if($request->hasFile('image')){
            //Hàm kiểm tra dữ liệu
            
            $validator = Validator::make($request->all(), 
                [
                    //Kiểm tra đúng file đuôi .jpg,.jpeg,.png.gif và dung lượng không quá 2M
                    'image[]' => 'mimes:jpg,jpeg,png,gif|max:2048',
                ],			
                [
                    //Tùy chỉnh hiển thị thông báo không thõa điều kiện
                    'image[].mimes' => 'Chỉ chấp nhận hình thẻ với đuôi .jpg .jpeg .png .gif',
                    'image[].max' => 'Hình thẻ giới hạn dung lượng không quá 2M',
                ]
            );
            if ($validator->fails()) {
                // Điều kiện dữ liệu không hợp lệ sẽ chuyển về trang đăng nhập và thông báo lỗi
                return redirect('admin/product/cruise/addCruise')->withErrors($validator)->withInput();
            } else {
                 //Lưu hình ảnh vào thư mục public/upload/hinhthe
                $this->model->modelCreate();
                $getId = $this->model->getId();  
                foreach($request->file('image') as $image)
                { 
                    $getImage = time().'_'.$image->getClientOriginalName();
                    $destinationPath = public_path('assets\upload\img');
                    $image->move($destinationPath, $getImage);
                    $insertImages = DB::insert('insert into cruise_images (name,cruise_id) values (?,?)', [$getImage,$getId]);
                } 
            }
        }
        //di chuyen den url
        return redirect("admin/product/cruise");
    }
    public function edit($id){
        $record = $this->model->getRecord($id);
        $image = $this->model->getImage($id);
        return view('admin.cruiseFormView',['record'=>$record,"image"=>$image]);
    }


    // edit
    public function editPost($id,Request $request){
    	//goi ham create ban ghi
        if($request->hasFile('image')){
            //Hàm kiểm tra dữ liệu
            
            $validator = Validator::make($request->all(), 
                [
                    //Kiểm tra đúng file đuôi .jpg,.jpeg,.png.gif và dung lượng không quá 2M
                    'image[]' => 'mimes:jpg,jpeg,png,gif|max:2048',
                ],			
                [
                    //Tùy chỉnh hiển thị thông báo không thõa điều kiện
                    'image[].mimes' => 'Chỉ chấp nhận hình thẻ với đuôi .jpg .jpeg .png .gif',
                    'image[].max' => 'Hình thẻ giới hạn dung lượng không quá 2M',
                ]
            );
            if ($validator->fails()) {
                // Điều kiện dữ liệu không hợp lệ sẽ chuyển về trang đăng nhập và thông báo lỗi
                return redirect('admin/product/cruise/editCruise/'.$id)->withErrors($validator)->withInput();
            } else {
                $this->model->modelEdit($id);
                DB::table('cruise_images')->where('cruise_id', $id)->delete();
                foreach($request->file('image') as $image)
                { 
                    $getImage = time().'_'.$image->getClientOriginalName();
                    $destinationPath = public_path('assets\upload\img');
                    $image->move($destinationPath, $getImage);
                    DB::table('cruise_images')->insert([
                        'cruise_id' => $id,
                        'name' => $getImage
                    ]);
                }

           }
        }
    	//di chuyen den url: /admin/product/cruise
    	return redirect("admin/product/cruise");
    }
    public function delete($id){
        $data = $this->model->deleteItem($id);
        return redirect("admin/product/cruise");
    }
    public function cruiseDetail($id){
        $data = $this->model->detail($id);
        $image = $this->model->getImage($id);
        return view('admin.cruiseDetailView',["data"=>$data,"image"=>$image]);
    }
}