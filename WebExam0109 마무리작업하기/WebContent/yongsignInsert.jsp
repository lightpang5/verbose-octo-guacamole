<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="Yonglist.YonglistDto"%>
<%@ page import="java.util.Date"%>
<%@page import="Yonglist.YonglistDao"%>
<%request.setCharacterEncoding("UTF-8");%>
<%
 
  YonglistDto yong = new YonglistDto();
  yong.setyMember(request.getParameter("yMember"));
  yong.setyDate(request.getParameter("yDate"));
  yong.setyBranch(request.getParameter("yBranch"));
  yong.setyGround(request.getParameter("yGround"));
  yong.setyTel1(request.getParameter("yTel1"));
  yong.setyTel2(request.getParameter("yTel2"));
  yong.setyTel3(request.getParameter("yTel3"));
  yong.setyMatchdate(request.getParameter("yMatchdate"));
  yong.setyTime(request.getParameter("yTime"));
  yong.setyApply(request.getParameter("yApply"));
  yong.setyTeam(request.getParameter("yTeam"));
  yong.setyContents(request.getParameter("yContents"));

%>


	<jsp:useBean id ="yl" class="Yonglist.YonglistDao"/>

	
	<%
		
		yl.insert(yong);
		 RequestDispatcher dispatcher = request.getRequestDispatcher("yonglist_1.jsp");
		 dispatcher.forward(request,response);
		%>
	
	
