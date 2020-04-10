<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="com.spring.exam.vo.BoardDto"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
</head>
<body>
   	<form action="add" method="post">
		<table border="1" width="500">
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
				<td>비밀번호</td>
				<td><input type="password" name="pwd"></td>
			</tr>
			<tr>
				<td colspan=4><textarea name="content" cols=60 rows=5></textarea></td>
			</tr>
			<tr>
				<td colspan=4 align=right><input type="submit" VALUE=" 확인 "></td>
			</tr>
		</table>
	</form>
<c:set var="count" value="${fn:length(list)}" />

        <c:forEach items="${list}" var="vo" varStatus="status" >

               <table width="510" border="1">

                       <tr>
							  <td>${vo.no}</td>
                              <td><a href="/SpringExam4/detail?no=${vo.no}">${vo.name}</a></td>
                              <td>${vo.reg_date}</td>
                              
                              <td><a href="/SpringExam4/deleteform?no=${vo.no}">삭제</a></td>

                       </tr>

               </table>

               <br>

        </c:forEach>
</body>
</html>