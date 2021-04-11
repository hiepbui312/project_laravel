<!-- load file layout chung -->
@extends('admin.layout')
@section('content')
    <div class="col-md-12">
        <style type="text/css">
            .pagination{padding:0px; margin:0px; float: right;}
        </style>
        <div class="col-md-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <div style=" float: right;">
                        <a href="http://localhost/ttchuyennganh2/public/admin/users/addUser" class="btn btn-primary"><h6>ADD USER&nbsp <i class="link-icon" data-feather="user-plus"></i></h6></a>
                    </div>
                    <h6 class="card-title">Danh sách users</h6>
                    <div class="table-responsive">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>id</th>
                                    <th>NAME</th>
                                    <th>EMAIL</th> 
                                    <th style="width: 150px;"></th>  
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($data as $row): ?>
                                <tr>
                                    <th><?php echo $row->id; ?></th>
                                    <td><?php echo $row->name; ?></td>
                                    <td><?php echo $row->email; ?></td>
                                    <td style="text-align:center;">
                            <a class="btn btn-success" href="http://localhost/ttchuyennganh2/public/admin/users/editUser/<?php echo $row->id; ?>">EDIT</a>&nbsp;
                            <a class="btn btn-danger" href="http://localhost/ttchuyennganh2/public/admin/users/deleteUser/<?php echo $row->id; ?>" onclick="return window.confirm('Ban co thuc su muon xoa');">DELETE</a>
                                    </td>
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