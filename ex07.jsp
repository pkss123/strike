<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex07.jsp - JSTL core 기능</title>
</head>
<body>
	<h1>JSTL core 기능</h1>
	
	<%-- JSTL을 사용하기 위해선 일단 jstl.jar 라는 라이브러리 파일이 필요 (다운 받고, WEB-INF/lib 안에 넣어준다 --%>
	<%-- 그 후 선언부에 tag 라이브러리를 추가 --%>
	
	<h3>c : set - attribute를 추가한다. scope를 지정하지 않으면 기본 pageContext에 저장한다</h3>
	<c:set var="member1" value="홍길동" scope="page"/>
	<%-- pageContext.setAttribute("member1", "홍길동"); --%>
	
	<p>member1 = ${member1 }</p>
	<%--<p>member1 = <%=pageContext.getAttribute("member1") %></p>--%>
	
	<c:set var="member2" scope="request">김길동</c:set> <%-- value를 생략하고, 태그 사이에 작성해도 된다 --%>
	<p>member2 = ${member2 }</p>
	<p>(page)member2 = <%=pageContext.getAttribute("member2") %></p>
	<p>(request)member2 = <%=request.getAttribute("member") %>
	
	<c:set var="member3" value="이길동" scope="session"/>
	
	<c:set var="member4" value="박길동" scope="application"/>

	<p>member3 = ${member3 }</p>
	<p>member4 = ${member4 }</p>

</body>
</html>