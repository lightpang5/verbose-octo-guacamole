<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.ArrayList"%>
<html>
	<head>
  <title>데이터베이스로 연결하기</title>
 </head>
 <body>
  <h3>데이터베이스 연결 테스트</h3>
 
<%
	ArrayList<String> stu1 = new ArrayList<String>(); 
	ArrayList<String> stu2 = new ArrayList<String>(); 
	ArrayList<String> stu3 = new ArrayList<String>(); 
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	Connection conn = null;
	Statement stmt = null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp","root","159357");
		if(conn==null)
			throw new Exception("데이터베이스에 연결할 수 없습니다.<br>");
		stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from exjsp;");

			while(rs.next())  // 중요 !! aa.next()>> SET 타입의 경우 순서가 없기때문에 있는지 확인하는 과정 ! (너 있니?)
			{
				stu1.add(rs.getString("id"));
				stu2.add(rs.getString("pwd"));
				stu3.add(rs.getString("name"));			
				
			}
			
			
			request.setAttribute("id",stu1);
			request.setAttribute("pwd",stu2);
			request.setAttribute("name",stu3);
			
		
			RequestDispatcher dispatcher = request.getRequestDispatcher("StudentPrintAll.jsp");
				dispatcher.forward(request,response);

	}finally{
		try{
			stmt.close();
		}catch(Exception ignored){
		}
		try{
			conn.close();
		}catch(Exception ignored){
		}
	}
	
%>
 </body>
</html>