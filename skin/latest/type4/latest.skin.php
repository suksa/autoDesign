<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

// add_stylesheet('css 구문', 출력순서); 숫자가 작을 수록 먼저 출력됨
add_stylesheet('<link rel="stylesheet" href="'.$latest_skin_url.'/style.css">', 0);
?>

<h3>실시간 상담신청</h3>
<div>
    <?php for ($i=0; $i<count($list); $i++) {  ?>
    <dl>
        <dt><?php echo date("y-m-d", strtotime($list[$i]['wr_datetime'])) ?></dt>
        <dd><?php echo preg_replace('/.(?!.)/u','*',$list[$i]['wr_name'])?></dd>
        <dt><?php echo $list[$i]['wr_1'] ?></dt>
        <dd>
            <?php if($list[$i]['wr_9'] == '') { ?>
            접수
            <?php }else{ ?>
            <?php echo $list[$i]['wr_9'] ?></dd>
            <?php } ?>
    </dl>
    <?php }  ?>
    <?php if (count($list) == 0) { ?>
    상담신청이 없습니다.
    <?php }  ?>
</div>