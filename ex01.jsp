<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 태그</title>
</head>
<body>
	<h1>EL : Expression Language (표현언어)</h1>
	<hr><br>
	
	<ul>
		<li>표현식 &lt;%= %>를 대체하기 위해 등장한 문법</li>
		<li>기존 표현식에서 JSP 내장객체에 저장해놓은 attribute에 접근의 불편함을 해소해줌</li>
		<li>배열,리스트, 맵 등의 묶음 자료형의 접근도 제공한다</li>
		<li>JSP 2.0 이상 부터 지원됨</li>
		<li>내장 객체에 자동으로 접근되는데 찾는 순서가</li>
		<li>pageContext -> request -> session -> application 순으로 순차적으로 attribute를 자동으로 탐색</li>
		<li>뒤의 JSTL (Java Standard Tag Library)과 같이 쓰면 효과 극대화
	</ul>
	
</body>
</html>