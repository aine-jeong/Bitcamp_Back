<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 한글처리
		request.setCharacterEncoding("UTF-8");

	//2. 데이터 받기
		String id = request.getParameter("id");	
	
	/*
	# request 객체는 WAS 내장 객체
	 192.168.0.xx/webJSP/Ex04_request.jsp 요청 하나당 객체 1개
	 (1) 요청 페이지당 request 한개가 자동생성된다
	 (2) 클라이언트가 서버에 전송을 요청하면 클라이언트에게 수많은 정보가 전달된다 -> 정보를 받는 객체가 request
	    -> request: 입력값, IP, 브라우저 정보, 전송 방식 등의 정보를 받는다.
	    
	     request 내장 객체는 클라이언트에서 서버로 요청할 때 생성되는
	     HttpServletRequest 타입을 갖는 객체가 자동 생성되고 그 주소를 request가 참조하는 것
	     (즉, HttpServletRequest request = new HttpServletRequest ...)
	     
	*/
		
	//3. 로직 처리(업무 DB 연결 등)
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	id: <%=id %> <hr>
	접속한 클라이언트 IP: <%= request.getRemoteAddr() %> <hr>
	서버에 요청한 인코딩 방식: <%= request.getCharacterEncoding() %> <hr>
	전송방식: <%= request.getMethod() %> <hr>
	포트번호: <%= request.getServerPort() %> <hr>
	context root(=사이트 명, 가상디렉토리, 홈디렉토리, default 웹경로): <%= request.getContextPath() %> <hr>
</body>
</html>