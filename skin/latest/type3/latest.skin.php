<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가
include_once(G5_LIB_PATH.'/thumbnail.lib.php');

// add_stylesheet('css 구문', 출력순서); 숫자가 작을 수록 먼저 출력됨
add_stylesheet('<link rel="stylesheet" href="'.$latest_skin_url.'/style.css">', 0);
$thumb_width = 160;
$thumb_height = 110;
?>
<h3><span>오토디자인</span> 레슨공개<a href="<?php echo G5_BBS_URL ?>/board.php?bo_table=<?php echo $bo_table ?>">더보기 ></a></h3>
<ul>
    <?php
    for ($i=0; $i<count($list); $i++) {
    $thumb = get_list_thumbnail($bo_table, $list[$i]['wr_id'], $thumb_width, $thumb_height, false, true);

    if($thumb['src']) {
        $img = $thumb['src'];
    } else {
        $img = G5_URL.'/assets/img/noimg.jpg';
    }
    $img_content = '<img src="'.$img.'" alt="'.$thumb['alt'].'" width="'.$thumb_width.'" height="'.$thumb_height.'">';
    ?>
    <li>
        <?php echo $img_content; ?>
        <div style="float:left">
            <a href="<?php echo $list[$i]['href'] ?>"><p class="tit"><?php echo $list[$i]['subject'] ?></p></a>
            <p class="date" style="display:block"><?php echo $list[$i]['datetime'] ?></p>
            <p class="view" style="display:block">조회수 : <?php echo $list[$i]['wr_hit'] ?></p>
        </div>
    </li>
    <?php }  ?>
    <?php if (count($list) == 0) {?><li class="empty_li">게시물이 없습니다.</li><?php } ?>
</ul>
