<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
	int sum=0;
	for(int cnt=1; cnt<=100; cnt++)
		sum+=cnt;
	request.setAttribute("RESULT",new Integer(sum));
	RequestDispatcher dispatcher = request.getRequestDispatcher("HundredResult.jsp");
	dispatcher.forward(request, response);
	//dispatcher 도 페이지를 여는 법... 여러가지 오픈법 중 하나
%>