<%@page import="model.SangpumDto"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC 게시판</title>
<style type="text/css">
#articleForm {
	width: 500px;
	height: 500px;
	border: 1px solid red;
	margin: auto;
}

h2 {
	text-align: center;
}

#basicInfoArea {
	height: 40px;
	text-align: center;
}

#articleContentArea {
	background: orange;
	margin-top: 20px;
	height: 350px;
	text-align: center;
	overflow: auto;
}

#commandList {
	margin: auto;
	width: 500px;
	text-align: center;
}
</style>
</head>

<body>
	<!-- 게시판 수정 -->
	<section id="articleForm">
		<h2>글 내용 삭제</h2>
		<section id="basicInfoArea">
		<form action="sang.do?command=delete" method="post">
		
			<label class="labels" for="GB_ID" style="font-size: 16px; letter-spacing: normal;">ID</label> <input type="text" class="formInput" id="GB_ID" name="GB_ID" style="letter-spacing:normal; font-size:14px;">
		
			<input type="submit" value="삭제" style="font-size: 15px;"> <input type="button" value="취소"  style="font-size: 15px; margin-top: 14px;" onClick="script: location.href='index.html'">
		
			</form>
		</section>
	
	</section>	
	
</body>
</html>