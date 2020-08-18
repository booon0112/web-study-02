/**
 * 
 */

function check(){
	var checkNum = 0;
	$("input[name=foods]:checked").each(function(){
		checkNum++;
	});
	
	if(document.frm.userName.value == ""){
		alert("이름을 입력해주세요.");
		document.frm.userName.focus();
		return false;
	}else if(document.frm.userNum.value == ""){
		alert("주민등록번호를 입력해주세요.");
		document.frm.userNum.focus();
		return false;
	}else if(document.frm.id.value == ""){
		alert("아이디를 입력해주세요.");
		document.frm.id.focus();
		return false;
	}else if(document.frm.pwd1.value == ""){
		alert("비밀번호를 입력해주세요.");
		document.frm.pwd1.focus();
		return false;
	}else if(document.frm.pwd2.value == ""){
		alert("비밀번호 확인을 입력해주세요.");
		document.frm.pwd2.focus();
		return false;
	}else if(document.frm.email1.value == ""){
		alert("이메일 아이디를 입력해주세요.");
		document.frm.email1.focus();
		return false;
	}else if(document.frm.email2.value == ""){
		alert("이메일 주소를 입력해주세요.");
		document.frm.email2.focus();
		return false;
	}else if(document.frm.addressNum.value == ""){
		alert("우편번호를 입력해주세요.");
		document.frm.addressNum.focus();
		return false;
	}else if(document.frm.address1.value == ""){
		alert("주소를 입력해주세요.");
		document.frm.address1.focus();
		return false;
	}else if(document.frm.address2.value == ""){
		alert("주소를 입력해주세요.");
		document.frm.address2.focus();
		return false;
	}else if(document.frm.phone.value == ""){
		alert("핸드폰번호를 입력해주세요.");
		document.frm.phone.focus();
		return false;
	}else if(document.frm.job.value == ""){
		alert("직업을 입력해주세요.");
		document.frm.phone.focus();
		return false;
	}else if(document.frm.content.value == ""){
		alert("남길 메시지를 입력해주세요.");
		document.frm.content.focus();
		return false;
	}else if( checkNum == 0 ){
		alert("항목을 선택해주세요.");
		return false;
	}
}

$(function(){
	// 이메일 선택
	$('.email2_select').on('click', function(){
		var selectedVal = $(this).find('option:selected').val();
		document.frm.email2.value = selectedVal;
	});
});