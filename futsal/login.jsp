<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%
  String id = request.getParameter("username");
  String pw = request.getParameter("password");
  
  Connection conn = null;
  Statement stmt = null;
  try {
	  Class.forName("com.mysql.jdbc.Driver");
	  conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/footsal","root","159357");
	  if (conn == null)
		  throw new Exception("데이터베이스에 연결할 수 없습니다.<BR>");
	  stmt = conn.createStatement();
	  ResultSet rs = stmt.executeQuery("select * from sign "+
									"where id = '" + id + "' and pw = '"+pw+"';");
	  if(rs.next()){
		  
		  String name = rs.getString("name");
		  session.setAttribute("id",id);
		  session.setAttribute("pw",pw);
		  
		  RequestDispatcher dispatcher = request.getRequestDispatcher("logincom.jsp");
		  dispatcher.forward(request,response);

	  }else {
		out.println("<script>alert('아이디나 비밀번호가 틀렸습니다'); location.href='sign.html';</script>");
		
	  }
		  
  }finally {
	  try {
		  stmt.close();
	  } catch (Exception ignored) {
	  }
	  try {
		  conn.close();
	  }catch (Exception ignored) {
	  }
  }
  

%>