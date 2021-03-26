<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 명시적으로 구현하지 않아도 Default 8kb, autoFlush -->
<%@ page buffer="8kb" autoFlush="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//out 객체 (WAS) > java의 System.out.plintln()과 동일
		for(int i = 0; i < 10; i++) {
			out.print("<b>"+i+"<b><br>");
		}
		//buffer에 담아서 출력할 것
		//8kb가 안돼도 jsp페이지에 더이성 buffer에 담을 내용이 없으면 자동으로 flush한다.
	%>
</body>
</html>