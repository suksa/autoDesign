<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가
include_once(G5_LIB_PATH.'/thumbnail.lib.php');

// add_stylesheet('css 구문', 출력순서); 숫자가 작을 수록 먼저 출력됨
add_stylesheet('<link rel="stylesheet" href="'.$latest_skin_url.'/style.css">', 0);
$thumb_width = 348;
$thumb_height = 270;
?>

<input type="hidden" name="wr_option" value="html1" id="week_option">
<input type="hidden" name="bo_table" value="estimate" id="week_table">
<input type="hidden" name="wr_subject" value="주간인기차종 견적문의" id="week_subject">
<ul>
    <?php
    for ($i=0; $i<3; $i++) {
    $thumb = get_list_thumbnail($bo_table, $list[$i]['wr_id'], $thumb_width, $thumb_height, false, true);

    if($thumb['src']) {
        $img = $thumb['src'];
    } else {
        $img = G5_URL.'/assets/img/noimg.jpg';
    }
    $img_content = '<img src="'.$img.'" alt="'.$thumb['alt'].'" width="'.$thumb_width.'" height="'.$thumb_height.'">';
        
    if($i == 0) {
        $num = 'First';
    }else if($i == 1) {
        $num = 'Second';
    }else if($i == 2) {
        $num = 'Third';
    }
    ?>
    <li class="Top <?=$num?>">
        <a href="#<?=$num?>" id="login_pop">
            <figure>
                <?php echo $img_content; ?>
                <img src="/assets/img/main_best0<?=$i+1?>.png" alt="주간인기차종 베스트1">
                <img src="/assets/img/crown.png" alt="">
                <figcaption>
                    <p class="model_name"><?=$list[$i]['wr_1']?><span><?=$list[$i]['wr_3']?></span></p>
                    <p class="fee">월렌탈료 <span><?=$list[$i]['wr_5']?></span>원</p>
                </figcaption>
            </figure>
        </a>
        <a href="#x" class="overlay" id="<?=$num?>"></a>
        <div class="popup <?=$num?>">
            <div class="cont">
                <div>
                    <div>
                        <?php echo $img_content; ?>
                    </div>
                    <div>
                        <h5><span><?=$list[$i]['wr_2']?></span><?=$list[$i]['wr_1']?></h5>
                        <dl>
                            <dt>신차가격</dt>
                            <dd><?=$list[$i]['wr_4']?>원</dd>
                        </dl>
                        <dl>
                            <dt>월납입료</dt>
                            <dd><?=$list[$i]['wr_5']?>원</dd>
                        </dl>
                        <p class="layer_if">세부조건</p>
                        <div style="padding:20px;height:208px;overflow:auto;white-space: pre-line;"><?=$list[$i]['wr_content']?></div>
                    </div>
                </div>
                <div>
                    <p>이벤트 특가<br />견적문의</p>
                    <form action="#">
                        <fieldset>
                            <label for="name">이름</label>
                            <input type="text" name id="week_name_<?=$i?>">
                            <label for="phone">연락처</label>
                            <input type="text" name id="week_phone_<?=$i?>">
                            <label for="model">차종</label>
                            <input type="text" name id="week_car_<?=$i?>">										
                            <input type="button" value="견적문의" onclick="week_send(<?=$i?>,'<?=$list[$i]['wr_1']?>','<?=$list[$i]['wr_5']?>')">
                        </fieldset>
                    </form>		
                    <div class="privacy">										
                        <input type="checkbox" value="None" name id="week_privacy_<?=$i?>" checked/>
                        <label for="privacy" class="checkbox"><span>개인정보취급방침 동의</span><a href="#">[상세보기]</a></label>
                    </div>						
                </div>
            </div>
            <a class="close" href="#close"></a>
        </div>
    </li>
    <?php }  ?>
    
    
    <?php
    $thumb_width = 279;
    $thumb_height = 203;
    
    for ($i=3; $i<7; $i++) {
    $thumb = get_list_thumbnail($bo_table, $list[$i]['wr_id'], $thumb_width, $thumb_height, false, true);

    if($thumb['src']) {
        $img = $thumb['src'];
    } else {
        $img = G5_URL.'/assets/img/noimg.jpg';
    }
    $img_content = '<img src="'.$img.'" alt="'.$thumb['alt'].'" width="'.$thumb_width.'" height="'.$thumb_height.'">';
        
    if($i == 3) {
        $num = 'Fourth';
    }else if($i == 4) {
        $num = 'Fifth';
    }else if($i == 5) {
        $num = 'Sixth';
    }else if($i == 6) {
        $num = 'Seventh';
    }
    ?>
    <li class="Bottom <?=$num?>">
        <a href="#<?=$num?>" id="login_pop">
            <figure>
                <?php echo $img_content; ?>
                <img src="/assets/img/main_best0<?=$i+1?>.png" alt="주간인기차종 베스트4">
                <figcaption>
                    <p class="model_name"><?=$list[$i]['wr_1']?><span><?=$list[$i]['wr_3']?></span></p>
                    <p class="fee">월렌탈료 <span><?=$list[$i]['wr_5']?></span>원</p>
                </figcaption>
            </figure>
        </a>
        <a href="#x" class="overlay" id="<?=$num?>"></a>
        <div class="popup <?=$num?>">
            <div class="cont">
                <div>
                    <div>
                        <?php echo $img_content; ?>
                    </div>
                    <div>
                        <h5><span><?=$list[$i]['wr_2']?></span><?=$list[$i]['wr_1']?></h5>
                        <dl>
                            <dt>신차가격</dt>
                            <dd><?=$list[$i]['wr_4']?>원</dd>
                        </dl>
                        <dl>
                            <dt>월납입료</dt>
                            <dd><?=$list[$i]['wr_5']?>원</dd>
                        </dl>
                        <p class="layer_if">세부조건</p>
                        <div style="padding:20px;height:208px;overflow:auto;white-space: pre-line;"><?=$list[$i]['wr_content']?></div>
                    </div>
                </div>
                <div>
                    <p>이벤트 특가<br />견적문의</p>
                    <form action="#">
                        <fieldset>
                            <label for="name">이름</label>
                            <input type="text" name id="week_name_<?=$i?>">
                            <label for="phone">연락처</label>
                            <input type="text" name id="week_phone_<?=$i?>">
                            <label for="model">차종</label>
                            <input type="text" name id="week_car_<?=$i?>">										
                            <input type="button" value="견적문의" onclick="week_send(<?=$i?>,'<?=$list[$i]['wr_1']?>','<?=$list[$i]['wr_5']?>')">
                        </fieldset>
                    </form>		
                    <div class="privacy">										
                        <input type="checkbox" value="None" name id="week_privacy_<?=$i?>" checked/>
                        <label for="privacy" class="checkbox"><span>개인정보취급방침 동의</span><a href="#">[상세보기]</a></label>
                    </div>						
                </div>
            </div>
            <a class="close" href="#close"></a>
        </div>
    </li>
    <?php }  ?>
</ul>


<script>
function week_formReset(i){
    $('#week_name_'+i).val('');
    $('#week_phone_'+i).val('');
    $('#week_car_'+i).val('');
    $('#week_privacy_'+i).attr('checked', false)
}
    
function week_send(i,car,rental) {
    event.preventDefault()
	if( $("#week_privacy_"+i).prop("checked") == false ) {
		alert("개인정보 수집 및 이용동의에 동의해주세요.");
		$("#week_privacy_"+i).focus();
		return;
	}
    
	if(!$('#week_name_'+i).val()) {
		alert("이름을 입력해 주세요.");
		$("#week_name_"+i).focus();
		return;
	}
    
    if(!$('#week_phone_'+i).val()) {
		alert("연락처를 입력해 주세요.");
		$("#week_phone_"+i).focus();
		return;
	}
    
    if(!$('#week_car_'+i).val()) {
		alert("차종을 입력해 주세요.");
		$("#week_car_"+i).focus();
		return;
	}
    
    var content = '<table class="view_table_list">'
    content += '<tr><th>이름</th><td>'+$('#week_name_'+i).val()+'</td></tr>',
    content += '<tr><th>핸드폰번호</th><td>'+$('#week_phone_'+i).val()+'</td></tr>',
    content += '<tr><th>차종</th><td>'+$('#week_car_'+i).val()+'</td></tr>',
    content += '<tr><th>주간인기차종 선택</th><td>BEST'+(i+1)+' '+car+' '+rental+'</td></tr>',
    content += '<tr><th>월렌탈료</th><td><?=$list[$i]['wr_5']?>원</td></tr>',
    content += '</table>'

	var data = {
        "wr_option": $('#week_option').val(),
        "wr_subject": $('#week_subject').val(),
        "bo_table": $('#week_table').val(),
        "wr_name": $('#week_name_'+i).val(),
        "wr_content": content,
        "wr_1": $('#week_car_'+i).val(),
        "wr_2": $('#week_phone_'+i).val(),
    }
    
	$.ajax({
		type:"POST",
		url:"<?php echo G5_URL ?>/bbs/ajax.update.type1.php",
		data:data,
		success:function(data){
			if(data == 200){
                alert('신청이 완료되었습니다.')
                week_formReset(i)
                location.hash = 'x'
            }
		}
	});
}

</script>