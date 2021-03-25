<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//JAVA코드 작성 가능
	Date day = new Date();
	/* 
		JSP 페이지: UI(html+css+javascript) + JAVA코드( 자바 코드는 <% 스크립트 릿 안에 구현)
		>> 디자인코드 + 서버로직코드를 가지고있는 페이지 -> 별로 선호하지 않음 ...(대체되는 방법은 앞으로 학습할 내용!)
		
		servlet(형) + jsp(동생)
		>> java는 웹 기반으로 기술되지 X > 계산기, 그림판, 윈도우 프로그램 ... > 웹(servelet)
		>> java 페이지로 web 서비스를 하자 (단점: 배우기 어렵다, 디자인작업이 어렵다)
		
		>> JSP (UI) >> html기반
		
		# 현대의 프로그래밍은 둘다 사용한다 #
		servlet (java코드) + JSP(UI) >> MVC 패턴 (잘하는 놈에게 잘하는 것을 시키자)
		
		- Model (DAO, DTO)   >> 객체만드는 것 (순수한 JAVA)
		- View  (UI)		 >> JSP
		- Controller		 >> JAVA코드 웹 제어(응답, 요청) > servlet
		
		> Spring mvc 개발
		> 중간프로젝트 목적 : servlet + jsp를 활용한 MVC 패턴
			<< "model2 기반의 MVC 패턴" >>
		
		> JSP와 HTML 차이점
		> Tomcat(WAS) 처리
			1. html : web server (클라이언트 요청 -> 응답) : 192.168.0..../login.
			2. jsp  : was를 통해서 컴파일 > class 생성 > 실행 (가지고 있는 코드: text, html, script) > 전달
					  > WAS(jsp) > compile(a.jsp.java) > a.jsp.class 실행 > 정적 + 동적 > 정적파일 (text, html, script) 전달
					  > ASP (ASPX), PHP, JSP 장점: 코드 노출이 안된다. (보안성 ↑)
			
		> 컴파일 > 실행(a.jsp.class) 전달
		> 누군가의 요청으로 new.jsp 전달 > WAS는 new.jsp에 대한 실행 여부 확인 
			> 컴파일된게 있다면 그대로 서비스 / 누구도 요청한적이 없다면 (실행파일이 없다면) 컴파일, 실행
		> 개발자가 new.jsp 수정 > WAS가 코드수정 인지, 재컴파일
			
		JSP 구성요소
		1. 선언부: page 지시자 > 사용언어, 인코딩, import
		<%@ page language="java">
		
		2. 스크립트 요소
		2.1. 스크립트 릿 (<%) java코드
		2.2. 표현식(출력방법): 출력하는 대상(client 브라우저): <%= 전달내용 (=을 response 합니다)
		2.3. 선언부(공통 자원 (scope page)) : 공통함수 정의 <%! 공통함수 ...
	*/
%>    

<%!
	// 이 페이지에서 사용하는 공통 함수
	
	public int add(int i, int j){
		return i+j;
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>JSP</h3>
	<%= day %> <br>
	<%= add(10, 20) %> <br>
	
	<%
		int result = add(100,200);
	%>
	<hr>
	합 결과: <%= result %>
	
</body>
</html>