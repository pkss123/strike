<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex06 - JSTL 종류</title>

<style>
	table{
	border-collapse: collapse;
	}
	th, td {
	border: 1px solid black; padding: 5px 10px;
	}
</style>
</head>
<body>
	<h1>커스텀 태그 종류</h1>
	<hr><br>
	
	<table>
		<tr>
			<th>태그</th>
			<th>설명</th>
		</tr>
		
		<tr>
			<td><font color="red">핵심기능 (core)</font></td>
			<td>
				일반 프로그램 언어에 재공하는 기능들이 있다<br>
				제어문이나, jsp의 redirect나 forword 처럼 웹페이지 이동도 제공
			</td>
		</tr>
		
		<tr>
			<td>형식 (format)</td>
			<td>숫자나, 날짜 같은 형태를 지정하는 기능을 제공</td>
		</tr>
		
		<tr>
			<td>데이터 베이스 sql(sql)</td>
			<td>DB에 입력/수정/삭제/조회 하는 기능을 제공 <br>
			(= 우리는 DAO, DTO로 처리한다, 유지보수가 좋기 때문
			</td>
		</tr>
		
		<tr>
			<td>XML 관련 기능(xml)</td>
			<td>XML 문서 처리 기능을 제공</td>
		</tr>
		
		<tr>
			<td>함수 처리(function)</td>
			<td>문자열 처리나, 기타 유용한 함수를 제공</td>
		</tr>
	</table>
</body>
</html>