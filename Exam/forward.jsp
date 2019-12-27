<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
 <head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
  <title>JSP 예제:forward.jsp</title>
 </head>
 <body>
	<%
	//pageContext.forward("send.jsp");
	%>
	<jsp:forward page="send.jsp"/>
	
 </body>
</html>