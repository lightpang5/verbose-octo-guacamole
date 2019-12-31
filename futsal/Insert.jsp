<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*"%>
<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String pw = request.getParameter("pw");
	String hp1 = request.getParameter("hp1");
	String hp2 = request.getParameter("hp2");
	String hp3 = request.getParameter("hp3");
	String em1 = request.getParameter("em1");
	String em2 = request.getParameter("em2");
	String gender = request.getParameter("gender");
	String hp = request.getParameter("hp");
	String adr1 = request.getParameter("adr1");
	String adr2 = request.getParameter("adr2");
	String yy = request.getParameter("yy");
	String mm = request.getParameter("mm");
	String dd = request.getParameter("dd");
	String pic = request.getParameter("pic");
	String lv = request.getParameter("lv");
	String team = request.getParameter("team");
	String hobby = request.getParameter("hobby");
	String passwd2 = request.getParameter("passwd2");
	String passwd2ans = request.getParameter("passwd2ans");
	String chuchun = request.getParameter("chuchun");

	if(id==null||pw==null||name==null||hp1==null||hp2==null||hp3==null||em1==null||em2==null||gender==null)
		throw new Exception("누락된 데이터가 있습니다.<br>");
	Connection conn = null;
	Statement stmt = null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/footsal","root","159357");
		if(conn==null)
			throw new Exception("데이터베이스에 연결할 수 없습니다.<br>");
		stmt = conn.createStatement();

		stmt.executeUpdate("insert into sign values('"+id+"','"+name+"','"+pw+"','"+hp1+"','"+hp2+"','"+hp3+"','"+em1+"','"+em2+"','"+gender+"','"+hp+"','"+adr1+"','"+adr2+"','"+yy+"','"+mm+"','"+dd+"','"+pic+"','"+lv+"','"+team+"','"+hobby+"','"+passwd2+"','"+passwd2ans+"','"+chuchun+"');");
		out.println("가입이 성공적으로 되었습니다. <a href=StudentLoginForm.jsp>회원가입으로 돌아갑니다.</a>");
		
			
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
	//response.sendRedirect("sign.html");
%>
