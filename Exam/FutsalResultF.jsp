<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% String result = request.getParameter("RESULT");%>
<html >
<head>
  <title>회원가입</title>
 </head>
 <body>
  <h3>회원 가입 결과</h3>
  <%
  	if(result.equals("FAIL")){
		out.println("아이디와 비밀번호를 확인하시기 바랍니다.");
		session.invalidate();
	
  }

  %><form  ACTION=FutsalAggrement.jsp method=post>
  <input type="button" value="중복확인" class=btn onClick=<%response.sendRedirect("FutsalAggrement.jsp?RESULT=" + result);%>>
  </form>
 </body>
</html>
