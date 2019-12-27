<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("ID");
	String password = request.getParameter("PASSWORD");
	String name = request.getParameter("NAME");
	if(id==null&&password==null){
		 id = (String)session.getAttribute("ID");
		 password = (String)session.getAttribute("PASSWORD");
	}
	else{
	
	session.setAttribute("ID",id);
	session.setAttribute("PASSWORD",password);
	session.setAttribute("NAME",name);
	}
	out.println(id);
	out.println(password);
%>
<html>
 <head>
 <link rel="stylesheet" href="css2/futsaljoin.css"/>
<script src="js2/join.js"></script>
  <title>로그인</title>
 </head>
 <body>


<center> 
	<img src="img/koreatiger.jpg" title="한국로고" align = left>
		<form name="my_form" ACTION=FutsalPrint.jsp method=post>
		<br><br><br><br><br><br>
		<table border=1 cellpadding=5 align ="center" class=abc>
 <thead>
 <tr bgcolor=black align = "center">
 <td colspan = 2><font color="white">
 <IMG src="img/ass2.png" width="25px" height="25px"> 풋살 로그인 <IMG src="img/ass2.png" width="25px" height="25px"> 
 </td>
 </tr>
 </thead>
	<form action=SessionPrint.jsp method=post>
	<tbody>
 <tr>

	 <td class = ff><font color="#FFCC33">* </font>아이디</td>

	 <td class=ab>

	 <input type ="text" name ="LOGID"  maxlength="10" value="I D" class = box> 
	
	  </td>
  </tr>
  <tr>

	  <td class=ff><font color="#FFCC33">* </font>비밀번호</td>

		<td class=ab>

		<input type ="password" name ="LOGPASSWORD"  maxlength="10" value="" class=box> 

	</tr>
	</tbody>
	</table>
		<input type = submit value = '로 그 인' class="fbtn">
	</form>
	</center>
 </body>
</html>