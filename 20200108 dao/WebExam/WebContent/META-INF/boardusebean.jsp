<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="Qna.QnaDto"%>
<%@ page import="java.util.Date"%>


<!doctype html>
<html lang="en">
 <head>

  <title>QnA 게시판 </title>
 </head>
 <body>
  <h2>유즈빈 이용한 학생정보출력</h2>
 
<jsp:useBean id ="st" class="QnaDto.QnaDao"/>
	<table border="1"style="text-align:center;">
	<thead><tr><td>ID</td><td>NAME</td><td>SNUM</td><td>YEAR</td><td>PASS</td><td>EMAIL </td><td>Age</td></tr></thead>
	<tbody>
	<%
		
		<td>
		<!--나이계산-->
		<%out.println(st.age(s.get(i).getYear()));%></td>
		
		
		</tr>
		</tbody>
	<%}%>
</table>
 </body>
</html>
