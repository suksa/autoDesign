<?php
include_once('./_common.php');
?>

<form action="#" onsubmit="return false;">
    <input type="hidden" name="wr_option" value="html1" id="wr_option">
    <input type="hidden" name="bo_table" value="estimate" id="bo_table">
    <input type="hidden" name="wr_subject" value="간편상담 상담신청" id="wr_subject">
    <fieldset>
        <div>
            <label for="name">이름</label>
            <input type="text" name id="quick_form_name">
        </div>
        <div>
            <label for="phone">연락처</label>
            <input type="text" name id="quick_form_phone">
        </div>
        <div>
            <input type="button" value="간편상담 신청" onclick="quick_consult_send()">
        </div>
        <div>						
            <label for="area">상담내용</label>
            <input type="text" name id="quick_form_text">
        </div>
        <div>
            <label for="model">차종</label>
            <input type="text" name id="quick_form_model">
        </div>
        <div class="privacy">
            <input type="checkbox" value="None" name id="quick_form_pri" checked/>
            <label for="privacy" class="checkbox"><span>개인정보취급방침 동의</span></label>	
        </div>	
    </fieldset>
</form>


<script>
function quitck_formReset(){
    $('#quick_form_name').val('');
    $('#quick_form_phone').val('');
    $('#quick_form_text').val('');
    $('#quick_form_model').val('');
    $('#quick_form_pri').attr('checked', false)
}
    
function quick_consult_send() {
    event.preventDefault()
	if( $("#quick_form_pri").prop("checked") == false ) {
		alert("개인정보 수집 및 이용동의에 동의해주세요.");
		$("#quick_form_pri").focus();
		return;
	}

    if(!$('#quick_form_name').val()) {
		alert("이름을 입력해 주세요");
		$("#quick_form_name").focus();
		return;
	}
    if(!$('#quick_form_phone').val()) {
		alert("연락처를 입력해 주세요");
		$("#quick_form_phone").focus();
		return;
	}
    if(!$('#quick_form_text').val()) {
		alert("내용을 입력해 주세요");
		$("#quick_form_text").focus();
		return;
	}
    if(!$('#quick_form_model').val()) {
		alert("차종을 입력해 주세요");
		$("#quick_form_model").focus();
		return;
	}
    
    var content = '<table class="view_table_list">'
    content += '<tr><th>이름</th><td>'+$('#quick_form_name').val()+'</td></tr>',
    content += '<tr><th>연락처</th><td>'+$('#quick_form_phone').val()+'</td></tr>',
    content += '<tr><th>상담내용</th><td>'+$('#quick_form_text').val()+'</td></tr>',
    content += '<tr><th>차종</th><td>'+$('#quick_form_model').val()+'</td></tr>',
    content += '</table>'

	var data = {
        "wr_option": $('#wr_option').val(),
        "wr_subject": $('#wr_subject').val(),
        "bo_table": $('#bo_table').val(),
        "wr_name": $('#quick_form_name').val(),
        "wr_content": content,
        "wr_1": $('#quick_form_model').val(),
    }

	$.ajax({
		type:"POST",
		url:"<?php echo G5_URL ?>/bbs/ajax.update.type1.php",
		data:data,
		success:function(data){
			if(data == 200){
                alert('신청이 완료되었습니다.')
                quitck_formReset()
            }
		}
	});
}

</script>