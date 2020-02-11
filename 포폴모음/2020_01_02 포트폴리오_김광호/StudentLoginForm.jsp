<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*"%>




<html>
 <head>
 <link rel="stylesheet" href="css2/futsaljoin.css"/>
<script src="js2/join.js"></script>
  <title>로그인</title>
 </head>
 <body>


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
	<form action=StudentLogin.jsp method=post>
	<tbody>
 <tr>

	 <td class = ff><font color="#FFCC33">* </font>아이디</td>

	 <td class=ab>

	 <input type ="text" name ="id"  maxlength="10" value="I D" class = box> 
	
	  </td>
  </tr>
  <tr>

	  <td class=ff><font color="#FFCC33">* </font>비밀번호</td>

		<td class=ab>

		<input type ="password" name ="pwd"  maxlength="10" value="" class=box> 

	</tr>
	</tbody>
	</table>
		<input type = submit value = '로 그 인' class="fbtn">
		<input type = button value=' 회 원 가 입' class="fbtn" onclick="location.href='InsertForm.jsp'">
	</form>
	</center>
 </body>
</html>