<!DOCTYPE html>
<html lang="ru">
<head>
    <title>ГеймсМаркет</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <base href="/">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <link rel="stylesheet" href="css/libs.min.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/media.css">
</head>
<body>
<div class="main-wrapper">
    <header class="main-header">
        <div class="logotype-container"><a href="/" class="logotype-link"><img src="img/logo.png" alt="Логотип"></a></div>
        <nav class="main-navigation">
            <ul class="nav-list">
                <li class="nav-list__item"><a href="/" class="nav-list__item__link">Главная</a></li>
                <li class="nav-list__item"><a href="cart" class="nav-list__item__link">Мои заказы</a></li>
                <li class="nav-list__item"><a href="news" class="nav-list__item__link">Новости</a></li>
                <li class="nav-list__item"><a href="about" class="nav-list__item__link">О компании</a></li>
            </ul>
        </nav>
        <div class="header-contact">
            <div class="header-contact__phone">
                <a href="/" class="header-contact__phone-link">Телефон: 33-333-33</a>
            </div>
        </div>
        <div class="header-container">
            <div class="payment-container">
                <div class="payment-basket__status">
                    <div class="payment-basket__status__icon-block">
                        <a class="payment-basket__status__icon-block__link" href="cart">
                            <i class="fa fa-shopping-basket"></i>
                        </a>
                    </div>
                    <div class="payment-basket__status__basket">
                        <span class="payment-basket__status__basket-value-descr">Товаров в корзине</span>
                        <span class="payment-basket__status__basket-value">
                        @if(Session::has('productsInCart'))
                            {{count(Session::get('productsInCart'))}}
                        @else
                        0
                        @endif
                        </span>
                    </div>
                </div>
            </div>
            <div class="authorization-block">
            @if(Auth::guest())
                <a href="" class="authorization-block__link authorization-block__link__register">Регистрация</a>
                <a href="" class="authorization-block__link authorization-block__link__login">Войти</a>
            @else
                <a class="authorization-block__link">Добро пожаловать. Снова. </a>
                <a href="logout" class="authorization-block__link">Выйти</a>
            @endif
            </div>
        </div>
    </header>
    <div class="middle">
        <div class="sidebar">
            @if($categoriesMenu)
                <div class="sidebar-item">
                    <div class="sidebar-item__title">Категории</div>
                    <div class="sidebar-item__content">
                        <ul class="sidebar-category">
                        @foreach($categoriesMenu as $name=>$slug)
                            <li class="sidebar-category__item">
                                <a href="category/{{$slug}}" class="sidebar-category__item__link">{{$name}}</a>
                            </li>
                        @endforeach
                        </ul>
                    </div>
                </div>
            @endif
            @if($latestNews)
            <div class="sidebar-item">
                <div class="sidebar-item__title">Последние новости</div>
                <div class="sidebar-item__content">
                    <div class="sidebar-news">
                    @foreach($latestNews as $latestPieceOfNews)
                        <div class="sidebar-news__item">
                        @if($latestPieceOfNews->image)
                            <div class="sidebar-news__item__preview-news">
                                <img src="{{$latestPieceOfNews->image}}" alt="image-new" class="sidebar-new__item__preview-new__image">
                            </div>
                        @endif
                            <div class="sidebar-news__item__title-news">
                                <a href="news/{{$latestPieceOfNews->slug}}" class="sidebar-news__item__title-news__link">{{$latestPieceOfNews->name}}</a>
                            </div>
                        </div>
                    @endforeach
                    </div>
                </div>
            </div>
            @endif
        </div>
        @yield('maincontent')
    </div>
    <footer class="footer">
        <div class="footer__footer-content">
        @if($randomProduct)
            <div class="random-product-container">
                <div class="random-product-container__head">Случайный товар</div>
                <div class="random-product-container__content">
                    <div class="item-product">
                        <div class="item-product__title-product">
                            <a href="product/{{$randomProduct->slug}}" class="item-product__title-product__link">{{$randomProduct->name}}</a>
                        </div>
                        @if($randomProduct->image)
                            <div class="item-product__thumbnail">
                                <a href="product/{{$randomProduct->slug}}" class="item-product__thumbnail__link">
                                <img src="{{$randomProduct->image}}" alt="Preview-image" class="item-product__thumbnail__link__img"></a>
                            </div>
                        @endif
                        <div class="item-product__description">
                            <div class="item-product__description__products-price">
                                <span class="products-price">{{$randomProduct->price}} руб</span>
                            </div>
                            <div class="item-product__description__btn-block">
                                <a href="#" class="btn btn-blue btn-buy">Купить</a>
                                <input type="hidden" value="{{$randomProduct->id}}">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endif
            <div class="footer__footer-content__main-content">
                <p>
                    Интернет-магазин компьютерных игр ГЕЙМСМАРКЕТ - это
                    онлайн-магазин игр для геймеров, существующий на рынке уже 5 лет.
                    У нас широкий спектр лицензионных игр на компьютер, ключей для игр - для активации
                    и авторизации, а также карты оплаты (game-card, time-card, игровые валюты и т.д.),
                    коды продления и многое друго. Также здесь всегда можно узнать последние новости
                    из области онлайн-игр для PC. На сайте предоставлены самые востребованные и
                    актуальные товары MMORPG, приобретение которых здесь максимально удобно и,
                    что немаловажно, выгодно!
                </p>
            </div>
        </div>
        <div class="footer__social-block">
            <ul class="social-block__list bcg-social">
                <li class="social-block__list__item">
                    <a href="#" class="social-block__list__item__link">
                        <i class="fa fa-facebook"></i>
                    </a>
                </li>
                <li class="social-block__list__item">
                    <a href="#" class="social-block__list__item__link">
                        <i class="fa fa-twitter"></i>
                    </a>
                </li>
                <li class="social-block__list__item">
                    <a href="#" class="social-block__list__item__link">
                        <i class="fa fa-instagram"></i>
                    </a>
                </li>
            </ul>
        </div>
    </footer>
</div>
@if(Auth::guest())
<div class="register popup">
    <div class="panel panel-default">
        <div class="panel-heading">Register<i class="fa fa-btn fa-times close"></i></div>
        <div class="panel-body register__status"></div>
        <div class="panel-body">
            <form class="form-horizontal" role="form">
                {{--{{csrf_field()}}--}}
                <div class="form-group">
                    <label for="login" class="col-md-4 control-label">Login</label>
                    <div class="col-md-6">
                        <input id="login" type="text" class="form-control" name="login">
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-md-4 control-label">E-Mail Address</label>
                    <div class="col-md-6">
                        <input id="email" type="email" class="form-control" name="email">
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-md-4 control-label">Password</label>
                    <div class="col-md-6">
                        <input id="password" type="password" class="form-control" name="password">
                    </div>
                </div>
                <div class="form-group">
                    <label for="password-confirm" class="col-md-4 control-label">Confirm Password</label>
                    <div class="col-md-6">
                        <input id="password-confirm" type="password" class="form-control" name="password_confirmation">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-6 col-md-offset-4">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="isadmin"> Admin Privileges?
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-6 col-md-offset-4">
                        <button type="submit" class="btn btn-primary">
                            <i class="fa fa-btn fa-user"></i> Register
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<div class="login popup">
    <div class="panel panel-default">
        <div class="panel-heading">Login<i class="fa fa-btn fa-times close"></i></div>
        <div class="panel-body login__status"></div>
        <div class="panel-body">
            <form class="form-horizontal" role="form">
                {{--{{csrf_field()}}--}}
                <div class="form-group">
                    <label for="login" class="col-md-4 control-label">Login</label>
                    <div class="col-md-6">
                        <input id="login" type="text" class="form-control" name="login">
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-md-4 control-label">Password</label>
                    <div class="col-md-6">
                        <input id="password" type="password" class="form-control" name="password">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-6 col-md-offset-4">
                        <button type="submit" class="btn btn-primary">
                            <i class="fa fa-btn fa-sign-in"></i> Login
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
@endif
<script src="https://code.jquery.com/jquery-3.1.0.min.js" integrity="sha256-cCueBR6CsyA4/9szpPfrX3s49M9vUU5BgtiJj06wt/s=" crossorigin="anonymous"></script>
<script src="js/main.js"></script>
</body>
</html>