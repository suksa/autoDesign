<?php
include_once('./_common.php');

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

<!-- SUB TOP -->
<section class="SubTop estimate">
    <h2>상세견적<span>속 시원한 ‘진짜’ 맞춤형 비교견적, 자동차 세일즈 토탈솔루션 - 오토디자인</span></h2>		
</section>
<!-- //! SUB TOP END -->


<!-- ESTIMATE_FORM AREA -->
<section class="estimateArea">
    <div class="container">
        <div class="leftBox">
            <img src="assets/img/estimate_img.jpg" alt="뻔한 견적서와의 이별, 오토디자인">
        </div>
        <div class="rightBox">
            <form action="#">
               <input type="hidden" name="wr_option" value="html1" id="wr_option">
               <input type="hidden" name="bo_table" value="estimate" id="bo_table">
               <input type="hidden" name="wr_subject" value="상세견적 상담신청" id="wr_subject">
                <fieldset class="top">						
                    <label for="sb_keywords">문의차량</label>
                    <input type="text" name="wr_1" id="wr_1" />

                    <label for="sb_Select">상담</label>
                    <span class="selectBox">
                        <select name="wr_2" class="sel" id="wr_2">
                            <option value="장기렌트">장기렌트</option>
                            <option value="오토리스">오토리스</option>
                        </select>
                    </span>

                    <label for="sb_Select">보증금</label>
                    <span class="selectBox">
                        <select name="wr_3" class="sel" id="wr_3">
                            <option value="0%(무보증">0%(무보증)</option>
                            <option value="10%">10%</option>
                            <option value="20%">20%</option>
                            <option value="30%">30%</option>
                            <option value="40%">40%</option>
                            <option value="50%">50%</option>
                        </select>
                    </span>

                    <label for="sb_Select">개월수</label>
                    <span class="selectBox">
                        <select name="wr_4" class="sel" id="wr_4">
                            <option value="24개월">24개월</option>
                            <option value="36개월">36개월</option>
                            <option value="48개월">48개월</option>
                            <option value="60개월">60개월</option>
                        </select>
                    </span>

                    <label for="sb_Select">신청자구분</label>
                    <span class="selectBox">
                        <select name="wr_5" class="sel" id="wr_5">
                            <option value="개인급여소득자">개인급여소득자</option>
                            <option value="개인사업자">개인사업자</option>
                            <option value="법인사업자">법인사업자</option>
                        </select>
                    </span>


                    <label for="sb_keywords">이름</label>
                    <input type="text" name="wr_name" id="wr_name" />


                    <label for="numb">핸드폰번호</label>
                    <input type="numbArea" name="wr_6_1" id="wr_6_1" />
                    <span class="line">-</span>
                    <input type="numbArea" name="wr_6_2" id="wr_6_2" />
                    <span class="line">-</span>
                    <input type="numbArea" name="wr_6_3" id="wr_6_3" />

                    <label for="sb_Select">지역</label>
                    <span class="selectBox shipSelect">
                        <select name="wr_7" class="sel" id="wr_7">
                            <option value="서울">서울</option>
                            <option value="경기">경기</option>
                            <option value="인천">인천</option>
                            <option value="대전">대전</option>
                            <option value="대구">대구</option>
                            <option value="부산">부산</option>
                            <option value="광주">광주</option>
                            <option value="울산">울산</option>
                            <option value="세종">세종</option>
                            <option value="강원">강원</option>
                            <option value="경남">경남</option>
                            <option value="경북">경북</option>
                            <option value="전남">전남</option>
                            <option value="전북">전북</option>
                            <option value="충남">충남</option>
                            <option value="충북">충북</option>
                            <option value="제주">제주</option>
                        </select>
                    </span>
                </fieldset>
            </form>	
            <p>
                1. 개인정보의 수집목적 및 이용<br />
                1) 오토디자인은 신차 장기렌트/리스 견적신청 서비스 제공을 위하여 고객님의 개인정보를 
                수집하고 있습니다.<br />
                2) 오토디자인은 관계법령에 의한 경우나 이용자인 정보주체의 사전동의를 얻은 경우를 제외하고는 
                수집한 개인정보를 상기 목적 이외의 용도로 활용하지 않습니다.<br /><br />

                2. 개인정보 항목 및 수집방법<br />
                1) 개인정보 항목 - 성함, 핸드폰번호, 관심차종, 보증금/선수금, 개월수, 이메일<br />
                2) 수집방법 - 하단의 동의 체크박스에 클릭할 경우, 개인정보수집에 동의한 것으로 간주합니다.<br /><br />

                3. 개인정보의 보유 및 이용기간<br />
                1) 이용자가 제공하는 개인정보는 접수일로부터 1년동안 오토디자인이 보유하게 됩니다.<br />
                2) 이용자가 개인정보의 파기를 요청하는 경우 오토디자인은 예외없이 해당 이용자의 개인정보를 
                파기합니다.
            </p>
            <form action="#">
                <fieldset class="bottom">
                    <input type="checkbox" name="p_ck" id="freeShipCheck" />
                    <label for="Check">견적상담을 위하여 개인정보 제공에 동의합니다.</label>
                </fieldset>
            </form>		
        </div>		
    </div>
    <div class="container btn" style="height:auto;line-height:auto">
        <a href="#" onclick="mailSend2()">견적상담신청</a>
    </div>
</section>
<!-- ESTIMATE_FORM END -->

<script>
function emtimate_formReset(){
    $('#wr_name').val('');
    $('#content').val('');
    $('#wr_1').val('');
    $('#wr_2').find("option:eq(0)").prop("selected", true)
    $('#wr_3').find("option:eq(0)").prop("selected", true)
    $('#wr_4').find("option:eq(0)").prop("selected", true)
    $('#wr_5').find("option:eq(0)").prop("selected", true)
    $('#wr_6_1').val('');
    $('#wr_6_2').val('');
    $('#wr_6_3').val('');
    $('#wr_7').find("option:eq(0)").prop("selected", true)
    $('#freeShipCheck').attr('checked', false)
}
    
function mailSend2() {
    event.preventDefault()
	if( $("#freeShipCheck").prop("checked") == false ) {
		alert("개인정보 수집 및 이용동의에 동의해주세요.");
		$("#freeShipCheck").focus();
		return;
	}

	var wr_6 = $('#wr_6_1').val()+"-"+$('#wr_6_2').val()+"-"+$('#wr_6_3').val();

    if(!$('#wr_1').val()) {
		alert("문의차량을 입력해 주세요.");
		$("#wr_1").focus();
		return;
	}
    
	if(!$('#wr_name').val()) {
		alert("이름을 입력해 주세요.");
		$("#wr_name").focus();
		return;
	}

	if(!$('#wr_6_1').val()) {
		alert("연락처를 입력해 주세요.");
		$("#wr_6_1").focus();
		return;
	}
    
    if(!$('#wr_6_2').val()) {
		alert("연락처를 입력해 주세요.");
		$("#wr_6_2").focus();
		return;
	}
    
    if(!$('#wr_6_3').val()) {
		alert("연락처를 입력해 주세요.");
		$("#wr_6_3").focus();
		return;
	}
    
    var content = '<table class="view_table_list">'
    content += '<tr><th>문의차량</th><td>'+$('#wr_1').val()+'</td></tr>',
    content += '<tr><th>상담</th><td>'+$('#wr_2').val()+'</td></tr>',
    content += '<tr><th>보증금</th><td>'+$('#wr_3').val()+'</td></tr>',
    content += '<tr><th>개월수</th><td>'+$('#wr_4').val()+'</td></tr>',
    content += '<tr><th>신청자구분</th><td>'+$('#wr_5').val()+'</td></tr>',
    content += '<tr><th>이름</th><td>'+$('#wr_name').val()+'</td></tr>',
    content += '<tr><th>핸드폰번호</th><td>'+wr_6+'</td></tr>',
    content += '<tr><th>지역</th><td>'+$('#wr_7').val()+'</td></tr>',
    content += '</table>'

	var data = {
        "wr_option": $('#wr_option').val(),
        "wr_subject": $('#wr_subject').val(),
        "bo_table": $('#bo_table').val(),
        "wr_name": $('#wr_name').val(),
        "wr_content": content,
        "wr_1": $('#wr_1').val(),
        "wr_2": $('#wr_2').val(),
        "wr_3": $('#wr_3').val(),
        "wr_4": $('#wr_4').val(),
        "wr_5": $('#wr_5').val(),
        "wr_6": wr_6,
        "wr_7": $('#wr_7').val(),
    }

	$.ajax({
		type:"POST",
		url:"<?php echo G5_URL ?>/bbs/ajax.update.type1.php",
		data:data,
		success:function(data){
			if(data == 200){
                alert('신청이 완료되었습니다.')
                emtimate_formReset()
            }
		}
	});
}



</script>

<?php
include_once(G5_PATH.'/tail.php');
?>