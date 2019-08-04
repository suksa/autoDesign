<?php
include_once('./_common.php');

define('_INDEX_', true);
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

if(defined('G5_THEME_PATH')) {
    require_once(G5_THEME_PATH.'/index.php');
    return;
}

if (G5_IS_MOBILE) {
    include_once(G5_MOBILE_PATH.'/index.php');
    return;
}

include_once(G5_PATH.'/head.php');
?>

<!-- main slide -->
<section id="banner">
    <div class="rolling_list">
        <div class="slide_wrap slide_num1">
        </div>
        <div class="slide_wrap slide_num2">
        </div>
        <div class="slide_wrap slide_num3">
        </div>
        <div class="slide_wrap slide_num4">
        </div>
    </div>
</section>
<!-- //! main slide END -->


<!-- board -->
<section id="board">
    <div class="container">
        <div class="Board_01">
            <h3><span>오토디자인</span> 알림공개<a href="/bbs/board.php?bo_table=sale">더보기 ></a></h3>
            <div class="tabs">
                <div class="tabs-header">
                    <div class="border"></div>
                    <ul>
                        <li class="active"><a href="#tab-1" tab-id="1">할인정보</a></li>
                        <li><a href="#tab-2" tab-id="2">회사정보</a></li>
                    </ul>
                </div>
                <div class="tabs-content">
                <?php echo latest('type1','sale',6,16) ?>
                <?php echo latest('type2','company',6,16) ?>
                </div>
            </div>
        </div>
        <div class="Board_02">
            <?php echo latest('type3','lesson',2,16) ?>
        </div>
        <div class="Board_03">
            <?php echo latest('type4','estimate',7,16) ?>
        </div>
    </div>
</section>
<!-- board END -->

<?php
include_once(G5_PATH.'/tail.php');
?>
