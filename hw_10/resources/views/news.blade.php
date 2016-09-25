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
                @if($news)
                <div class="news-list__container">
                    @foreach($news as $pieceOfNews)
                    <div class="news-list__item">
                        @if($pieceOfNews->image)
                        <div class="news-list__item__thumbnail">
                            <img src="{{$pieceOfNews->image}}">
                        </div>
                        @endif
                        <div class="news-list__item__content">
                            <div class="news-list__item__content__news-title">{{$pieceOfNews->name}}</div>
                            <div class="news-list__item__content__news-date">{{$pieceOfNews->published_at}}</div>
                            <div class="news-list__item__content__news-content">
                                {{$pieceOfNews->excerpt}}
                            </div>
                        </div>
                        <div class="news-list__item__content__news-btn-wrap">
                            <a href="news/{{$pieceOfNews->slug}}" class="btn btn-brown">Подробнее</a>
                        </div>
                    </div>
                    @endforeach
                </div>
                @endif
            </div>
        </div>
        <div class="content-bottom"></div>
    </div>
@stop