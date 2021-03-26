<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	/* 
		webProject 생성 >> 기본폴더 구조 제공 >> web.xml(: WebApp의 환경설정을 할 수 있는 xml파일) 제공
		web.xml파일은 서버가 시작되면 가장 먼저 로딩(해석,실행)된다.
		<welcome-file>default.html</welcome-file> : 웹 사이트 기본 페이지 설정
		ex) http://localhost:8090/WebJSP/ >> 기본페이지 서비스 > default.html 내용

		/WebJSP > 웹프로젝트 이름, 가상 디렉토리, context root(문맥, 흐름 전체)
		>> 웹경로(가상경로)  http://localhost:8090/WebJSP
		>> 실경로			 D:\bit2021\WEB(Back)\WebLabs\WebJSP
	
		/WebJSP 웹 프로젝트가 서비스하는 파일의 기본 경로(default)
		>> D:\bit2021\WEB(Back)\WebLabs\WebJSP\WebContent (context root)
		>> 192.168.0.54:8090\WebJSP > WebContent안의 자원을 서비스하겠다
		
		>> 자원(서비스하는 파일): html, htm, css, js, json, txt, jsp
		>> WebContent > a.jsp, b.jsp, c.jsp 3개의 페이지가 공유할 수 있는 자원?
				
		>> 모든 자원은 페이지가 scope
		>> ex) a.jsp: <% String s="A"... -> s변수의 scope는 a.jsp!! (scope를 벗어나면 사라짐)
		> 	   b.jsp: <% String s="A"... -> s변수의 scope는 b.jsp
		>	   c.jsp: <% String s="A"... -> s변수의 scope는 c.jsp
		
		>> a.jsp, b.jsp, c.jsp가 같은 자원을 공유하고싶당...
		>> web.xml 파일이 할 수 있다!
		>> web.xml은 환경설정 파일 (서버시작하자마자 가장 먼저 해석된다!)
		
		
	    <context-param>
	   		<description>개발자 마음대로..</description>
	   		<param-name>email</param-name>
	   		<param-value>webmaster@bit.or.kr</param-value>
	    </context-param>
	    
	    ㄴ>web.xml에 작성해둔 내용
	    > 해당 내용을 읽는 방법은?
	     => Application객체 (WAS 제공)
	     => web.xml 설정 read
		
	     + write는 불가능하다.
	*/
	
	/* 
		WebContent >> WEB-INF >> lib
	     		   			  >> web.xml
	     		   >> a.jsp
	     		   >> b.html
	     			...
	     
	    WEB_INF폴더 : 보안폴더
	    Client가 주소를 알고 있다고 하더라도 접근이 불가한 경로!!
	    주소 접속: http://localhost:8090/WebJSP/WEB-INF/web.xml >> 서버는 404전달
	    
	    문제점)
		Ex02_register.html -> 요청 -> Ex02_register.jsp 응답
		WebContent 폴더 안의 자원은 전부 Client가 접근할 수 있다.
		
		### 실제 현업 개발 코드는 WebContent 폴더에 없어용 ###
		# 1. Client 직접 요청하는 파일: Webcontent >>  main.html, login.html, register.htm 
		#    ㄴ> WebContent 안에 넣어둔다.
		# 2. Client가 직접 요청해서는 안되는 파일: WEB-INF >> views >> member >> register.jsp
		# 									 WEB-INF >> views >> admin >> admin.jsp
		#    ㄴ> WEB-INF 안에 넣어둔다.
	*/
%>

<h3>Application</h3>

<%
	String param = application.getInitParameter("email");
	out.print("<h3>" + param + "<h3>");
	out.print("<hr>");
	String param2 = application.getInitParameter("FilePath");
	out.print("<h3>" + param2 + "<h3>");
	out.print("<hr>");
%>

</body>
</html>









