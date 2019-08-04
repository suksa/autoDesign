<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

if(defined('G5_THEME_PATH')) {
    require_once(G5_THEME_PATH.'/tail.php');
    return;
}

if (G5_IS_MOBILE) {
    include_once(G5_MOBILE_PATH.'/tail.php');
    return;
}
?>



<?php
if(G5_DEVICE_BUTTON_DISPLAY && !G5_IS_MOBILE) { ?>
<?php
}

if ($config['cf_analytics']) {
    echo $config['cf_analytics'];
}
?>

<!-- COUNSULT -->
<section id="consult">
    <div class="container">
        <div class="inner_650">
            <img src="/assets/img/main_banner_text.png" alt="속 시원한 진짜 맞춤형 비교견적서">
            <p>자동차 세일즈 토탈솔루션! <b>오토디자인</b></p>
            <?php include G5_PATH.'/quick_consult.php' ?>
            <iframe src="https://player.vimeo.com/video/351150804" width="400" height="255" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>
        </div>
    </div>
</section>
<!-- COUNSULT END -->

<!-- REVIEW -->
<section id="review">
    <?php echo latest('type5','review',6,15) ?>
</section>
<!-- REVIEW END -->

<!-- WEEKLY_BEST -->
<section id="weekly_best">
    <div class="container">
        <h2 class="main_title">오토디자인 <strong>주간인기차종</strong></h2>
        <?php echo latest('type6','week',7,15) ?>
    </div>
</section>
<!-- WEEKLY_BEST END -->

<!-- COOPERATION -->
<section id="cooperation">
    <div class="container">
        <h2><span>신차장기렌트사 21개 / 리스사 15개</span>국내최다 파트너쉽 협력사<b>어떤 차종이라도 괜찮습니다.</b></h2>
        <div class="rolling_list">
            <div class="slide_wrap slide_num1">
                <img src="/assets/img/cooper_logo/logo01.jpg" alt="로고1">
            </div>
            <div class="slide_wrap slide_num2">
                <img src="/assets/img/cooper_logo/logo02.jpg" alt="로고2">
            </div>
            <div class="slide_wrap slide_num3">
                <img src="/assets/img/cooper_logo/logo03.jpg" alt="로고3">
            </div>
            <div class="slide_wrap slide_num4">
                <img src="/assets/img/cooper_logo/logo04.jpg" alt="로고4">
            </div>
            <div class="slide_wrap slide_num1">
                <img src="/assets/img/cooper_logo/logo05.jpg" alt="로고5">
            </div>
            <div class="slide_wrap slide_num2">
                <img src="/assets/img/cooper_logo/logo06.jpg" alt="로고6">
            </div>
            <div class="slide_wrap slide_num3">
                <img src="/assets/img/cooper_logo/logo07.jpg" alt="로고7">
            </div>
            <div class="slide_wrap slide_num4">
                <img src="/assets/img/cooper_logo/logo08.jpg" alt="로고8">
            </div>
            <div class="slide_wrap slide_num1">
                <img src="/assets/img/cooper_logo/logo09.jpg" alt="로고9">
            </div>
            <div class="slide_wrap slide_num2">
                <img src="/assets/img/cooper_logo/logo10.jpg" alt="로고10">
            </div>
            <div class="slide_wrap slide_num3">
                <img src="/assets/img/cooper_logo/logo11.jpg" alt="로고11">
            </div>
            <div class="slide_wrap slide_num4">
                <img src="/assets/img/cooper_logo/logo12.jpg" alt="로고12">
            </div>
            <div class="slide_wrap slide_num1">
                <img src="/assets/img/cooper_logo/logo13.jpg" alt="로고13">
            </div>
            <div class="slide_wrap slide_num2">
                <img src="/assets/img/cooper_logo/logo14.jpg" alt="로고14">
            </div>
            <div class="slide_wrap slide_num3">
                <img src="/assets/img/cooper_logo/logo15.jpg" alt="로고15">
            </div>
            <div class="slide_wrap slide_num4">
                <img src="/assets/img/cooper_logo/logo16.jpg" alt="로고16">
            </div>
            <div class="slide_wrap slide_num1">
                <img src="/assets/img/cooper_logo/logo17.jpg" alt="로고17">
            </div>
            <div class="slide_wrap slide_num2">
                <img src="/assets/img/cooper_logo/logo18.jpg" alt="로고18">
            </div>
            <div class="slide_wrap slide_num3">
                <img src="/assets/img/cooper_logo/logo19.jpg" alt="로고19">
            </div>
        </div>
        <ul>
            <li>
                <img src="/assets/img/cooper2_logo/logo_01.jpg" alt="브랜드 로고">
            </li>
            <li>
                <img src="/assets/img/cooper2_logo/logo_02.jpg" alt="브랜드 로고">
            </li>
            <li>
                <img src="/assets/img/cooper2_logo/logo_03.jpg" alt="브랜드 로고">
            </li>
            <li>
                <img src="/assets/img/cooper2_logo/logo_04.jpg" alt="브랜드 로고">
            </li>
            <li>
                <img src="/assets/img/cooper2_logo/logo_05.jpg" alt="브랜드 로고">
            </li>
            <li>
                <img src="/assets/img/cooper2_logo/logo_06.jpg" alt="브랜드 로고">
            </li>
            <li>
                <img src="/assets/img/cooper2_logo/logo_07.jpg" alt="브랜드 로고">
            </li>
            <li>
                <img src="/assets/img/cooper2_logo/logo_08.jpg" alt="브랜드 로고">
            </li>
            <li>
                <img src="/assets/img/cooper2_logo/logo_09.jpg" alt="브랜드 로고">
            </li>
            <li>
                <img src="/assets/img/cooper2_logo/logo_10.jpg" alt="브랜드 로고">
            </li>
            <li>
                <img src="/assets/img/cooper2_logo/logo_11.jpg" alt="브랜드 로고">
            </li>
            <li>
                <img src="/assets/img/cooper2_logo/logo_12.jpg" alt="브랜드 로고">
            </li>
            <li>
                <img src="/assets/img/cooper2_logo/logo_13.jpg" alt="브랜드 로고">
            </li>
            <li>
                <img src="/assets/img/cooper2_logo/logo_14.jpg" alt="브랜드 로고">
            </li>
            <li>
                <img src="/assets/img/cooper2_logo/logo_15.jpg" alt="브랜드 로고">
            </li>
            <li>
                <img src="/assets/img/cooper2_logo/logo_16.jpg" alt="브랜드 로고">
            </li>
            <li>
                <img src="/assets/img/cooper2_logo/logo_17.jpg" alt="브랜드 로고">
            </li>
            <li>
                <img src="/assets/img/cooper2_logo/logo_18.jpg" alt="브랜드 로고">
            </li>
            <li>
                <img src="/assets/img/cooper2_logo/logo_19.jpg" alt="브랜드 로고">
            </li>
            <li>
                <img src="/assets/img/cooper2_logo/logo_20.jpg" alt="브랜드 로고">
            </li>
            <li>
                <img src="/assets/img/cooper2_logo/logo_21.jpg" alt="브랜드 로고">
            </li>
            <li>
                <img src="/assets/img/cooper2_logo/logo_22.jpg" alt="브랜드 로고">
            </li>
            <li>
                <img src="/assets/img/cooper2_logo/logo_23.jpg" alt="브랜드 로고">
            </li>
            <li>
                <img src="/assets/img/cooper2_logo/logo_24.jpg" alt="브랜드 로고">
            </li>
            <li>
                <img src="/assets/img/cooper2_logo/logo_25.jpg" alt="브랜드 로고">
            </li>
            <li>
                <img src="/assets/img/cooper2_logo/logo_26.jpg" alt="브랜드 로고">
            </li>
            <li>
                <img src="/assets/img/cooper2_logo/logo_27.jpg" alt="브랜드 로고">
            </li>
            <li>
                <img src="/assets/img/cooper2_logo/logo_28.jpg" alt="브랜드 로고">
            </li>
            <li>
                <img src="/assets/img/cooper2_logo/logo_29.jpg" alt="브랜드 로고">
            </li>
            <li>
                <img src="/assets/img/cooper2_logo/logo_30.jpg" alt="브랜드 로고">
            </li>
            <li>
                <img src="/assets/img/cooper2_logo/logo_31.jpg" alt="브랜드 로고">
            </li>
            <li>
                <img src="/assets/img/cooper2_logo/logo_32.jpg" alt="브랜드 로고">
            </li>
        </ul>
    </div>
</section>
<!-- COOPERATION END-->

<!-- FOOTER -->
<footer>
    <div class="container">
        <div class="foot_logo">
            <img src="/assets/img/foot_logo.png" alt="푸터 로고">
        </div>
        <div>
            <p>법인상호 : 오토디자인플러스 | 대표 : 박호성 | 사업장 소재지 : 서울특별시 강남구 헌릉로745길 25 A동 지층105호 | 대표번호 : 1800-4605 | 사업자등록번호 : 721-40-00501 | 통신판매업신고 : 2019-서울강남-01900 호 | 개인정보관련 문의 : auto-design@naver.com<br>Copyright &copy; AutoDesign., Ltd. All right reserved.</p>
        </div>
        <div>
            <a href="https://pf.kakao.com/_DpsId" target="_blank"></a>
            <a href="/emtimate.php"></a>
        </div>
    </div>
</footer>
<!-- FOOTER END-->


<!-- JavaScript Libraries -->
<script src="/assets/js/jquery.bxslider.min.js"></script> 
<script src="/assets/js/all_bottom_script.js"></script> 
<script src="/assets/js/swiper.js"></script>

<script src="/assets/js/script.js"></script>



<script type="text/javascript">
    var slideSubmenu = new SlideSubmenu($('#pm2'));

    function SlideSubmenu($this){
        $('#pm2').on('mouseenter', function(){
            $('#pm2').find('div').stop().css('height','auto').slideDown('fast');
        });

        $('.nav_btn').on('click', function(){
            $('#pm2').find('div').stop().css('height','auto').slideDown('fast');
        });

        $('.top_menu').on('mouseleave', function(){
            $('#pm2').find('div').stop().css('height','auto').slideUp('fast');
        });
    }




    jQuery(function($){
        $('.sa-tableHeader > tbody tr:first-child').each(function(){
            var theadTh = $(this).closest('table').find('thead th');
            $(this).children().each(function(idx){
                $(this).attr('data-cell-header', theadTh.eq(idx).text());
            });
        });
    });
    var slider = $('#banner .rolling_list').bxSlider({
        mode: 'horizontal'	
        ,auto: true			
        ,autoHover: false		
        ,controls: true	
        ,pager: false			
        ,autoControls: false  
        ,pause:5000   
        ,autoDelay:0 
        ,touchEnabled:true
        ,pagerCustom: '.pager_right'
    });


    jQuery(function($){
        $('.sa-tableHeader > tbody tr:first-child').each(function(){
            var theadTh = $(this).closest('table').find('thead th');
            $(this).children().each(function(idx){
                $(this).attr('data-cell-header', theadTh.eq(idx).text());
            });
        });
    });
    var slider = $('#cooperation .rolling_list').bxSlider({
        mode: 'horizontal'		
        ,moveSlides: 1		
        ,auto: true			
        ,autoHover: false		
        ,maxSlides: 6		
        ,slideWidth: 180
        ,controls: true		
        ,pager: false			
        ,autoControls: false     
        ,pause:1000  
        ,autoDelay:0  
        ,touchEnabled:true
        ,pagerCustom: '.pager_right'
    });



    $( window ).scroll( function() {
        if ( $( this ).scrollTop() > 300 ) {
            $( '#STATICMENU ul li.top_view_' ).fadeIn();
        } else {
            $( '#STATICMENU ul li.top_view_' ).fadeOut();
        }
    } );
    $( '#STATICMENU ul li.top_view_' ).click( function() {
        $( 'html, body' ).animate( { scrollTop : 0 }, 800 );
        return false;
    } );


</script>

<?php if(defined('_INDEX_')){ ?>
<script type="text/javascript">
    $(document).ready(function () {
        var activePos = $('.tabs-header .active').position();
        function changePos() {
            activePos = $('.tabs-header .active').position();
            $('.border').stop().css({
                left: activePos.left,
                width: $('.tabs-header .active').width()
            });
        }
        changePos();
        var tabHeight = $('.tab.active').height();

        function animateTabHeight() {
            tabHeight = $('.tab.active').height();
            $('.tabs-content').stop().css({
                height: 100 + '%'
            });
        }
        animateTabHeight();
        function changeTab() {
            var getTabId = $('.tabs-header .active a').attr('tab-id');
            $('.tab').stop().fadeOut(300, function () {
                $(this).removeClass('active');
            }).hide();

            $('.tab[tab-id=' + getTabId + ']').stop().fadeIn(300, function () {
                $(this).addClass('active');
                animateTabHeight();
            });
        }
        $('.tabs-header a').on('click', function (e) {
            e.preventDefault();
            var tabId = $(this).attr('tab-id');
            $('.tabs-header a').stop().parent().removeClass('active');
            $(this).stop().parent().addClass('active');
            changePos();
            tabCurrentItem = tabItems.filter('.active');
            $('.tab').stop().fadeOut(300, function () {
                $(this).removeClass('active');
            }).hide();
            $('.tab[tab-id="' + tabId + '"]').stop().fadeIn(300, function () {
                $(this).addClass('active');
                animateTabHeight();
            });
        });
        var tabItems = $('.tabs-header ul li');
        var tabCurrentItem = tabItems.filter('.active');
        $('#next').on('click', function (e) {
            e.preventDefault();
            var nextItem = tabCurrentItem.next();
            tabCurrentItem.removeClass('active');
            if (nextItem.length) {
                tabCurrentItem = nextItem.addClass('active');
            } else {
                tabCurrentItem = tabItems.first().addClass('active');
            }
            changePos();
            changeTab();
        });
        $('#prev').on('click', function (e) {
            e.preventDefault();
            var prevItem = tabCurrentItem.prev();
            tabCurrentItem.removeClass('active');
            if (prevItem.length) {
                tabCurrentItem = prevItem.addClass('active');
            } else {
                tabCurrentItem = tabItems.last().addClass('active');
            }
            changePos();
            changeTab();
        });
    });
</script>
<?php } ?>


<script type="text/javascript">
    var stmnLEFT = 10;
    var stmnGAP1 = 0; 
    var stmnGAP2 = 150; 
    var stmnBASE = 150; 
    var stmnActivateSpeed = 15;
    var stmnScrollSpeed = 10;
    var stmnTimer;  
    function RefreshStaticMenu() { 
        var stmnStartPoint, stmnEndPoint; 
        stmnStartPoint = parseInt(document.getElementById('STATICMENU').style.top, 10); 
        stmnEndPoint = Math.max(document.documentElement.scrollTop, document.body.scrollTop) + stmnGAP2; 
        if (stmnEndPoint < stmnGAP1) stmnEndPoint = stmnGAP1; 
        if (stmnStartPoint != stmnEndPoint) { 
            stmnScrollAmount = Math.ceil( Math.abs( stmnEndPoint - stmnStartPoint ) / 15 ); 
            document.getElementById('STATICMENU').style.top = parseInt(document.getElementById('STATICMENU').style.top, 10) + ( ( stmnEndPoint<stmnStartPoint ) ? -stmnScrollAmount : stmnScrollAmount ) + 'px'; 
            stmnRefreshTimer = stmnScrollSpeed; 
        }
        stmnTimer = setTimeout("RefreshStaticMenu();", stmnActivateSpeed); 
    } 
    function InitializeStaticMenu() {
        document.getElementById('STATICMENU').style.right = stmnLEFT + 'px'; 
        document.getElementById('STATICMENU').style.top = document.body.scrollTop + stmnBASE + 'px'; 
        RefreshStaticMenu();
    }
</script>

<script>
$(function() {
    // 폰트 리사이즈 쿠키있으면 실행
    font_resize("container", get_cookie("ck_font_resize_rmv_class"), get_cookie("ck_font_resize_add_class"));
});
</script>

<?php
include_once(G5_PATH."/tail.sub.php");
?>