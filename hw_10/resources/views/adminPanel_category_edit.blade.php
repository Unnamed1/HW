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
                @if($category)
                    <div class="panel-heading">Редактирование категории {{$category->name}}</div>
                    <div class="panel-body">
                        <div class="status"></div>
                        <form class="form-horizontal" role="form" method="POST">
                            <div class="form-group">
                                <label for="name" class="col-md-4 control-label">Name</label>
                                <div class="col-md-6">
                                    <input id="name" type="text" class="form-control" name="name" value="{{$category->name}}">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-6 col-md-offset-4">
                                    <button type="submit" class="btn btn-primary category__edit">
                                        Редактировать категорию
                                    </button>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-6 col-md-offset-4">
                                    <button type="submit" class="btn btn-primary category__delete">
                                        Удалить категорию
                                    </button>
                                </div>
                            </div>
                            <input type="hidden" name="id" value="{{$category->id}}">
                        </form>
                    </div>
                </div>
                @endif
            </div>
        </div>
        <div class="content-bottom"></div>
    </div>
@stop