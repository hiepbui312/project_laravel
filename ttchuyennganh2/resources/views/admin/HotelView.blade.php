<!-- load file layout chung -->
@extends('admin.layout')
@section('content')
@if ($errors->any())
	<div class="alert alert-danger alert-dismissible" role="alert">
		<ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>

	</div>
@endif


    <div class="col-md-12">
        <style type="text/css">
            .pagination{padding:0px; margin:0px; float: right;}
        </style>
        <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <div style=" float: right;">
                        <a href="http://localhost/ttchuyennganh2/public/admin/product/hotel/addHotel" class="btn btn-primary"><h6>ADD Hotel&nbsp <i class="link-icon" data-feather="user-plus"></i></h6></a>
                    </div>
                    <h6 class="card-title">Danh sách hotels</h6>
                    <div class="table-responsive">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>id</th>
                                    <th>name</th>
                                    <th>price</th>
                                    <th>discount</th> 
                                    <th>hot</th>
                                    <th>avaliable form</th>
                                    <th>avaliable to</th>
                                    {{-- <th>image</th> --}}
                                    {{-- <th>description</th>  
                                    <th>hotel type</th>
                                    <th>extra people</th>
                                    <th>minium stay</th> 
                                    <th>city</th>
                                    <th>country</th> --}}
                                    <th></th>
                                    <th style="width: 150px;"></th>  
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($data as $row): ?>
                                <tr>
                                    <th><?php echo $row->id; ?></th>
                                    <th><?php echo $row->name; ?></th>
                                    <th><?php echo $row->price; ?></th>
                                    <th><?php echo $row->discount; ?></th>
                                    <th><?php echo $row->hot; ?></th>
                                    <th><?php echo $row->available_from; ?></th>
                                    <th><?php echo $row->available_to; ?></th>
                                    <th><a href="http://localhost/ttchuyennganh2/public/admin/product/hotel/hotelDetail/<?php echo $row->id; ?>" style="text-decoration: underline;">more detail</a></th>
                                    {{-- <th> <img src="{{ asset('assets/upload/img/'.$row->image) }}" alt="" style="width: 200px; height: 200px;"></th> --}}
                                    {{-- <th><?php echo $row->description; ?></th>
                                    <th><?php echo $row->hotel_type; ?></th>
                                    <th><?php echo $row->extra_people; ?></th>
                                    <th><?php echo $row->minium_stay; ?></th>
                                    <th><?php echo $row->city; ?></th>
                                    <th><?php echo $row->country; ?></th> --}}
                                    <th style="text-align:center;">
                            <a class="btn btn-success" href="http://localhost/ttchuyennganh2/public/admin/product/hotel/editHotel/<?php echo $row->id; ?>">EDIT</a>&nbsp;
                            <a class="btn btn-danger" href="http://localhost/ttchuyennganh2/public/admin/product/hotel/deleteHotel/<?php echo $row->id; ?>" onclick="return window.confirm('Ban co thuc su muon xoa');">DELETE</a>
                                    </th>
                                </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                        <nav aria-label="Page navigation example" style="margin-top: 30px">
                            <ul class="pagination">
                                <li>{{ $data->onEachSide(1)->links() }}</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
 @endsection