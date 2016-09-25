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
                    <div class="content-head__title-wrap__title bcg-title">Последние товары</div>
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
                @if($latestProducts)
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
                @endif
            </div>
            <div class="content-footer__container">
            @if($numberOfLatestProducts)
                <ul class="page-nav">
                @if($page==1)
                    <li class="page-nav__item">
                        <a href="?page=1" class="page-nav__item__link">
                            <i class="fa fa-angle-double-left"></i>
                        </a>
                    </li>
                    @else
                    <li class="page-nav__item">
                        <a href="?page={{$page-1}}" class="page-nav__item__link">
                            <i class="fa fa-angle-double-left"></i>
                        </a>
                    </li>
                @endif
                @for($pageIterator=1; $pageIterator<=$numberOfLatestProducts; $pageIterator++)
                    <li class="page-nav__item">
                        <a href="?page={{$pageIterator}}" class="page-nav__item__link">{{$pageIterator}}</a>
                    </li>
                @endfor
                @if($page==$numberOfLatestProducts)
                    <li class="page-nav__item">
                        <a href="?page={{$numberOfLatestProducts}}" class="page-nav__item__link">
                            <i class="fa fa-angle-double-right"></i>
                        </a>
                    </li>
                    @else
                    <li class="page-nav__item">
                        <a href="?page={{$page+1}}" class="page-nav__item__link">
                            <i class="fa fa-angle-double-right"></i>
                        </a>
                    </li>
                @endif
                </ul>
            @endif
            </div>
        </div>
        <div class="content-bottom"></div>
    </div>
@stop