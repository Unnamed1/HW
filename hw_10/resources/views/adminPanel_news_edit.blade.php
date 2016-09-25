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
                    @if($pieceOfNews)
                    <div class="panel-heading">Редактирование новости {{$pieceOfNews->name}}</div>
                    <div class="panel-body">
                        <div class="status"></div>
                        <form class="form-horizontal" role="form" method="POST">
                            <div class="form-group">
                                <label for="name" class="col-md-4 control-label">Name</label>
                                <div class="col-md-6">
                                    <input id="name" type="text" class="form-control" name="name" value="{{$pieceOfNews->name}}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="excerpt" class="col-md-4 control-label">Excerpt</label>
                                <div class="col-md-6">
                                    <input id="excerpt" type="text" class="form-control" name="excerpt" value="{{$pieceOfNews->excerpt}}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="description" class="col-md-4 control-label">Description</label>
                                <div class="col-md-6">
                                    <input id="description" type="text" class="form-control" name="description" value="{{$pieceOfNews->description}}">
                                </div>
                            </div>
                            @if($pieceOfNews->image)
                            <div class="form-group">
                                <div class="col-md-offset-4 col-md-6">
                                    <img src="{{$pieceOfNews->image}}" alt="Image">
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
                                <div class="col-md-6 col-md-offset-4">
                                    <button type="submit" class="btn btn-primary news__edit">
                                        Обновить новость
                                    </button>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-6 col-md-offset-4">
                                    <button type="submit" class="btn btn-primary news__delete">
                                        Удалить новость
                                    </button>
                                </div>
                            </div>
                            <input type="hidden" name="id" value="{{$pieceOfNews->id}}">
                        </form>
                    </div>
                    @endif
                </div>
            </div>
        </div>
        <div class="content-bottom"></div>
    </div>
@stop