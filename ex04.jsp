<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex04.jsp - EL의 연산자</title>

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
	<h1>EL의 연산자</h1>
	<hr><br>
	
	<table>
		<tr>
			<th>연산자</th>
			<th>출력 결과</th>
		</tr>
		
		<tr>
			<td>\${10 + 1 }</td>
			<td>${10 + 1 }</td>
		</tr>
		
		<tr>
			<td>\${10 - 1 }</td>
			<td>${10 - 1 }</td>
		</tr>
		
		<tr>
			<td>\${10 * 2 }</td>
			<td>${10 * 2 }</td>
		</tr>
		
		<tr>
			<td>\${5 / 2 }</td>
			<td>${5 / 2 }</td>
		</tr>
			
		<tr>
			<td>\${5 % 2 }</td>
			<td>${5 % 2 }</td>
		</tr>
		
		<tr>
			<td>\${5 > 2 }</td>
			<td>${5 > 2 }</td>
		</tr>
		
		<tr>
			<td>\${5 gt 2 } (※ gt : greater then)</td>
			<td>${5 gt 2 }</td>
		</tr>
		
		<tr>
			<td>\${5 < 2 }</td>
			<td>${5 < 2 }</td>
		</tr>
		
		<tr>
			<td>\${5 lt 2 } (※ : less then)</td>
			<td>${5 lt 2 }</td>
		</tr>
		
		<tr>
			<td>\${5 == 2 }</td>
			<td>${5 == 2 }</td>
		</tr>
		
		<tr>
			<td>\${5 eq 2 }(※ eq : equal)</td>
			<td>${5 eq 2 }</td>
		</tr>
		
		<tr>
			<td>\${5 != 2 }</td>
			<td>${5 != 2 }</td>
		</tr>
		
		<tr>
			<td>\${5 ne 2 }(※ ne : not equal)</td>
			<td></td>
		<%--	<td>${5 ne 2 }</td>	 --%>	<%-- 이클립스가 맞지만 제대로 인식을 못함 --%>
		</tr>
		
		<tr>
			<td>\${true && true }</td>
			<td>${true && true }</td>
		</tr>
		
		<tr>
			<td>\${true and true }</td>
			<td>${true and true }</td>
		</tr>
		
		<tr>
			<td>\${false || false }</td>
			<td>${false || false }</td>
		</tr>
		
		<tr>
			<td>\${false or false }</td>
			<td>${false or false }</td>
		</tr>
		
		<tr>
			<td>\${!true }</td>
			<td>${!true }</td>
		</tr>
		
		<tr>
			<td>\${not true }</td>
			<td>${not true }</td>
		</tr>
		
		<tr>
			<td>\${5 % 2 == 0 ? "짝수" : "홀수" }</td>
			<td>${5 % 2 == 0 ? "짝수" : "홀수" }</td>
		</tr>
		
		<tr>
			<td>\${empty null }</td>
			<td>${empty null }</td>
		</tr>
		
		<tr>
			<td>\${not empty null }</td>
			<td>${not empty null }</td>
		</tr>
		
	</table>
</body>
</html>