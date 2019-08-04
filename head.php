<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

if(defined('G5_THEME_PATH')) {
    require_once(G5_THEME_PATH.'/head.php');
    return;
}

if (G5_IS_MOBILE) {
    include_once(G5_MOBILE_PATH.'/head.php');
    return;
}

include_once(G5_PATH.'/head.sub.php');
include_once(G5_LIB_PATH.'/latest.lib.php');
include_once(G5_LIB_PATH.'/outlogin.lib.php');
include_once(G5_LIB_PATH.'/poll.lib.php');
include_once(G5_LIB_PATH.'/visit.lib.php');
include_once(G5_LIB_PATH.'/connect.lib.php');
include_once(G5_LIB_PATH.'/popular.lib.php');
?>

<!-- header -->
<header>
    <div class="tel">
        <div class="nav_menu_inner">
        <button onclick="document.location.href='tel:1800-4605'">
            <a href="tel:1800-4605">1800-4605</a>
        </div>
    </div>
    <div class="nav_menu top_menu">
        <div class="nav_menu_inner">
            <div class="container_1">
                <div class="logo">
                    <h1><a href="/" target="_self" class="top_logo"></a></h1>	
                </div>
            </div>
            <div class="container_2">						
                <p>There is no substitable estimates<span>대체할 수 있는 견적서가 없다</span></p>
            </div>
            <div class="container_3">
                <a class="nav_btn" >
                    <span></span><span></span><span></span>
                </a>
                <div class="pm2_wrap">
                    <div id="pm2" class="basic">
                        <ul class="dep1">
                            <li>
                                <a href="/bbs/board.php?bo_table=sale" target="_self">알림공개</a>
                            </li>
                            <li>
                                <a href="/bbs/board.php?bo_table=lesson" target="_self">레슨공개</a>
                            </li>
                            <li>
                                <a href="/team.php" target="_self">요원공개</a>
                            </li>
                            <li>
                                <a href="/bbs/board.php?bo_table=review" target="_self">커뮤니티</a>
                            </li>
                            <li>
                                <a href="/emtimate.php" target="_self">상세견적</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- //header END -->
    
<!-- QUICK MENU -->
<div id="STATICMENU">
    <ul> 
        <li>
            <a href="https://pf.kakao.com/_DpsId" target="_blank">
                <img src="/assets/img/quick01.jpg" alt="카톡 상담하기">
            </a>
        </li>
        <li>
            <a href="/emtimate.php">
                <img src="/assets/img/quick02.jpg" alt="상세견적">
            </a>
        </li>
        <li>
            <a href="/bbs/board.php?bo_table=review">
                <img src="/assets/img/quick03.jpg" alt="고객후기">
            </a>
        </li>
        <li class="top_view_">
            <a href="#">
                <img src="/assets/img/quick04.jpg" alt="TOP">
            </a>
        </li>
    </ul>
</div>
<!-- QUICK MENU END-->
