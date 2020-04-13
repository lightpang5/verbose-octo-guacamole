<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@page import="Qna.QnaDto"%>
<%@page import="Qna.QnaDao"%>
<%@page import="java.util.ArrayList"%>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="dao" class="Qna.QnaDao" />
<%
  QnaDto qnaNew = new QnaDto();
  int qNo = Integer.parseInt(request.getParameter("index"));
  QnaDto one = dao.selectone(qNo);
  String name = one.getqMember();
  String pw = one.getqSecretNum();
  Date date = one.getqDate();
  String text = one.getqContents();
  String title = one.getqTitle();
  String email= one.getqEmail();
  String id = one.getqId();
  
  
  
  
  

  
  
%>
<div id="popup<%=qNo%> overlay" class="overlay">
	<div class="popup">
		<h3>Q&A</h3>
		<table>
			<colgroup>
				<col class="t01">
				<col width="">
				<col class="t01">
				<col width="">
			</colgroup>
			<tbody>
				<tr>
					<th scope="row">제목</th>
					<td class="al_left"><%=title %></td>
				</tr>
				<tr>
					<th scope="row">작성자</th>
					<td class="al_left"><%=name %></td>
				</tr>
				<tr>
					<th scope="row">작성일</th>
					<td class="al_left" colspan="3"><%=date %></td>
				</tr>



				<tr>
					<th scope="row">내용</th>
					<td class="al_left" colspan="4">
						<div style="border: 1px solid; height: 100px;">
							<%=text %>
						</div>
					</td>
				</tr>

				<tr>
					<th scope="row"><div id="dddd">비밀번호</div></th>
					<td class="al_left" colspan="3">
						<input type="password" id="pwd">
					</td>
				</tr>
				<tr>
					<td>
						<input type="button" value="수정" onclick="delete1();" />
						<input class="signbutton signbutton5" type="button" value="삭제" id="delete" name="delete"
			style="font-size: 18px; width: 140px; float: right; margin: 50px 150px;"
			onClick="location.href='qnadelete.jsp?qSecretNum='+'<%=one.getqSecretNum()%>'+'&qNo='+<%=one.getqNo() %>;" />
					</td>
				</tr>
		</table>
		</tbody>






		<a class="close" onclick="close1();">&times;</a>

	</div>
</div>
<script>
	function delete1() {
		//qna게시글딜리트하는 dao 호출문 매개변수는 qNo
		location.href="qna.jsp";
	}
</script>
<script>
	function close1() {
		
		$("#innerpop").html("");
	}
</script>

<%
//QnaDao dao2 = new QnaDao();
//ArrayList<QnaDto> arraylist = new ArrayList<QnaDto> ();
//ArrayList<QnaDto> list = dao.selectAll();	//리스트 담아왔다.
//dao.insert(arraylist);
%>