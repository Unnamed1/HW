@extends('layout')
@section('maincontent')
    <div class="main-content">
        <div class="content-middle">
            <div class="content-head__container">
                <div class="content-head__title-wrap">
                    <div class="content-head__title-wrap__title bcg-title">Административная панель</div>
                </div>
            </div>
            <div class="content-main__container">
                <div class="panel panel-default">
                    <div class="panel-heading">Куда вам высылать уведомления о заказах?</div>
                    <div class="panel-body">
                        <div class="status"></div>
                        <form class="form-horizontal" role="form" method="POST">
                            <div class="form-group">
                                <div class="col-md-4">
                                    <input type="text" class="form-control" name="email" value="{{Auth::user()->email}}">
                                </div>
                                <div class="col-md-offset-4 col-md-offset-4">
                                    <div class="content-head__title-wrap__title">
                                        <a href="admin/orders">Список заказов</a>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-4">
                                    <button type="submit" class="btn btn-primary notifications__change">
                                        Обновить адрес
                                    </button>
                                </div>
                            </div>
                            <input type="hidden" name="id" value="{{Auth::user()->id}}">
                        </form>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="content-head__title-wrap__title">Категории</div>
                    <div class="content-head__title-wrap__title">
                        <a href="admin/category/new">Новая категория</a>
                    </div>
                    @if($categories)
                        @foreach($categories as $name=>$slug)
                        <div class="line"></div>
                        <div class="content-head__title-wrap__title">
                            <a href="admin/category/{{$slug}}/edit">{{$name}}</a>
                        </div>
                        @endforeach
                    @endif
                </div>
                <div class="col-md-4">
                    <div class="content-head__title-wrap__title">Товары</div>
                    <div class="content-head__title-wrap__title">
                        <a href="admin/product/new">Новый товар</a>
                    </div>
                    @if($products)
                        @foreach($products as $name=>$slug)
                        <div class="line"></div>
                        <div class="content-head__title-wrap__title">
                            <a href="admin/product/{{$slug}}/edit">{{$name}}</a>
                        </div>
                        @endforeach
                    @endif
                </div>
                <div class="col-md-4">
                    <div class="content-head__title-wrap__title">Новости</div>
                    <div class="content-head__title-wrap__title">
                        <a href="admin/news/new">Новая новость</a>
                    </div>
                    @if($news)
                        @foreach($news as $name=>$slug)
                        <div class="line"></div>
                        <div class="content-head__title-wrap__title">
                            <a href="admin/news/{{$slug}}/edit">{{$name}}</a>
                        </div>
                        @endforeach
                    @endif
                </div>
            </div>
        </div>
        <div class="content-bottom"></div>
    </div>
@stop