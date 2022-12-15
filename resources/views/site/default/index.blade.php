@extends('site.layout.site')

@section('title', isset($information['meta_title']) ? $information['meta_title'] : '')
@section('meta_description', isset($information['meta_description']) ? $information['meta_description'] : '')
@section('keywords', isset($information['meta_keyword']) ? $information['meta_keyword'] : '')

@section('content')
    <div class="evo-themes">
        <h1 class="d-none">{{ isset($information['ten-cong-ty']) ? $information['ten-cong-ty'] : ''}}</h1>
        <section class="awe-section-1">
            <div class="container">
                <div class="home-slider " style="margin:0 auto">
                    @foreach(\App\Entity\SubPost::showSubPost('slide', 4) as $id => $item)
                        <div class="item">
                            <a href="{{ isset($item['link']) ? $item['link'] : '' }}" class="clearfix"
                               title="{{ isset($item['title']) ? $item['title'] : '' }}">
                                <picture>
                                    <img src=" {{ isset($item['image']) ? $item['image'] : '' }}"
                                         alt=" {{ isset($item['title']) ? $item['title'] : '' }}"
                                         class="lazy img-responsive center-block"/>
                                </picture>
                            </a>
                        </div>
                    @endforeach
                </div>
            </div>
        </section>

        <style>
            .getfly-form {
                max-width: 450px !important;
                margin: 0 auto;
                padding: 25px !important;
                font-size: 12px;
                line-height: 30px !important;
                color: #777;
                border: 1px solid #eae6e6;
                font-family: sans-serif;
                background: #fff !important;
            }

            .getfly-margin {
                margin: 5px;
            }

            .getfly-button-bg {
                background: #9C00FF;
            }

            .getfly-button {
                cursor: pointer;
                border: none;
                background: #f58632;
                color: #FFF;
                padding: 10px 20px;
                font-size: 18px;
                outline: 0;
                font-family: sans-serif;
            }
        </style>

        <section class="awe-section-2">
            <div class="section_introduce">
                <div class="container">
                    <div class="row">
                        @foreach(\App\Entity\SubPost::showSubPost('blog-gioi-thieu', 1) as $id => $item)
                            <div class="col-lg-12 text-center ">
                                <h3>
                                    {{ isset($item['title']) ? $item['title'] : '' }}
                                </h3>
                                <p></p>
                                <img class="lazy img-responsive mx-auto d-block"
                                     src="{{ isset($item['image']) ? $item['image'] : '' }}"
                                     data-src="{{ isset($item['image']) ? $item['image'] : '' }}"/>
                                <a class="readmore"
                                   href="{{ isset($item['link']) ? $item['link'] : '' }}"
                                   title="Đọc tiếp"> Xem thêm</a>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
            <style>
                .readmore {
                    display: inline-block;
                    margin-top: 15px;
                    text-transform: uppercase;
                    font-weight: 700;
                    font-size: 13px;
                    color: #00a652;
                }

            </style>
        </section>


        <section class="awe-section-3">
            <div class="section_why">
                <div class="container">
                    <div class="row">
                        @foreach(\App\Entity\SubPost::showSubPost('tai-sao-chon-chung-toi', 1) as $id => $item)
                            <div class="col-lg-6 order-lg-last about-content">
                                <span>{{ isset($item['description']) ? $item['description'] : '' }}</span>
                                <h3>{{ isset($item['title']) ? $item['title'] : '' }}</h3>
                                <div>
                                    {!! isset($item['content']) ? $item['content'] : '' !!}
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <img class="lazy img-responsive mx-auto d-block"
                                     src="{{ isset($item['image']) ? $item['image'] : '' }}"
                                     data-src="{{ isset($item['image']) ? $item['image'] : '' }}"
                                     alt="{{ isset($item['description']) ? $item['description'] : '' }}"/>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </section>


        <section class="awe-section-4">
            <div class="section_service lazy"
                 data-src="{{ asset('site/100/302/581/themes/798703/assets/service_bg.png') }}">
                <div class="container">
                    <div class="section_service_title text-center">
                        <span></span>
                        <h3>{{ isset($information['title-block-dich-vu']) ? $information['title-block-dich-vu'] : '' }}</h3>
                        <p></p>
                    </div>
                    <div class="row">
                        @foreach(\App\Entity\Post::newPost('dich-vu', 6) as $id => $item)
                            <div id="col-1060651844" class=" col-lg-4 col-md-6 col-sm-12">
                                <div class="col-inner box-shadow-2 box-shadow-4-hover"
                                     style="background-color:rgb(255, 255, 255);">
                                    <div class="box has-hover   has-hover box-bounce box-text-bottom">
                                        <div class="box-image" style="border-radius:2%;">
                                            <a href="https://giupviecgiabao.com/giup-viec-nha-gia-dinh/">
                                                <div class="image-cover">
                                                    <img width="958" height="719" alt="" decoding="async"
                                                         data-srcset="{{ isset($item['image']) ? $item['image'] : '' }}"
                                                         data-src="{{ isset($item['image']) ? $item['image'] : '' }}"
                                                         data-sizes="(max-width: 958px) 100vw, 958px"
                                                         class="attachment-original size-original ls-is-cached lazyloaded"
                                                         src="{{ isset($item['image']) ? $item['image'] : '' }}"
                                                         sizes="(max-width: 958px) 100vw, 958px"
                                                         srcset="{{ isset($item['image']) ? $item['image'] : '' }}">
                                                </div>
                                            </a>
                                        </div>
                                        <div class="box-text text-center">
                                            <div class="box-text-inner">
                                                <div class="icon-box featured-box icon-box-center text-center"
                                                     style="margin:-52px 0px 0px 0px;">
                                                    <div class="icon-box-img" style="width: 60px">
                                                        <div class="icon">
                                                            <div class="icon-inner">
                                                                <img width="232" height="232" alt="" decoding="async"
                                                                     data-srcset="{{ asset('upload/service_img_'. $id .'.png') }}"
                                                                     data-src="{{ asset('upload/service_img_'. $id .'.png') }}"
                                                                     data-sizes="(max-width: 232px) 100vw, 232px"
                                                                     class="attachment-medium size-medium ls-is-cached lazyloaded"
                                                                     src="{{ asset('upload/service_img_'. $id .'.png') }}"
                                                                     sizes="(max-width: 232px) 100vw, 232px"
                                                                     srcset="{{ asset('upload/service_img_'. $id .'.png') }}">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="icon-box-text last-reset">
                                                        <div id="text-3418720892" class="text"><h3
                                                                    style="text-align: center;"><a
                                                                        href="{{ route('post', ['cate_slug' => 'dich-vu', 'post_slug' => $item['slug']]) }}">
                                                                    {{ isset($item['title']) ? $item['title'] : '' }}
                                                                </a>
                                                            </h3>
                                                            <p class="d-lg-block d-xl-block d-md-block"
                                                               style="text-align: justify;"><a
                                                                        href="{{ route('post', ['cate_slug' => 'dich-vu', 'post_slug' => $item['slug']]) }}">
                                                                    {{ \App\Ultility\Ultility::textLimit($item['description'], 40) }}
                                                                </a></p>
                                                            <style>#text-3418720892 {
                                                                    font-size: .75rem
                                                                }

                                                                @media (min-width: 850px) {
                                                                    #text-3418720892 {
                                                                        font-size: .9rem
                                                                    }
                                                                }</style>
                                                        </div>
                                                        <a href="{{ route('post', ['cate_slug' => 'dich-vu', 'post_slug' => $item['slug']]) }}"
                                                           target="_self" class="button primary"
                                                           style="border-radius:10px;">
                                                            <span>XEM CHI TIẾT</span>
                                                        </a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        @endforeach

                    </div>
                </div>
            </div>
        </section>

        @include('site.common.rule')

        <section class="awe-section-6">
            <div class="section_customer">
                <div class="container">
                    <div class="row">
                        @foreach(\App\Entity\SubPost::showSubPost('blog-chi-tiet', 4) as $id => $item)
                            <div class="col-lg-3 col-md-3 col-6">
                                <div class="customer-item">
                                    <img class="lazy"
                                         src="{{ isset($item['image']) ? $item['image'] : '' }}"
                                         data-src="{{ isset($item['image']) ? $item['image'] : '' }}"
                                         alt="{{ isset($item['title']) ? $item['title'] : '' }}"/>
                                    <span>{{ isset($item['description']) ? $item['description'] : '' }}</span>
                                    <p>{{ isset($item['title']) ? $item['title'] : '' }}</p>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </section>


        <section class="awe-section-7">
            <div class="section_partner">
                <div class="container">

                    <h3 class="section-title section-title-center">
                        <b>
                        </b>
                        <span class="section-title-main" style="color:rgb(4, 3, 56);">
                            VÀ HÀNG TRĂM DOANH NGHIỆP KHÁC ĐÃ TIN TƯỞNG GIÚP VIỆC PHÚC LINH
                        </span><b></b>
                    </h3>
                    <div class="img has-hover x md-x lg-x y md-y lg-y" id="image_656381854">
                        <div class="img-inner dark">
                            <img width="290" height="24" alt="" decoding="async"
                                 data-srcset="https://giupviecgiabao.com/wp-content/uploads/2022/09/border-star.png.webp 290w, https://giupviecgiabao.com/wp-content/uploads/2022/09/border-star-280x24.png.webp 280w"
                                 data-src="https://giupviecgiabao.com/wp-content/uploads/2022/09/border-star.png.webp"
                                 data-sizes="(max-width: 290px) 100vw, 290px"
                                 class="attachment-original size-original ls-is-cached lazyloaded"
                                 src="https://giupviecgiabao.com/wp-content/uploads/2022/09/border-star.png.webp"
                                 sizes="(max-width: 290px) 100vw, 290px"
                                 srcset="https://giupviecgiabao.com/wp-content/uploads/2022/09/border-star.png.webp 290w, https://giupviecgiabao.com/wp-content/uploads/2022/09/border-star-280x24.png.webp 280w">
                            <noscript><img width="290" height="24" alt="" decoding="async"
                                           data-srcset="https://giupviecgiabao.com/wp-content/uploads/2022/09/border-star.png.webp 290w, https://giupviecgiabao.com/wp-content/uploads/2022/09/border-star-280x24.png.webp 280w"
                                           data-src="https://giupviecgiabao.com/wp-content/uploads/2022/09/border-star.png.webp"
                                           data-sizes="(max-width: 290px) 100vw, 290px"
                                           class="attachment-original size-original lazyload"
                                           src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="/>
                                <noscript><img width="290" height="24" alt="" decoding="async"
                                               data-srcset="https://giupviecgiabao.com/wp-content/uploads/2022/09/border-star.png.webp 290w, https://giupviecgiabao.com/wp-content/uploads/2022/09/border-star-280x24.png.webp 280w"
                                               data-src="https://giupviecgiabao.com/wp-content/uploads/2022/09/border-star.png.webp"
                                               data-sizes="(max-width: 290px) 100vw, 290px"
                                               class="attachment-original size-original lazyload"
                                               src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="/>
                                    <noscript><img width="290" height="24"
                                                   src="https://giupviecgiabao.com/wp-content/uploads/2022/09/border-star.png.webp"
                                                   class="attachment-original size-original" alt="" decoding="async"
                                                   srcset="https://giupviecgiabao.com/wp-content/uploads/2022/09/border-star.png.webp 290w, https://giupviecgiabao.com/wp-content/uploads/2022/09/border-star-280x24.png.webp 280w"
                                                   sizes="(max-width: 290px) 100vw, 290px"/></noscript>
                        </div>
                        <style>
                            #image_656381854 {
                                width: 76%;
                                margin: auto;
                                margin-bottom: 20px
                            }

                            @media (min-width: 550px) {
                                #image_656381854 {
                                    width: 33%;
                                }
                            }</style>
                    </div>
                    <style>
                        .section-title {
                            position: relative;
                            -js-display: flex;
                            display: -webkit-box;
                            display: -ms-flexbox;
                            display: flex;
                            -webkit-box-orient: horizontal;
                            -webkit-box-direction: normal;
                            -ms-flex-flow: row wrap;
                            flex-flow: row wrap;
                            -webkit-box-align: center;
                            -ms-flex-align: center;
                            align-items: center;
                            -webkit-box-pack: justify;
                            -ms-flex-pack: justify;
                            justify-content: space-between;
                            width: 100%;
                        }
                    </style>
                    <div class="evo-brands">
                        @foreach(\App\Entity\SubPost::showSubPost('doi-tac', 4) as $id => $item)
                            <a class="brands-item" href="#" title="{{ isset($item['title']) ? $item['title'] : '' }}">
                                <img class="lazy img-responsive mx-auto d-block"
                                     src="{{ isset($item['image']) ? $item['image'] : '' }}"
                                     data-src="{{ isset($item['image']) ? $item['image'] : '' }}"
                                     alt="{{ isset($item['title']) ? $item['title'] : '' }}"/>
                            </a>
                        @endforeach
                    </div>
                </div>
            </div>
        </section>

        <h4 style="text-align:center; margin-top:20px;">
            Vui lòng để lại thông tin đăng ký, chúng tôi sẽ liên hệ với bạn
        </h4>
        <div id="getfly-optin-form">
            <form method="post" action="" onSubmit="return contact(this);">
                {!! csrf_field() !!}
                <div id="getfly-form" class="getfly-form">
                    <div class="getfly-row">
                        <label class="getfly-label getfly-label-c">Mã KH + Tên KH + Công việc<span
                                    class="getfly-span getfly-span-c">*</span></label>
                        <input type="text"
                               class="getfly-input getfly-margin"
                               name="name"
                               placeholder="Họ và tên *" required>
                    </div>
                    <div class="getfly-row">
                        <label class="getfly-label getfly-label-c">Điện thoại<span
                                    class="getfly-span getfly-span-c">*</span></label>
                        <input type="text"
                               name="phone"
                               id="phone"
                               class="getfly-input phone getfly-margin"
                               placeholder="SĐT: 0123456789 *" required>
                    </div>
                    <div class="getfly-row">
                        <label class="getfly-label getfly-label-c">Địa chỉ<span
                                    class="getfly-span getfly-span-c">*</span></label>
                        <input type="text"
                               class="getfly-input getfly-margin"
                               name="address"
                               placeholder="Địa chỉ *" required>
                    </div>
                    <input type="hidden" name="type" value="ajax">
                    <div class=" getfly-btn">
                        <button class="getfly-button getfly-button-bg getfly-margin">
                            Đăng ký
                        </button>
                    </div>
                </div>
            </form>
        </div>


        <section class="awe-section-8">


            <div class="section_blogs">
                <div class="container">
                    <div class="section_service_title text-center">
                        <span>Tin tức</span>
                        <h3><a href="tin-tuc" title="Kiến thức chọn người giúp việc">Kiến thức chọn người giúp việc</a>
                        </h3>
                        <p></p>
                    </div>
                    <div class="row">
                        @foreach(\App\Entity\Post::newPost('tin-tuc', 3) as $id => $item)
                            <div class="col-lg-4 col-md-4">
                                <div class="evo-item-blogs">
                                    <div class="evo-article-image">
                                        <a href="{{ route('post', ['cate_slug' => 'tin-tuc', 'post_slug' => $item['slug']]) }}"
                                           title="{{ isset($item['title']) ? $item['title'] : '' }}">

                                            <img src="{{ isset($item['image']) ? $item['image'] : '' }}"
                                                 alt="{{ isset($item['title']) ? $item['title'] : '' }}"
                                                 class="lazy img-responsive mx-auto d-block loaded"/>

                                        </a>
                                    </div>
                                    <h3 class="line-clamp">
                                        <a href="{{ route('post', ['cate_slug' => 'tin-tuc', 'post_slug' => $item['slug']]) }}"
                                           title="{{ isset($item['title']) ? $item['title'] : '' }}">
                                            {{ isset($item['title']) ? $item['title'] : '' }}
                                        </a>
                                    </h3>
                                    <p>
                                        {{ \App\Ultility\Ultility::textLimit($item['description'], 20) }}
                                    </p>
                                    <a class="readmore"
                                       href="{{ route('post', ['cate_slug' => 'tin-tuc', 'post_slug' => $item['slug']]) }}"
                                       title="Đọc tiếp">
                                        Đọc tiếp
                                    </a>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </section>


    </div>


@endsection



