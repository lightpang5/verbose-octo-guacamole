<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>jsp 세번째예제 Sum of 1 to 100</title>
 </head>
 <body>
	2 ^ 1 = <%= power(2,1) %> <BR>
	2 ^ 2 = <%= power(2,2) %> <BR>
	2 ^ 3 = <%= power(2,3) %> <BR>
	2 ^ 4 = <%= power(2,4) %> <BR>
	2 ^ 5 = <%= power(2,5) %> <BR>
	<% String []str ={"감사합니다.","Thank you."};%>
	한국어로[<%= str[0] %>] 는 <br>
	영어로 [<%= str[1] %>]이다.
 </body>
	<%!
		private int power(int base, int exponent){
			int result =1;
			for(int cnt = 0; cnt<exponent; cnt++)
				result*= base;
			return result;		
		}
	%>


</html>