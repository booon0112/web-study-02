<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서블릿 - doGet& doPost</title>
</head>
<body>
	<form method="get" action="methodServlet">
		<input type="submit" value="get 방식으로 호출하기 ">
	</form>
	<br><br>
	<form method="post" action="methodServlet">
		<input type="submit" value=" post방식으로 호출하기 ">
	</form>
</body>
</html>