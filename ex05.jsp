<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex05.jsp - JSTL</title>
</head>
<body>
	<h1>JSTL - Java Standard Tag Library</h1>
	<hr><br>
	
	<ul>
		<li>
		JSP는 스크립틀릿 등 자바코드와 HTML 태그가 섞여 복잡한 구조를 이루게 된다<br>
		간결하게 코드를 작성하기 위해서 자신만의 자바코드를 HTML처럼 태그로 구성할수 있다
		</li><br>
		<li>
			커스텀 태그 : JSP에서 기본 제공 (ex &lt;jsp:usebean> 같은) 되는 태그가 아닌, 자신이 직접 추가한 태그 <br>
		</li><br>
		
		<li>
			커스텀 태그 라이브러리 : 작성한 커스텀 태그를 모아서, 압축 후 배포해서 사용하는 것
		</li>
		
		<li>
			JSTL : 커스텀 태그를 개별적으로 만들어 쓰다 보니 일관성이 없다<br>
			이를 표준화 해서 배포된 것이 JSTL 이라고 한다
		</li>
	</ul>
</body>
</html>