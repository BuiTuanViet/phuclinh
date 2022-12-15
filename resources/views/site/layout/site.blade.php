<!DOCTYPE html>
<html lang="vi">
<head>

    <meta charset="UTF-8"/>
    <meta name="google-site-verification" content="aavyAd9XwRR2Q2oKqEW3NS4Hv9S5p69UcSb7nN5jddA"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>@yield('title')</title>
    <meta name="description"
          content="@yield('meta_description')">
    <meta name="keywords" content="@yield('keywords')">
    <link rel="canonical" href="">

    <meta name='revisit-after' content='1 days'/>
    <meta name="robots" content="noodp,index,follow"/>
    <meta name="theme-color" content="#00a652"/>

    <link rel="icon" href="{{ asset('site/100/302/581/themes/798703/assets/favicon.png') }}" type="image/x-icon"/>
    <link rel="apple-touch-icon" href="{{ asset('site/100/302/581/themes/798703/assets/favicon.png') }}">
    <meta property="og:type" content="website">
    <meta property="og:title" content="@yield('title')">
    <meta property="og:image" content="@yield('meta_image')">
    <meta property="og:image:secure_url" content="https:100/302/581/themes/798703/assets/logo.png">
    <meta property="og:description" content="@yield('meta_description')">
    <meta property="og:url" content="">
    <meta property="og:site_name" content="@yield('keywords')">
    <link rel="stylesheet" href="{{ asset('site/bootstrap/code/css/bootstrap.min.css') }}">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>

    <link href="{{ asset('site/100/302/581/themes/798703/assets/evo-main.scss.css') }}" rel="stylesheet"
          type="text/css"/>
    <link href="{{ asset('site/100/302/581/themes/798703/assets/evo-article.scss.css') }}" rel="stylesheet"
          type="text/css"/>
    <link href="{{ asset('site/100/302/581/themes/798703/assets/evo-collections.scss.css') }}" rel="stylesheet"
          type="text/css"/>
    <link href="{{ asset('site/100/302/581/themes/798703/assets/evo-blogs.scss.css') }}" rel="stylesheet"
          type="text/css"/>
    <link href="{{ asset('site/100/302/581/themes/798703/assets/evo-contacts.scss.css') }}" rel="stylesheet"
          type="text/css"/>
    <link href="{{ asset('site/100/302/581/themes/798703/assets/evo-products.scss.css') }}" rel="stylesheet"
          type="text/css"/>
    <link href="{{ asset('site/100/302/581/themes/798703/assets/evo-accounts.scss.css') }}" rel="stylesheet"
          type="text/css"/>
    <link href="{{ asset('site/100/302/581/themes/798703/assets/evo-index.scss.css') }}" rel="stylesheet"
          type="text/css"/>


    <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-ajaxchimp/1.3.0/jquery.ajaxchimp.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.lazyload/1.9.1/jquery.lazyload.min.js"></script>
    <script src="{{ asset('site/assets/themes_support/placeholderTypewriter.js') }}"></script>
    <!--script src="dist/js/stats.min.js"></script-->

</head>
<body class="index">
@include('site.common.search')
@include('site.common.header')
@yield('content')
@include('site.common.footer')

<style>
    .mobile-hotline {
        display: none
    }

    .hotline {
        position: fixed;
        left: 10px;
        bottom: 10px;
        z-index: 9000;
        display: block;
        background: #00a652;
        color: white;
        padding-top: 5px;
        padding-bottom: 5px;
        padding-left: 12px;
        padding-right: 12px;
        border-radius: 99px;
    }

    .hotline .hotline-number {
        font-size: 20px;
        color: # #FFFFFF;
        font-weight: bold
    }

    @media (max-width: 767px) {

        .hotline {

            display: none;

        }

        .mobile-hotline {
            display: block;
            bottom: 0;
            width: 100%;
            background: rgba(0, 0, 0, 0.5);
            height: 60px;
            position: fixed;
            z-index: 9999999
        }

        .mobile-hotline .mobile-hotline-left {
            width: 45%;
            float: left;
            text-align: center;
            background: #00a652;
            margin-left: 10px;
            margin-right: 5px;
            margin-top: 7px;
            height: 45px;
            border-radius: 4px
        }

        .mobile-hotline .mobile-hotline-left a {
            color: white;
            line-height: 46px;
            font-size: 16px;
            font-weight: bold
        }

        .mobile-hotline .mobile-hotline-right {
            width: 45%;
            float: right;
            text-align: center;
            background: #ffffff;
            margin-left: 5px;
            margin-right: 10px;
            margin-top: 7px;
            height: 45px;
            border-radius: 4px
        }

        .mobile-hotline .mobile-hotline-right a {
            color: purple;
            line-height: 46px;
            font-size: 16px;
            font-weight: bold
        }
    }
</style>
<style>
    #col-1060651844 > .col-inner {
        border-radius: 24px;
    }
</style>
<style>
    .icon .icon-inner {
        background: #00a652;
        padding: 10px;
        border-radius: 50%;
    }

    .text h3 {
        line-height: 1.3;
        margin-top: 0.1em;
        margin-bottom: 0.1em;
        font-weight: 700;
        font-size: 1.25em;
    }

    .box-shadow, .row-box-shadow-2 .col-inner, .row-box-shadow-2-hover .col-inner:hover, .box-shadow-2, .box-shadow-2-hover:hover {
        -webkit-box-shadow: 0 3px 6px -4px rgb(0 0 0 / 16%), 0 3px 6px rgb(0 0 0 / 23%);
        box-shadow: 0 3px 6px -4px rgb(0 0 0 / 16%), 0 3px 6px rgb(0 0 0 / 23%);
    }

    .box-shadow-4-hover:hover {
        -webkit-box-shadow: 0 14px 28px rgb(0 0 0 / 25%), 0 10px 10px rgb(0 0 0 / 10%);
        box-shadow: 0 14px 28px rgb(0 0 0 / 25%), 0 10px 10px rgb(0 0 0 / 10%);
    }

    .image-cover {
        position: relative;
        height: auto;
        overflow: hidden;
        padding-top: 100%;
        background-position: 50% 50%;
        background-size: cover;
    }

    .image-cover img {
        right: 0;
        width: 100%;
        height: 100%;
        bottom: 0;
        left: 0;
        top: 0;
        position: absolute;
        -o-object-position: 50% 50%;
        object-position: 50% 50%;
        -o-object-fit: cover;
        object-fit: cover;
        font-family: "object-fit: cover;";
    }

    .section_service {
        background-color: rgb(242, 244, 245);
    }

    #col-1060651844 {
        margin-bottom: 30px
    }

    #col-1060651844 > .col-inner {
        border-radius: 24px;
    }

    .col-inner {
        position: relative;
        margin-left: auto;
        margin-right: auto;
        width: 100%;
        background-position: 50% 50%;
        background-size: cover;
        background-repeat: no-repeat;
        -webkit-box-flex: 1;
        -ms-flex: 1 0 auto;
        flex: 1 0 auto;
    }

    .box {
        transition: opacity .3s, transform .3s, background-color .3s, -webkit-transform .3s;
    }

    .box {
        width: 100%;
        position: relative;
        margin: 0 auto;
    }

    .box-image {
        position: relative;
        height: 200px;
        margin: 0 auto;
        overflow: hidden;
    }

    .box-image[style*=-radius] {
        -webkit-mask-image: -webkit-radial-gradient(#fff, #000);
    }

    .box-bounce .box-text {
        padding: 15px 15px 20px;
        z-index: 1;
    }

    .box-shadow-4-hover {
        transition: transform .3s, box-shadow .3s, background-color .3s, color .3s, opacity .3s, -webkit-transform .3s, -webkit-box-shadow .3s;
    }

    .box-text {
        padding-top: 0.7em;
        padding-bottom: 1.4em;
        position: relative;
        width: 100%;
        font-size: .9em;
    }

    .text-center {
        text-align: center;
    }

    .icon-box-center .icon-box-img {
        margin: 0 auto 1em;
    }

    .icon-box .icon-box-img {
        margin-bottom: 1em;
        max-width: 100%;
        position: relative;
    }

    .box-text p {
        margin-top: 0.1em;
        margin-bottom: 0.1em;
    }

    @media (min-width: 850px) {
        #text-3418720892 {
            font-size: .9rem;
        }
    }
</style>


<div class="giuseart-nav">
    <ul>
        <li><a href="tel:{{ isset($information['hotline']) ? $information['hotline'] :''}}" rel="nofollow"
               target="_blank">
                <i class="ticon-heart"></i>Hotline</a></li>
        <li>
            <a href="https://zalo.me/{{ isset($information['hotline']) ? $information['hotline'] :''}}" rel="nofollow"
               target="_blank">
                <i class="ticon-zalo-circle2"></i>
                Chat Zalo</a>
        </li>
        <li class="phone-mobile" style="display: none">
            <a href="tel:0941762759" rel="nofollow" class="button">
            <span class="phone_animation animation-shadow">
                <i class="icon-phone-w" aria-hidden="true"></i>
            </span>
                <span class="btn_phone_txt">Hotline 2</span>
            </a></li>
        <li style="display: none"><a href="https://zalo.me/941762759/" rel="nofollow" target="_blank"><i
                        class="ticon-messenger"></i>Chat Zalo
                2</a></li>
        <li style="display: none"><a href="https://m.me/100085302858800" class="chat_animation">
                <i class="ticon-chat-sms" aria-hidden="true" title="Chat Facebook"></i>
                Chat Facebook</a></li>

        <li class="to-top-pc">
            <div class="back-to-top text-center" title="Lên đầu trang">
                <a href="#" rel="nofollow">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" style="width: 40px;">
                        <!--! Font Awesome Pro 6.2.1 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. -->
                        <path d="M233.4 105.4c12.5-12.5 32.8-12.5 45.3 0l192 192c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L256 173.3 86.6 342.6c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3l192-192z"/>
                    </svg>
                </a>
            </div>
        </li>
    </ul>
</div>

<style>
    .giuseart-nav {
        position: fixed;
        right: 13px;
        background: #fff;
        border-radius: 5px;
        width: auto;
        z-index: 150;
        bottom: 50px;
        padding: 10px 0;
        border: 1px solid #f2f2f2;
    }

    .giuseart-nav ul {
        list-style: none;
        padding: 0;
        margin: 0;
    }

    .giuseart-nav ul li {
        list-style: none !important;
        margin-bottom: 0.6em;
    }

    .giuseart-nav ul > li a {
        border: none;
        padding: 3px;
        display: block;
        border-radius: 5px;
        text-align: center;
        font-size: 10px;
        line-height: 15px;
        color: #515151;
        font-weight: 700;
        max-width: 72.19px;
        max-height: 54px;
        text-decoration: none;
    }

    .giuseart-nav ul > li a i.ticon-heart {
        background: url({{ asset('upload/icon-call.png') }}) no-repeat;
        background-size: contain;
        width: 36px;
        height: 36px;
        display: block;
    }
    .giuseart-nav ul > li a i.ticon-zalo-circle2 {
        background: url({{ asset('upload/icon-zalo.png') }}) no-repeat;
        background-size: contain;
        width: 36px;
        height: 36px;
        display: block;
    }

    .giuseart-nav ul > li a i {
        width: 33px;
        height: 33px;
        display: block;
        margin: auto;
    }
</style>

{{--<a href="tel:{{ isset($information['hotline']) ? $information['hotline'] :''}}">--}}
{{--    <div class="hotline">--}}
{{--        <span class="before-hotline">Hotline:</span>--}}
{{--        <span class="hotline-number">{{ isset($information['hotline']) ? $information['hotline'] :''}}</span>--}}
{{--    </div>--}}
{{--</a>--}}
{{--<div class="mobile-hotline">--}}
{{--    <div class="mobile-hotline-right">--}}
{{--        <a href="https://zalo.me/{{ isset($information['hotline']) ? $information['hotline'] :''}}" target="blank">Chat--}}
{{--            Zalo</a>--}}
{{--    </div>--}}
{{--    <div class="mobile-hotline-right">--}}
{{--        <a href="tel:{{ isset($information['hotline']) ? $information['hotline'] :''}}"--}}
{{--           target="blank">Gọi điện ngay</a>--}}
{{--    </div>--}}
{{--</div>--}}

<div class="backdrop__body-backdrop___1rvky"></div>
<script src="{{ asset('site/100/302/581/themes/798703/assets/evo-index-js.js') }}" type="text/javascript"></script>


<script src="{{ asset('site/100/302/581/themes/798703/assets/main.js') }}" type="text/javascript"></script>


<script>
    $("document").ready(function ($) {
        var nav = $('.evo-main-nav');

        $(window).scroll(function () {
            if ($(this).scrollTop() > 125) {
                nav.addClass("f-nav");
            } else {
                nav.removeClass("f-nav");
            }
        });
    });
</script>
<script type="text/javascript">
    function subcribeEmailSubmit(e) {
        var email = $(e).find('.emailSubmit').val();
        var token = $(e).find('input[name=_token]').val();

        $.ajax({
            type: "POST",
            url: '{{ route('subcribe_email') }}',
            data: {
                email: email,
                _token: token
            },
            success: function (data) {
                var obj = jQuery.parseJSON(data);

                alert(obj.message);
            }
        });
        return false;
    }

    function addToOrder(e) {
        var data = $('#add-to-cart-form').serialize();
        console.log(data);
        $.ajax({
            type: "POST",
            url: '{{ route('addToCart') }}',
            data: data,
            success: function (result) {
                // var obj = jQuery.parseJSON( result);
                //
                // var num = +$("#countOrder").text() + 1;
                //
                // $("#countOrder").text(num);
                //
                // $('#cart-notification').addClass('active');
                // $('.cart-notification-product__image img').attr('src', obj.orderItems[0].image);
                // $('.cart-notification-product__name').text(obj.orderItems[0].title);
                // $('.cart-notification-product__name').text(obj.orderItems[0].title);
                // $('.cart-notification-product__size').text(obj.size);
                alert('Đặt hàng thành công');
                location.reload();
            },
            error: function (error) {
                alert('Lỗi đặt hàng');
            }

        });

        return false;
    }

    function contact(e) {
        var $btn = $(e).find('button').text('Đang tải ...');
        var data = $(e).serialize();

        $.ajax({
            type: "POST",
            url: '{{ route('sub_contact') }} ',
            data: data,
            success: function (obj) {
                // gửi thành công
                if (obj.status == 200) {
                    alert(obj.message);
                    $btn.text('Đăng ký ngay');

                    return;
                }

                // gửi thất bại
                if (obj.status == 500) {
                    alert(obj.message);
                    $btn.text('Đăng ký ngay');

                    return;
                }
            },
            error: function (error) {
                //alert('Lỗi gì đó đã xảy ra!')
            }
        });
        return false;
    }
</script>
<style>
    .f-nav {
        z-index: 99999;
        position: fixed !important;
        left: 0;
        top: 0;
        margin-top: 0px;
        width: 100%;
        margin: 0 auto;
        background: #fff
    }
</style>

</body>
</html>
<style>
    div#getfly-optin-form-iframe-1620440826653 iframe {
        height: 250px !important;
    }
</style>