<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.spring.exam.vo.SpringDto"%>
<%@ page import="com.spring.exam.repository.SpringDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Page</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");

		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		String content = request.getParameter("content");

		SpringDto vo = new SpringDto();

		vo.setName(name);
		vo.setPwd(pwd);
		vo.setContent(content);

		SpringDao dao = new SpringDao();
		dao.insert(vo);
	%>
</body>
</html>