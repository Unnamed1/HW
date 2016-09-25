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
                @if($orders)
                    <div class="panel-heading">Список заказов</div>
                    <div class="panel-body">
                        <table class="table">
                            <thead>
                                <tr>
                                    <td>Name</td>
                                    <td>Email</td>
                                    <td>Products</td>
                                    <td>Price</td>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($orders as $order)
                                    <tr>
                                        <td>{{$order->name}}</td>
                                        <td>{{$order->email}}</td>
                                        <td>{{$order->products}}</td>
                                        <td>{{$order->price}}</td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                @endif
                </div>
            </div>
        </div>
        <div class="content-bottom"></div>
    </div>
@stop