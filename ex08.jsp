<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL - 객체 생성</title>
</head>
<body>
	<h1>JSTL 객체 생성</h1>
	<hr><br>
	
	<%-- c:set은 attribute에 저장만 가능하지 객체 생성은 불가능 --%>
	<%-- 이때, jsp:usebean 과 같이 쓰면 객체도 저장 가능 --%>
	
	<jsp:useBean id="p1" class="day17.Person" scope="session"/>
	<%-- Person p1 = new Person()과 같은 코드 --%>
	
	<c:set target="${p1 }" property="name" value="홍길동"/>
	
	<c:set target="${p1 }" property="age">25</c:set>
	<c:set target="${p1 }" property="height" value="180.5"/>
	
	<p>p1 = ${p1 }</p>
	<br>
	
	<p>member1 = ${member1 }</p>		<%-- page : 해당 페이지에서만 데이터 유지 --%>
	<p>member2 = ${member2 }</p>		<%-- request : 해당 페이지와 포워드시 유지 --%>
	<p>member3 = ${member3 }</p>		<%-- session : 웹브라우저가 닫힐때 까지 유지 --%>
	<p>member4 = ${member4 }</p>		<%-- app : 웹서버가 꺼지거나 재실행될때까지 유지 --%>
	<br>
	
	<c:remove var="p1"/>
	<c:remove var="member3" scope="session"/>
	<c:remove var="member4"/>
	<%-- remove시 scope를 생략하면 : page -> req -> session -> app 순으로 찾아서 제거 --%>
	<p>p1 = ${p1 }</p>
	<p>member3 = ${member3 }</p>
	
	
	
</body>
</html>