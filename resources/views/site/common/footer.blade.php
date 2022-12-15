<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6">
                <div class="footer-logo-and-info">
                    <a href="" class="logo-wrapper"
                       title="{{ isset($information['ten-cong-ty']) ? $information['ten-cong-ty'] : '' }}">
                        <img src="{{ isset($information['logo']) ? $information['logo'] : '' }}"
                             alt="{{ isset($information['ten-cong-ty']) ? $information['ten-cong-ty'] : '' }}"
                             class="lazy img-responsive center-block"/>
                    </a>
                    <div style="color: #fff; font-size: 12px">
                        {!! isset($information['thong-tin-footer']) ? $information['thong-tin-footer'] : '' !!}
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6">
                <div class="footer-widget">
                    <h3>Thông tin công ty</h3>
                    <ul class="list-menu has-click">

                        <li><a href="" title="Trang chủ" rel="nofollow">Trang chủ</a></li>

                        <li><a href="gioi-thieu" title="Giới thiệu" rel="nofollow">Giới thiệu</a></li>

                        <li><a href="collections/all" title="Dịch vụ" rel="nofollow">Dịch vụ</a></li>

                        <li><a href="nguoi-giup-viec" title="Người Giúp Việc" rel="nofollow">Người Giúp Việc</a></li>

                        <li><a href="bang-bao-gia-giup-viec" title="Báo giá" rel="nofollow">Báo giá</a></li>

                        <li><a href="tin-tuc" title="Tin tức" rel="nofollow">Tin tức</a></li>

                    </ul>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="footer-widget">
                    <h3>Bản đồ</h3>
                     <div class="map" style="height: 200px; overflow: hidden">
                         {!!  isset($information['nhung-map']) ?  $information['nhung-map'] : ''  !!}
                     </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="footer-widget">
                    <h3>Fanpage</h3>
                    <div>
                        {!! isset($information['fanpage']) ? $information['fanpage'] : '' !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright clearfix">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 text-center">
                    <span>{!! isset($information['copyright']) ? $information['copyright'] : '' !!}</span>
                </div>
            </div>
        </div>
    </div>
</footer>
