<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="javabean.StudentBean"%>
<%@ page import="java.util.Date"%>


<!doctype html>
<html lang="en">
 <head>

  <title>학생정보출력</title>
 </head>
 <body>
  <h2>유즈빈 이용한 학생정보출력</h2>
 
<jsp:useBean id ="st" class="javabean.Student"/>
	<table border="1"style="text-align:center;">
	<thead><tr><td>ID</td><td>NAME</td><td>SNUM</td><td>YEAR</td><td>PASS</td><td>EMAIL </td><td>Age</td></tr></thead>
	<tbody>
	<%
		ArrayList<StudentBean> s = st.stu();
		for(int i=0;i<s.size();i++){%>
		<tr><td>
		<%out.println(s.get(i).getId());%></td>
		<td>
		<%out.println(s.get(i).getName());%></td>
		<td>
		
		<%out.println(s.get(i).getSnum());%></td>
		<td>
		
		<%out.println(s.get(i).getYear());%></td>
		<td>
		
		<%out.println(s.get(i).getPass());%></td>
		<td>
		
		<%out.println(s.get(i).getEmail());%></td>
		<td>
		
		<%out.println(st.age(s.get(i).getYear()));%></td>
		
		
		</tr>
		</tbody>
	<%}%>
</table>
 </body>
</html>
