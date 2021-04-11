<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/admin/login', [ 'as' => 'login', 'uses' => 'adminController\LoginController@index']);
Route::post('/admin/login', [ 'as' => 'login', 'uses' => 'adminController\LoginController@loginPost']);
Route::get('/admin/register', 'adminController\LoginController@register');
Route::post('admin/register', 'adminController\LoginController@index');
Route::group(["prefix"=>"admin","middleware"=>"auth"],function(){
    // Đăng xuất
     Route::get('logout', [ 'as' => 'logout', 'uses' => 'adminController\LoginController@getLogout']);
    // Route::post('login', [ 'as' => 'login', 'uses' => 'Auth\LoginController@postLogin']);
    //
    Route::get('/','adminController\DashboardController@index');
    //
    Route::get('/home', 'adminController\DashboardController@index');
    Route::group(["prefix"=>"users"],function(){
        //them moi ban ghi - trang thai GET
        Route::get('/addUser','adminController\UserController@create');
        //
        Route::get('/', 'adminController\UserController@index');
        //them moi ban ghi - trang thai POST
        Route::post('/addUser','adminController\UserController@createPost');
        //sua 1 ban ghi trang thai GET
        Route::get('/editUser/{id}','adminController\UserController@edit');
        // sua 1 ban ghi - trang thai POST
        Route::post('/editUser/{id}','adminController\UserController@editPost');
        //xoa 1 ban ghi trang thai GET
        Route::get('/deleteUser/{id}','adminController\UserController@delete');
    });
    //them dau ? de ko bat buoc phai co thuoc tinh
    Route::group(["prefix"=>"product"],function(){
        //quan ly hotel
        Route::group(["prefix"=>"hotel"],function(){
            //them moi ban ghi - trang thai GET
            Route::get('/addHotel','adminController\HotelController@create');
            //them moi ban ghi - trang thai POST
            Route::post('/addHotel','adminController\HotelController@createPost');
            //
            Route::get('/', 'adminController\HotelController@index');
            //sua 1 ban ghi trang thai GET
            Route::get('/editHotel/{id}','adminController\HotelController@edit');
            // sua 1 ban ghi - trang thai POST
            Route::post('/editHotel/{id}','adminController\HotelController@editPost');
            //xoa 1 ban ghi trang thai GET
            Route::get('/deleteHotel/{id}','adminController\HotelController@delete');
            //chi tiet hotel
            Route::get('/hotelDetail/{id}','adminController\HotelController@hotelDetail');
        });
        //quan ly tour
        Route::group(["prefix"=>"zoom"],function(){
            //them moi ban ghi - trang thai GET
            Route::get('/addZoom','adminController\ZoomController@create');
            //them moi ban ghi - trang thai POST
            Route::post('/addZoom','adminController\ZoomController@createPost');
            //
            Route::get('/', 'adminController\ZoomController@index');
            //sua 1 ban ghi trang thai GET
            Route::get('/editZoom/{id}','adminController\ZoomController@edit');
            // sua 1 ban ghi - trang thai POST
            Route::post('/editZoom/{id}','adminController\ZoomController@editPost');
            //xoa 1 ban ghi trang thai GET
            Route::get('/deleteZoom/{id}','adminController\ZoomController@delete');
            //chi tiet hotel
            Route::get('/zoomDetail/{id}','adminController\ZoomController@zoomDetail');
        });
        
     });
     Route::group(["prefix"=>"contact"],function(){
        //them moi ban ghi - trang thai GET
        Route::get('/', 'adminController\ContactController@index');
        //sua 1 ban ghi trang thai GET
        Route::get('/editContact','adminController\ContactController@edit');
        // sua 1 ban ghi - trang thai POST
        Route::post('/editContact','adminController\ZoomController@editPost');
    });
});

Route::get('/','frontendController\HomeController@index');
Route::get('/login', [ 'as' => 'login', 'uses' => 'frontendController\LoginController@index']);
Route::post('/login', [ 'as' => 'login', 'uses' => 'frontendController\LoginController@loginPost']);
Route::get('/register', 'frontendController\LoginController@register');
Route::post('/register', 'frontendController\LoginController@index');
Route::get('hotelDetail/{id}','frontendController\HotelController@index')->where('id', '[0-9]+');
Route::get('hotel', function () {
    return view('frontend.hotel-list');
});
Route::get('hotelBooking', function () {
    return view('frontend.hotel-booking');
});
