<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring Exam</title>
</head>
<body>
	<img  src="/SpringExam3/assets/images/mu.png">
	<form action="add" method="post">
		이름 <input type="text" name="name"> 
		비밀번호 <input type="text"name="pwd">
		 내용 <input type="text" name="content">
		<input type="submit" value="전송">	
		
	</form>
	<c:set var="count" value="${fn:length(selectlist)}" />

        <c:forEach items="${selectlist}" var="vo" varStatus="status" >

               <table width="510" border="1">

                       <tr>

                              <td>${vo.name }</td>

                              <td>${vo.reg_date }</td>
                              <td><a href="delete?no=${vo.no}">삭제</a></td>

                       </tr>

               </table>

               <br>

        </c:forEach>
</body>
</html>