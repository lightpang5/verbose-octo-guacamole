<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = (String)request.getAttribute("ID");
	String password = (String)request.getAttribute("PASSWORD");
	String name = (String)request.getAttribute("NAME");

	session.setAttribute("ID",id);
	session.setAttribute("PASSWORD",password);
	session.setAttribute("NAME",name);

%>
<html>
	<head>
	 <link rel="stylesheet" href="css2/futsaljoin.css"/>
	<script src="js2/join.js"></script>
	  <title>학생 정보</title>
	 </head>
	 <body>
	<h3>학생 정보</h3>

	<center> 
		<img src="img/MIT.png" title="학교로고" align = left width = 150px>
			
			<br><br><br><br><br><br>
			<table border=1 cellpadding=5 align ="center" class=abc>
	 <thead>
	 <tr bgcolor=black align = "center">
	 <td colspan = 2><font color="white">
	 <IMG src="img/MIT.png" width="25px" height="25px"> 학생 로그인 <IMG src="img/MIT.png" width="25px" height="25px"> 
	 </td>
	 </tr>
	 </thead>

		<form action=Dbconnect_Student.jsp method=post>
		<tbody>
	 <tr>

		 <td class = ff><font color="#FFCC33">* </font>아이디</td>

		 <td class=ab>

		 ${ID}<br>
		
		  </td>
	  </tr>
	  <tr>

		  <td class=ff><font color="#FFCC33">* </font>비밀번호</td>

			<td class=ab>

			${PASSWORD}<br>

		</tr>
		 <tr>

		  <td class=ff><font color="#FFCC33">* </font>이름</td>

			<td class=ab>

			${NAME}<br>

		</tr>
		</tbody>
		</table>
			
			<input type = button value=' 회 원 수 정' class="fbtn" onclick="location.href='Dbconnect_Update.jsp'">
			<input type = button value=' 회 원 삭 제' class="fbtn"
			onclick="location.href='DeleteForm.jsp'">
			<input type = submit value=' 회 원 출 력' class="fbtn">
		</form>
		</center>
	 </body>
</html>