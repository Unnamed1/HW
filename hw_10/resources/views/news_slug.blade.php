@extends('layout')
@section('maincontent')
    <div class="main-content">
        <div class="content-top">
            <div class="content-top__text">Купить игры недорого без регистрации смс с торента, получить компaкт диск, скачать Steam игры после оплаты</div>
            <div class="slider">
                <img src="img/slider.png" alt="Image" class="image-main">
            </div>
        </div>
        <div class="content-middle">
            <div class="content-head__container">
                <div class="content-head__title-wrap">
                    <div class="content-head__title-wrap__title bcg-title">Новости</div>
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
            <div class="content-main__container">
                @if($pieceOfNews)
                <div class="news-block content-text">
                    <h3 class="content-text__title">
                      «{{$pieceOfNews->name}}»
                    </h3>
                    @if($pieceOfNews->image)
                    <img src="{{$pieceOfNews->image}}" alt="Image" class="alignleft img-news">
                    @endif()
                    <p>
                        {{$pieceOfNews->description}}
                    </p>
                </div>
                @endif
            </div>
        </div>
        <div class="content-bottom">
        @if($latestProducts)
            <div class="line"></div>
            <div class="content-head__container">
                <div class="content-head__title-wrap">
                    <div class="content-head__title-wrap__title bcg-title">Посмотрите наши товары</div>
                </div>
            </div>
            <div class="content-main__container">
                <div class="products-columns">
                @foreach($latestProducts as $latestProduct)
                    <div class="products-columns__item">
                        <div class="products-columns__item__title-product">
                            <a href="product/{{$latestProduct->slug}}" class="products-columns__item__title-product__link">{{$latestProduct->name}}</a>
                        </div>
                        @if($latestProduct->image)
                        <div class="products-columns__item__thumbnail">
                            <a href="product/{{$latestProduct->slug}}" class="products-columns__item__thumbnail__link">
                                <img src="{{$latestProduct->image}}" alt="Preview-image" class="products-columns__item__thumbnail__img">
                            </a>
                        </div>
                        @endif
                        <div class="products-columns__item__description">
                            <span class="products-price">{{$latestProduct->price}} руб</span>
                            <a href="#" class="btn btn-blue btn-buy">Купить</a>
                            <input type="hidden" value="{{$latestProduct->id}}">
                        </div>
                    </div>
                @endforeach
              </div>
            </div>
        @endif
        </div>
    </div>
@stop