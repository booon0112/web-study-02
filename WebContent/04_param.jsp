<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="./js/param.js"></script>

</head>
<body>
<style>
	div {margin-bottom:10px;}
	div>* {display:inline-block; vertical-align:middle}
	div span {width:150px;}
</style>

	<form method="get" action="ParamServlet" name="frm">
		<div>
			<span>이름</span>
			<input type="text" name="userName">
		</div>
		<div>
			<span>주민등록번호</span>
			<input type="text" name="userNum">
		</div>
		<div>
			<span>아이디</span>
			<input type="id" name="id">
		</div>
		<div>
			<span>비밀번호</span>
			<input type="password" name="pwd1">
		</div>
		<div>
			<span>비밀번호 확인</span>
			<input type="password" name="pwd2">
		</div>
		<div>
			<span>이메일</span>
			<input type="text" name="email1">
			@
			<input type="text" name="email2">
			<select class="email2_select" name="email2_select">
				<option value="naver.com">naver.com</option>
				<option value="daum.net">daum.net</option>
				<option value="nate.com">nate.com</option>
			</select>
		</div>
		<div>
			<span>우편번호</span>
			<input type="number" name="addressNum">
		</div>
		<div>
			<span>주소</span>
			<input type="text" name="address1">
			<input type="text" name="address2">
		</div>
		<div>
			<span>핸드폰번호</span>
			<input type="number" name="phone">
		</div>
		<div>
			<span>직업</span>
			<select multiple="mulitple" name="job" size="4" id="job">
				<option value="학생">학생</option>
				<option value="직장인">직장인</option>
				<option value="군인">군인</option>
			</select>
		</div>
		<div>
			<span>내용</span>
			<textarea id="content" name="content" rows="3" cols="35"></textarea>
		</div>
		<div>
			<span>먹고싶은 음식?</span>
			<label><span>자장면</span><input type="checkbox" name="foods" value="자장면"></label>
			<label><span>짬뽕</span><input type="checkbox" name="foods" value="짬뽕"></label>
			<label><span>냉면</span><input type="checkbox" name="foods" value="냉면"></label>
			<label><span>초밥</span><input type="checkbox" name="foods" value="초밥"></label>
			<label><span>오리고기</span><input type="checkbox" name="foods" value="오리고기"></label>
			<label><span>비빔국수</span><input type="checkbox" name="foods" value="비빔국수"></label>
		</div>
		<div class="btnBox">
			<input type="submit" value="회원가입" onclick="return check()">	
			<input type="submit" value="취소">
		</div>
	</form>
	
</body>
</html>