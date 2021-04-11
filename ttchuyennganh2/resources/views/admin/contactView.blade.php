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
                    <h6 class="card-title">Chi tiet hotels</h6>
                    <div class="table-responsive">
                        <table class="table table-hover">
                            <div class="form-group">
                                <label for="exampleInputUsername1">description: @php
                                    // echo $data->description;
                                @endphp</label>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputUsername1">phone: @php
                                    // echo $data->phone;
                                @endphp</label>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputUsername1">email: @php
                                    // echo $data->email;
                                @endphp</label>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputUsername1">address: @php
                                    // echo $data->address;
                                @endphp</label>
                            </div>
                            <div class="form-group">
                                image: <br>
                                {{-- <img src="{{ asset('assets/upload/img/'.$data->logo) }}" alt="" style="width: 200px; height: 200px;"> --}}
                            </div>
                            <a class="btn btn-primary" href="http://localhost/ttchuyennganh2/public/admin/contact/editContact">Edit</a>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
 @endsection