<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
<meta charset="UTF-8">
<title>첫번째 jsp 예제</title>
</head>
<body>
	<% int i= 24;%>
	<%
		out.println("하루는 " +i+ " 시간이며,<br>");
		out.println("하루는 "+i*60+ "분 입니다.");
	%>
</body>

</html>