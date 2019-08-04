<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가
include_once(G5_LIB_PATH.'/thumbnail.lib.php');

// add_stylesheet('css 구문', 출력순서); 숫자가 작을 수록 먼저 출력됨
add_stylesheet('<link rel="stylesheet" href="'.$latest_skin_url.'/style.css">', 0);
$thumb_width = 348;
$thumb_height = 220;
?>

<div class="container">
    <h2 class="main_title">오토디자인 <strong>고객만족후기</strong></h2>
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
            <figure>
                <a href="<?php echo $list[$i]['href'] ?>" class="oneline"><?php echo $img_content; ?></a>
                <figcaption>
                    <p>
                       <a href="<?php echo $list[$i]['href'] ?>" class="oneline">
                        <?php echo $list[$i]['wr_subject'] ?>
                        </a>
                    </p>
                    <dl>
                        <dt>계약일</dt>
                        <dd><?php echo $list[$i]['wr_1'] ?></dd>
                    </dl>
                    <dl>
                        <dt>담당자</dt>
                        <dd><?php echo $list[$i]['wr_2'] ?></dd>
                    </dl>
                    <dl>
                        <dt>서류수령</dt>
                        <dd><?php echo $list[$i]['wr_3'] ?></dd>
                    </dl>
                    <dl>
                        <dt>계약차량</dt>
                        <dd><?php echo $list[$i]['wr_4'] ?></dd>
                    </dl>
                </figcaption>
            </figure>
        </li>
        <?php }  ?>
        <?php if (count($list) == 0) {?><li class="empty_li">게시물이 없습니다.</li><?php } ?>
    </ul>
    <a href="<?php echo G5_BBS_URL ?>/board.php?bo_table=<?php echo $bo_table ?>"><span>더보기</span></a>
</div>