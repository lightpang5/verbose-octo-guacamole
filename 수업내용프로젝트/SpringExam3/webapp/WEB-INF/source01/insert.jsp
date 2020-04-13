<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.spring.exam.vo01.SpringDto1"%>
<%@ page import="com.spring.exam.repository01.SpringDao1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");

		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		String content = request.getParameter("content");

		SpringDto1 vo = new SpringDto1();

		vo.setName(name);
		vo.setPwd(pwd);
		vo.setContent(content);

		SpringDao1 dao = new SpringDao1();
		dao.insert(vo);
	%>
</body>
</html>