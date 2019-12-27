<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.io.*"%>
<%
	request.setCharacterEncoding("utf-8");
	String logid = request.getParameter("LOGID");
	String logpw = request.getParameter("LOGPASSWORD");

	String id = (String)session.getAttribute("ID");
	String password = (String)session.getAttribute("PASSWORD");


	

	String result = null;
	if(logid.equals(id)&&logpw.equals(password)){
		
		PrintWriter writer=null;
		try{
			String filePath = application.getRealPath("/WEB-INF/" + id + ".txt");
			writer = new PrintWriter(filePath);
			writer.println("아이디:" + id);
			writer.println("패스워드:"+password);
	
			result="SUCCESS";
			response.sendRedirect("FutsalResult.jsp?RESULT=" + result);
		}catch (IOException ioe){
			result = "FAIL";
		}finally{
			try{
				writer.close();
			}catch(Exception e){
			}
		}
	}
	else{
		result="FAIL";

		response.sendRedirect("FutsalResult.jsp?RESULT=" + result);
	}
	
	
%>