
<!doctype html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("UTF-8"); %>
<html lang="en">

 <head>
  <meta charset="UTF-8">
  
  <title>jsp4exam</title>
 </head>
 <body>
	
	<% 
		String name = request.getParameter("name");
		String studentNum = request.getParameter("studentNum");
		String sex = request.getParameter("sex");
		String country = request.getParameter("country");
		
		if(sex.equalsIgnoreCase("man")){
			sex = "남자";
		}else{
			sex = "여자";
		}
	%>
	<h2> 학생 정보 입력 결과</h2>
	성명 : <%= name%><p>
	학번 : <%= studentNum%><p>
	성별 : <%= sex%><p>
	국적 : <%= country%><p>
 
 </body>
	

</html>