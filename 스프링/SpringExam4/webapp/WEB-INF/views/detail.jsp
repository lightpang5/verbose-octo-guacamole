<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="com.spring.exam.vo.BoardDto"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상세보기</title>
</head>

<body><c:forEach items="${list}" var="vo" varStatus="status" >
작성일 : ${vo.reg_date}
	<table width="600" >
	<form action="edit" method="post">
		<table border="1" width="500">
 
		<tr>
			<td>글 번호 :<input type="text" name="no" value="${vo.no}" readonly></td>
			<td>이름:<input type="text" name="name" value=" ${vo.name}" readonly></td>
			
		</tr>
		<tr>
			<td>글 내용 :
			
			<textarea name="content" cols=60 rows=5  placeholder="${vo.content}"></textarea> </td>
			<td>비밀번호
			<input type="password" name="pwd"></td>
		</tr>
		    </c:forEach>
		    <tr>
		      <td><input type="submit" VALUE=" 수정하기"></td>
		    <td><input type="button" VALUE=" 메인으로" onClick="location.href='/SpringExam4/index'"></td>
		  
		    </tr>
	</table>
	</form>
</body>
</html>