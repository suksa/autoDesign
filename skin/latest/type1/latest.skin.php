<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

// add_stylesheet('css 구문', 출력순서); 숫자가 작을 수록 먼저 출력됨
add_stylesheet('<link rel="stylesheet" href="'.$latest_skin_url.'/style.css">', 0);
?>

<div tab-id="1" class="tab active">
    <?php for ($i=0; $i<count($list); $i++) {  ?>
    <a href="<?php echo $list[$i]['href'] ?>">
        <dl>
            <dd><?php echo $list[$i]['subject'] ?></dd>
            <dt><?php echo date("y-m-d", strtotime($list[$i]['wr_datetime'])) ?></dt>
        </dl>
    </a>
    <?php }  ?>
    <?php if (count($list) == 0) { ?>게시물이 없습니다.<?php }  ?>
</div>