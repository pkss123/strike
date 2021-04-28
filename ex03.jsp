<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="day17.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex03.jsp - attribute에 저장된 데이터 꺼내기</title>
</head>
<body>
	<%
		Person p1 = new Person("홍길동", 17, 173.2);
		Person p2 = new Person("이길동", 20, 173.2);
		Person p3 = new Person("고길동", 13, 173.2);

		Person[] arr = new Person[]{p1, p2, p3};
		
		ArrayList<Person> list = new ArrayList<Person>();
		list.add(p1);
		list.add(p2);
		list.add(p3);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("p1",p1);
		map.put("p2",p2);
		map.put("p3",p3);
		
		session.setAttribute("arr", arr);
		session.setAttribute("list", list);
		session.setAttribute("map", map);
		
	%>
	
	<h1>표현식</h1>
	
	<fieldset>
		<legend>표현식</legend>
		<p><%=((Person[])session.getAttribute("arr"))[1].sleep() %>
		<p><%=((ArrayList<Person>)session.getAttribute("list")).get(2).sleep() %>
		<p><%=((Person)((HashMap<String, Object>)session.getAttribute("map")).get("p1")).sleep() %></p>
	</fieldset>
	
	<hr>
	
	<h1>EL Tag</h1>
	
	<fieldset>
		<legend>EL Tag</legend>
		<p>${arr[0].sleep() }</p>
		<p>${list.get(1).sleep() }</p>	<%-- 컬렉션은 원래 메서드로 데이터를 접근 --%>
		<p>${list[1].sleep() }</p>		<%-- 하지만, EL에서는 배열처럼 []를 제공 --%>
		<p>${map.get("p1").sleep() }</p>
		<p>${map["p1"].sleep() }</p>	<%-- 심지어, Map에도 적용 --%>
		<br>
		
		<p> Attribute를 찾는 순서 : pageContext -> request -> session -> application
		<p> 만약에 저장한 이름이 겹치거나 혹은 명시적으로 가져올땐 아래처럼 사용한다
		
		<p>pageScope : ${pageScope.arr[0] }</p>
		<p>request : ${requestScope.arr[0] }</p>
		<p>session : ${sessionScope.arr[0] }</p>
		<p>application : ${application.arr[0] }</p>
	</fieldset>
</body>
</html>