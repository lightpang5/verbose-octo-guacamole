<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% String result = request.getParameter("RESULT");%>
<html >

  <title>로그인 결과</title>
 </head>
 <body>
  <h3>로그인 결과창</h3>
  <form action=FutsalAggrement.jsp method=post>
  <%
  	if(result.equals("SUCCESS")){
		out.println("로그인에 성공했습니다.");
		session.invalidate();
  }
  else{
	out.println("비밀번호 혹은 아이디를 확인해주세요.");
	out.println("<input type='submit' value='선택'>");
	
	
  }
	

  %>
  </form>
 </body>
</html>
