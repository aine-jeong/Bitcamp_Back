<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Response</title>
</head>
<body>
	<!-- 
		웹 환경
		Client가 Server에게 요청을 보낸다 (Request :요청)
		Server가 요청된 정보를 read한다. (Request 객체가 정보를 담고있다)
		
		Server가 클라이언트에게 응답한다 (Response :응답)
		응답결과를 클라이언트의 브라우저가 해석한다.
		(아파치 톰캣 : WAS : 자원 : javax 패키지 명으로)
		
		# Response
		1. 표현식 (출력) < % =  = >
		2. 페이지의 이동처리 담당: sendRedirect
		
		### javaScript : location.href="Ex01_Basic.jsp" ###
		### 서버에게 페이지를 재요청 (마치 F5(새로고침))
		
		# 재요청 java 코드
		response.sendRedirect("Ex01_Basic.jsp")
		>> 클라이언트 브라우저에 전달되면, 어떻게 보일까용?
		>> location.href="Ex01_Basic.jsp"
	-->

	1. 일반적인 출력() : <%= 100+200+300 %>
	2. sendRedirect : response 객체의 함수
	<%
		response.sendRedirect("Ex01_Basic.jsp"); // 서버를 켜면 Ex01_Basic으로 켜진당....
		// 페이지 재요청 결과 동일
	%>
	
</body>
	<script type="text/javascript">
		location.href="Ex01_Basic.jsp" // 위의 respinse.sendRedirect와 같은것!!!
	</script>
</html>