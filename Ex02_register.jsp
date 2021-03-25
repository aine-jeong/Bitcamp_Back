<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	//클라이언트 요청 데이터 받기
	//Tomcat(내장된 객체)
	//웹에 사용되는 전용 객체(request, reponse) >> new 하지 않는다(생성된객체 바로 사용 가능)
	//request (요청 객체)  : 클라이언트 정보(입력 데이터, IP, 브라우저 버전 등)를 취득할 때 사용
	//response (응답 객체) : 서버가 가지고 있는 자원을 클라이언트에게 write할 때 사용
	
	//Request request = new Request(); 처럼 이미 만들어져 있는 것 (정확한 식 x)
	
	// get방식
	// http://localhost:8090/WebJSP/Ex02_register.jsp?userid=ain&pwd=1004
	String uid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	// http://localhost:8090/WebJSP/Ex02_register.jsp?userid=ain&pwd=1004&hobby=baseball&hobby=soccer
	String[] hobby = request.getParameterValues("hobby");
	
	/* 
		(Tomcat9버전 이하에서)한글처리가 힘들다
		(GET)
		1. 페이지 상단에 인코딩: request.setCharacterEncoding("UTF-8");
		2. 서버 설정 변경 (server.xml의 63번째 라인)
		  :  <Connector connectionTimeout="20000" port="8090" protocol="HTTP/1.1" redirectPort="8443"/> 를 아래 코드로 변경
		  :  <Connector URIEncording="UTF-8" connectionTimeout="20000" port="8090" protocol="HTTP/1.1" redirectPort="8443"/>
		  
		(POST)
		### POST방식은 무조건 페이지 상단에 인코딩 해둬야 한다. (버전 상관 없이!!) ###
		1. 페이지 상단에 인코딩: request.setCharacterEncoding("UTF-8");
		
	*/
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	서버에서 응답 <br>
	<hr>
	ID 값  : <%= uid %><br>
	PWD 값 : <%= pwd %><br>
	<hr>
	당신의 취미는<br>
	<%
		for(String str: hobby) {
	%>	
			hobby: <%= str %> <br>
	<%	
		}
	%>
</body>
</html>