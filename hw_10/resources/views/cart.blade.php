@extends('layout')
@section('maincontent')
    <div class="main-content">
        <div class="content-top">
            <div class="content-top__text">Купить игры недорого без регистрации смс с торента, получить компaкт диск, скачать Steam игры после оплаты</div>
            <div class="slider">
                <img src="/img/slider.png" alt="Image" class="image-main">
            </div>
        </div>
        <div class="content-middle">
            <div class="content-head__container">
                <div class="content-head__title-wrap">
                    <div class="content-head__title-wrap__title bcg-title">Мои заказы</div>
                </div>
                <div class="content-head__search-block">
                    <div class="search-container">
                        <form class="search-container__form">
                            <input type="text" class="search-container__form__input">
                            <button class="search-container__form__btn">search</button>
                        </form>
                    </div>
                </div>
            </div>
            @if($productsInCart)
                <div class="cart-product-list">
                @foreach($productsInCart as $productInCart)
                    <div class="cart-product-list__item">
                        @if($productInCart->image)
                        <div class="cart-product__item__product-photo">
                            <img src="{{$productInCart->image}}" class="cart-product__item__product-photo__image">
                        </div>
                        @endif
                        <div class="cart-product__item__product-name">
                            <div class="cart-product__item__product-name__content">
                            <a href="product/{{$productInCart->slug}}">{{$productInCart->name}}</a>
                            </div>
                        </div>
                        <div class="cart-product__item__product-price">
                            <span class="product-price__value">{{$productInCart->price}}</span>
                        </div>
                        <input type="hidden" name="id" value="{{$productInCart->id}}">
                    </div>
                @endforeach
                    <div class="cart-product-list__result-item">
                        <div class="cart-product-list__result-item__text">Итого единиц валюты</div>
                        <div class="cart-product-list__result-item__value">{{$sum}}</div>
                    </div>
                    <div class="content-footer__container">
                        <div class="btn-buy-wrap">
                            <a href="#" class="btn-buy-wrap__btn-link">Перейти к оплате</a>
                        </div>
                    </div>
                </div>
            @endif
        </div>
        <div class="content-bottom"></div>
    </div>
    <div class="checkoutForm popup">
        <div class="panel panel-default">
            <div class="panel-heading">Checkout<i class="fa fa-btn fa-times close"></i></div>
            <div class="panel-body checkout__status"></div>
            <div class="panel-body">
                <form class="form-horizontal" role="form" method="POST">
                    <div class="form-group">
                        <label for="name" class="col-md-4 control-label">Name</label>
                        <div class="col-md-6">
                            <input id="name" type="text" class="form-control" name="name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="email" class="col-md-4 control-label">E-Mail Address</label>
                        <div class="col-md-6">
                            @if(Auth::check())
                            <input id="email" type="email" class="form-control" name="email" value="{{Auth::user()->email}}">
                            @else
                            <input id="email" type="email" class="form-control" name="email">
                            @endif
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-6 col-md-offset-4">
                            <button type="submit" class="btn btn-primary proceedToCheckout">
                                <i class="fa fa-btn fa-credit-card-alt"></i> Proceed to checkout
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
@stop