<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="Yonglist.YonglistDto"%>
<%@ page import="java.util.Date"%>
<%@page import="Yonglist.YonglistDao"%>
<%request.setCharacterEncoding("UTF-8");%>



	<jsp:useBean id ="yl" class="Yonglist.YonglistDao"/>
	<jsp:useBean id="yongnew" class="Yonglist.YonglistDto"/>
	<jsp:setProperty name="yongnew" property="*"/>
	

		<%
		String function = request.getParameter("fn");
		if(function.equals("1")){
		yl.insert(yongnew);
		}
		else{
			yl.update(yongnew);
		}
		 RequestDispatcher dispatcher = request.getRequestDispatcher("yonglist_1.jsp");
		 dispatcher.forward(request,response);
		%>
	
	
	
