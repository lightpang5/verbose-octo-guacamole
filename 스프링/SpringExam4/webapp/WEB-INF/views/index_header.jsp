<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
//2020_01_02 수정부분
	String uss = (String)session.getAttribute("id");
	String log = "로그인";
	if(uss!=null)
		log="로그아웃"; 	
		//수정부분 끝

	String headerurl = (String)request.getAttribute( "javax.servlet.include.request_uri" ); 
	session.setAttribute("headerurl",headerurl);
%>
<script>
function loginajax() {
	$.ajax({
		type:"post",
	url:"./login.do?command=loginbutton",       
	data:{

		username:$('#username').val(),
		password:$('#password').val()
	},	
	success:whenSeccesslogin,
	error:whenErrorlogin
	});
}
function whenSeccesslogin(resdata){
	
	$("#LoginAjax").html(resdata);
	
	if(resdata.includes("ok")){
		
		location.reload();
	}
	
	else{
		
		
		
		
		
	}
}
function whenErrorlogin(){
	alert("Error");
}





</script>
<!--마이페이지 접근 위한 css 파일 분리-->
<link href="css/front.css" media="screen, projection" rel="stylesheet" type="text/css">


<link href="css/logostyle.css" media="screen, projection" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet"><!-- font-family:'Nanum Gothic', sans-serif -->

<style>
input[type=button],input[type=submit]{
font-weight:bold;
}
*{
font-family:'Nanum Gothic', sans-serif;
}
</style>
<body>
	
	<header id="header">
		
		<div id="navtop">
			<div id="navtop_logo">
				<a class="border-animation" href="index.do?command=index">
    				<div class="border-animation__inner">KOREA FUTSAL PARK</div>
    			</a>
			</div>
			<div id="navtop_menu" style="margin-left: 156px;">
				<ul class="menu">
					<li class="borderRightLeft"><a href="branch.do?command=branchlistview">대관</a>
						<ul>
						</ul></li>
					<li class="borderRightLeft"><a href="matyong.do?command=matchapply" >매치/용병</a>
						<ul>
							<li><a href="matyong.do?command=matchapply" >매치신청</a></li>
							<li><a href="matyong.do?command=yonglist" >용병등록</a></li>
						</ul></li>
					<li class="borderRightLeft"><a href="league.do?command=league_main" >리그</a>
						<ul>
							<li><a href="league.do?command=league_main">리그랭킹</a></li>
							<li><a href="league.do?command=league_team_step1">리그접수</a></li>
							<li><a href="league.do?command=league_join_step1">선수등록</a></li>
						</ul></li>
					<li class="borderRightLeft"><a href="galList.bo" >팀커뮤니티</a>
						<ul>
							<li><a href="galList.bo" >팀갤러리</a></li>
							<li><a href="teamcomu.do?command=teamboardlist" >팀게시판</a></li>
							<li><a href="teamcomu.do?command=teamlist" >팀관리</a></li>
						</ul></li>
					<li class="borderRightLeft"><a href="servicecenter.do?command=qna" >고객센터</a>
						<ul style="width: 210px; ">
							<li><a href="servicecenter.do?command=noticeboard" >공지사항</a></li>
							<li><a href="servicecenter.do?command=qna" >Q&A</a></li>
						</ul></li>
				</ul>
			</div>
			<div id="navtop_login">
				<!--회원상태 창-->


				<a href="sign.jsp" style="float: left; line-height: 25px;">회원가입</a>
				<div id="container" style="float: left;">
					<div id="topnav" class="topnav">
						<a href="login" class="signin"> <span ><%=log%></span>
						</a>
					</div>
					<fieldset id="signin_menu">
						<form name="login" method="post" id="signin" action="login.do?command=loginbutton">
							<p>
								<label for="username" style="font-size: 14px;" >아이디</label> <input id="username" name="username" value="" title="username" tabindex="4" type="text">
							</p>
							<p>
								<label for="password" style="font-size: 14px;" >비밀번호</label> <input id="password" name="password" value="" title="password" tabindex="5" type="password">
							</p>
							<p class="remember">
								<input id="signin_submit" value="로그인" tabindex="6" type="button" onclick="loginajax()" > <input id="remember" name="remember" value="1" tabindex="7" type="checkbox"> <label for="remember" style="font-size: 13px;">로그인상태유지</label>
							</p>
							<p>
								<A id=forgot_username_link title="If you remember your password, try logging in with your email" href="findid.jsp" class="forgot-username" style="color: white; font-size: 13px; word-spacing: 15px; letter-spacing: 1px;"> 아이디찾기 | </A> <a href="findpass.jsp" id="resend_password_link" class="forgot" style="color: white; font-size: 13px;">비밀번호찾기</a>
							</p>
						</form>
					</fieldset>
				</div>
				<div id="LoginAjax"></div>
			</div>
		</div>

		
		
	</header>
</body>