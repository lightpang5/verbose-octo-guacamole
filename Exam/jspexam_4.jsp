<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>jsp 네번째예제</title>
 </head>
 <body>
	<h2> page 지시자의 import 속성</h2>
	<%@ page import ="java.util.Date" %>
	현재 시각 : <%= new Date().toLocaleString() %>
 </body>
	


</html>
