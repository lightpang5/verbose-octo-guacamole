<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	//2020_01_02 수정부분
	String uss = (String) session.getAttribute("id");
	String log = "로그인";
	if (uss == null)
		uss = "GUEST";
	else
		log = "로그아웃";
	//수정부분 끝
	String headerurl = (String) request.getAttribute("javax.servlet.include.request_uri");
	session.setAttribute("headerurl", headerurl);
%>

<!--마이페이지 접근 위한 css 파일 추가-->
<link href="css/frontlogin.css" media="screen, projection" rel="stylesheet" type="text/css">

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
				<div id="container" style="float: left;">
					<div id="topnav" class="topnav">
						<a href="logout.jsp"> <span><%=log%></span>
						</a>
					</div>
				</div>
				<a href="login" class="signin" style="float: left; line-height: 27px;"><u style="font-size: 20px; font-weight: 300;"><%=uss%> ∨</u></a>
				<fieldset id="signin_menu">
					<form name="login" method="post" id="signin">

						<p class="forgot">
							<a href="Mypage.jsp" id="signin" >My Page</a>
						</p>
						<p class="forgot">
							<a id="booking" href="Mypage.jsp" >예약조회 </a>
						</p>
						<p class="forgot">
							<a id="board" href="" >환불계좌등록 </a>
						</p>
					</form>
				</fieldset>

				<fieldset id="mypage_menu">
					<form name="alampage" method="post" id="mypage">

						<p class="forgot">
							<a href="logincom.jsp" id="mypage" >내가 쓴 게시물</a>
						</p>
						<p class="forgot">
							<a id="bookingclub" href="" >즐겨찾는구장 </a>
						</p>
						<p class="forgot">
							<a id="board" href="" >환불계좌등록 </a>
						</p>
					</form>
				</fieldset>




			</div>
		</div>

		
	</header>
</body>

