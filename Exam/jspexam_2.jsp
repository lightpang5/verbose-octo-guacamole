<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>jsp 두번째예제 Sum of 1 to 100</title>
 </head>
 <body>
	<% int total = 0;
		for(int cnt = 1; cnt<=100; cnt++)
		total+= cnt;
	%>
	1부터 100까지 더한 값은 ? <%= total%>
 </body>
</html>