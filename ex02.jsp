<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02 - 전송폼</title>
</head>
<body>
	<h1> EL 태그로 전송된 파라미터 받기</h1>
	<hr><br>
	
	<fieldset>
		<legend>전송 폼</legend>
		<form action="ex=2_result.jsp">
			<p><input name="name"placeholder="이름"></p>
			<p><input name="age"placeholder="나이"></p>
			<p><input name="height"placeholder="키"></p>
			
			<p><input type="submit" value="전송"></p>
		</form>
	</fieldset>

</body>
</html>