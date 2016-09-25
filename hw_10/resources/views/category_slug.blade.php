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
                    <div class="content-head__title-wrap__title bcg-title">Игры в разделе {!!$category->name!!}</div>
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
                @if($productsInCategory)
                <div class="products-category__list">
                    @foreach($productsInCategory as $productInCategory)
                    <div class="products-category__list__item">
                        <div class="products-category__list__item__title-product">
                            <a href="product/{{$productInCategory->slug}}">{!!$productInCategory->name!!}</a>
                        </div>
                        @if($productInCategory->image)
                        <div class="products-category__list__item__thumbnail">
                            <a href="product/{{$productInCategory->slug}}" class="products-category__list__item__thumbnail__link">
                                <img src="{{$productInCategory->image}}" alt="Preview-image">
                            </a>
                        </div>
                        @endif
                        <div class="products-category__list__item__description">
                            <span class="products-price">{{$productInCategory->price}} руб.</span>
                            <a href="#" class="btn btn-blue btn-buy">Купить</a>
                            <input type="hidden" value="{{$productInCategory->id}}">
                        </div>
                    </div>
                    @endforeach
                </div>
                @endif
            </div>
        </div>
        <div class="content-bottom">
        </div>
    </div>
@stop