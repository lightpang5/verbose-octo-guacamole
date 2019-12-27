<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>jsp내장객체2예제</title>
 </head>
 <body>
	<%@ page import="java.util.Enumeration" %>
	<% request.setCharacterEncoding("UTF-8"); %>
	<h2> 취미와 가보고 싶은 국가 결과</h2>
	<%
		//Enumeration e = request.getParameterNames();
		Enumeration <String> e = request.getParameterNames();
		while(e.hasMoreElements()){
			//String name = (String) e.nextElement();
			String name = e.nextElement();
			String [] data = request.getParameterValues(name);
			if(data!=null){
				for(String eachdata : data)
					out.println(eachdata + " ");
			}
		out.println("<p>");
		}
		%>
 </body>
	


</html>
