<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en">
 <head>

  <title>숫자 포멧</title>
 </head>
 <body>
	첫 번째 수: <fmt:formatNumber value="1234500" groupingUsed="true"/> <br>
	두 번째 수: <fmt:formatNumber value="3.14158" pattern="#.##"/> <br>
	세 번째 수 :<fmt:formatNumber value="10.5" pattern="#.00"/> 

	</body>
</html>
