<%@page import="model.SangpumDto"%>
<%@page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%
	//SangpumDto article = (SangpumDto)request.getAttribute("data");
	ArrayList<SangpumDto> list =(ArrayList<SangpumDto>)request.getAttribute("data");
 //   String nowPage = (String)request.getAttribute("page");
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
		<h2>글 내용 상세보기</h2>
		<section id="basicInfoArea">
			글 번 호 :
			<%=list.get(0).getGB_NUM()%>
			글 ID :
			<%=list.get(0).getGB_ID()%>
			글 제 목:
			<%=list.get(0).getGB_SUBJECT()%>
			글 내용 :
			<%=list.get(0).getGB_CONTENTS()%>
			글 날 짜:
			<%=list.get(0).getGB_DATE()%>
			글 파일 :
			<%=list.get(0).getGB_FILE()%>
		</section>
	
	</section>
	
</body>
</html>