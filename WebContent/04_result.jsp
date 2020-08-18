<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과값 </title>
</head>
<body>
	당신이 입력한 정보입니다<br>
	이름 : ${userName}<br>
	주민등록번호 : ${userNum}<br>
	아이디 : ${id}<br>
	비밀번호 : ${pwd1}<br>
	비밀번호확인 : ${pwd2}<br>
	이메일 : ${email1} @ ${email2}<br>
	우편번호 : ${addressNum}<br>
	주소 : ${address1} ${address2} <br>
	핸드폰번호 : ${phone}<br>
	직업 : ${job}<br>
	남길 메시지 : ${content}<br>
	먹고싶은 음식 : ${foods}<br>

	<a href="javascript:history.go(-1)">다시</a>	
</body>
</html>

