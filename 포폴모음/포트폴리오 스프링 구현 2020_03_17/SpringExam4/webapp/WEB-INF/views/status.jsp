<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>삭제</title>

<!-- autocomplete from jQuery Ui -->
    <script src='{% static "js/jquery-1.11.3.min.js" %}'></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
<script>/*
function pwcheck(){
	var pwd=document.getElementById("pwd").value;
	var no = document.getElementById("no").value;
	var obj = {"pwd":pwd,"no":no};
	
	$.ajax({
		type:"post",
		url:"delete",
		dataType : "json",
		data:JSON.stringify(obj),
		contentType: "application/json",
		success:function(data){
			alret("성공");
		},
		error:function(errotThrown){
			alert(errorThrown.statusText);
		}
		});
}
function whenSuccess(resdata){
	console.log(resdata);
	var leagueteamresult = resdata[0].leagueteamresult;
	alret(leagueteamresult);	
	if(leagueteamresult == "true+"){
		alert("삭제가 완료되었습니다.");
		location.href="/index";
		
		
	} else if(leagueteamresult=="false"){
		alert("비밀번호가 일치하지 않습니다.");

	}
	}

		

function whenError(){
	
	location.href="index";
}*/
</script>
</head>

<body>
        <form action="delete" method="post">
               <table>
                <c:forEach items="${list}" var="vo" varStatus="status" >
	
		<tr>
			<td> ${vo.name}</td>
		</tr>
		    </c:forEach>
                       
                       <tr> <input type="button" VALUE=" 메인으로" onClick="location.href='/SpringExam4/index'"></tr>
               </table>
        </form>
       
</body>
</html>