@extends('layout')
@section('maincontent')
    <div class="main-content">
        <div class="content-middle">
            <div class="content-head__container">
                <div class="content-head__title-wrap">
                    <div class="content-head__title-wrap__title bcg-title"><a href="admin">Административная панель</a></div>
                </div>
            </div>
            <div class="content-main__container">
                <div class="panel panel-default">
                    <div class="panel-heading">Новый товар</div>
                    <div class="panel-body">
                        <div class="status"></div>
                        <form class="form-horizontal" role="form" method="POST">
                            <div class="form-group">
                                <label for="name" class="col-md-4 control-label">Name</label>
                                <div class="col-md-6">
                                    <input id="name" type="text" class="form-control" name="name">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="price" class="col-md-4 control-label">Price</label>
                                <div class="col-md-6">
                                    <input id="price" type="text" class="form-control" name="price">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="description" class="col-md-4 control-label">Description</label>
                                <div class="col-md-6">
                                    <input id="description" type="text" class="form-control" name="description">
                                </div>
                            </div>
                            @if($categories)
                            <div class="form-group">
                                <label class="col-md-4 control-label">Category</label>
                                <div class="col-md-6">
                                    <select class="form-control" name="category">
                                        @foreach($categories as $category)
                                        <option value="{{$category->id}}">{{$category->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            @endif
                            <div class="form-group">
                                <label for="image" class="col-md-4 control-label">Image</label>
                                <div class="col-md-6">
                                    <input id="image" type="file" name="image">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class=" col-md-offset-4 col-md-6">
                                    <button type="submit" class="btn btn-primary product__create">
                                        Создать товар
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="content-bottom"></div>
    </div>
@stop