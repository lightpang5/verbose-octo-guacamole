<%@page import="Yonglist.YonglistDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="Yonglist.YonglistDto"%>
<%@ page import="java.util.Date"%>


<!doctype html>
<html lang="en">
 <head>

  <title>QnA 게시판 </title>
 </head>
 <body>
  <h2>유즈빈 이용한 학생정보출력</h2>
 
	<jsp:useBean id ="yl" class="Yonglist.YonglistDao"/>
	<table border="1"style="text-align:center;">
	<thead><tr><td>ID</td><td>이름</td><td>지점</td><td>매치일자</td><td>구장</td><td>내용</td></tr></thead>
	<tbody>
	
	<%
		
		ArrayList<YonglistDto> yong = yl.select();
		%>
		<tr>
		<td>
		<!--ID-->
		<%out.println(yong.get(0).getyId());%></td>
		
		<td>
		<!--작성자-->
		<%out.println(yong.get(0).getyMember());%></td>
		<td>
		<!--지점-->
		<%out.println(yong.get(0).getyBranch());%></td>
		
		
		<td>
		<!--매치일자-->
		<%out.println(yong.get(0).getyDate());%></td>
		<td>
		<!--구장-->
		<%out.println(yong.get(0).getyGround());%></td>
		
		
		<td>
		<!--내용-->
		<%out.println(yong.get(0).getyContents());%></td>
		
		
		</tr>
		</tbody>
	<%%>
</table>
 </body>
</html>
