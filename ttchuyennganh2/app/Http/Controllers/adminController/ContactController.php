<?php

namespace App\Http\Controllers\adminController;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;
use App\Models\adminModels\ContactModel as MainModel;
use Session;
class ContactController extends Controller
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
        return view('admin.contactView',["data"=>$data]);
    }
    public function edit(){
        $record = $this->model->getRecord();
        return view('admin.hotelFormView',['record'=>$record]);
    }
    // edit
    public function editPost(){
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
                return redirect('admin/product/hotel/editHotel/'.$id)->withErrors($validator)->withInput();
            } else {
                $this->model->modelEdit($id);
                DB::table('hotel_images')->where('hotel_id', $id)->delete();
                $i=0;
                foreach($request->file('image') as $image)
                { 
                    $i++;
                    $getImage = time().'_'.$image->getClientOriginalName();
                    if($i==1){
                        $this->model->getId2($getImage);
                    }
                    $destinationPath = public_path('assets\upload\img');
                    $image->move($destinationPath, $getImage);
                    DB::table('hotel_images')->insert([
                        'hotel_id' => $id,
                        'name' => $getImage
                    ]);
                }

           }
        }else{
            $this->model->modelEdit($id);
        }
       
    	//di chuyen den url: /admin/product/hotel
    	return redirect("admin/product/hotel");
    }
}