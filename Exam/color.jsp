<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	
<html lang="en">
 <head>

  <title></title>
 </head>
 <body>
	<jsp:useBean id="color" class="java.util.ArrayList">
	<%
		color.add("red");
		color.add("orange");
		color.add("green");
		color.add("blue");
		color.add("violet");
	%>
	</jsp:useBean>

	<ul>
		<font color="${color[0]}"> <li> 이 색상은 ${color[0]}색 입니다.</li> </font>
		<font color="${color[1]}"> <li> 이 색상은 ${color[1]}색 입니다.</li> </font>
		<font color="${color[2]}"> <li> 이 색상은 ${color[2]}색 입니다.</li> </font>
		<font color="${color[3]}"> <li> 이 색상은 ${color[3]}색 입니다.</li> </font>
		<font color="${color[4]}"> <li> 이 색상은 ${color[4]}색 입니다.</li> </font>
	</ul>

	</body>
</html>
