<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
 <head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
  <title>JSP 예제:send.jsp</title>
 </head>
 <body>
	<% response.sendRedirect("http://" + request.getParameter("url"));%>
 </body>
</html>