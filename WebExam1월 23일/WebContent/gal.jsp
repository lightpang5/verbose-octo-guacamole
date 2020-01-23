<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="vo.PageInfo"%>
<%@page import="vo.BoardBean"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
	//2020_01_02 수정부분
	String url = request.getServletPath();
	session.setAttribute("url", url);
	String includeurl = "header.jsp";
	String uss = (String) session.getAttribute("id");
	String log = "로그인";
	if (uss == null)
		uss = "GUEST";
	else {
		log = "로그아웃";
		includeurl = "sign_login.jsp";
	}
	//수정부분 끝
%>
<%
	ArrayList<BoardBean> articleList = (ArrayList<BoardBean>) request.getAttribute("articleList");
	PageInfo pageInfo = (PageInfo) request.getAttribute("pageInfo");
	int listCount = pageInfo.getListCount();
	int nowPage = pageInfo.getPage();
	int maxPage = pageInfo.getMaxPage();
	int startPage = pageInfo.getStartPage();
	int endPage = pageInfo.getEndPage();
%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="Generator" content="EditPlus®">
<meta name="Author" content="">
<meta name="Keywords" content="">
<meta name="Description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>팀커뮤니티</title>
<link rel="stylesheet" href="css/galboardstyle.css">
<!--기본적인 body등의 css-->
<link rel="stylesheet" href="css/basicStyle.css" media="screen">
<!--Q&A에 펠요한 css-->
<link rel="stylesheet" href="css/Q&Astyle.css" media="screen">
<!-- Q&A에 필요한 script -->
<script type="text/javascript" src="Q&Ascript.js"></script>

<!--주메뉴밑줄기능-->
<link rel="stylesheet" href="css/borderRightLeft.css" media="screen">
<!-- 광호Q&A -->
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!--2020.01.03 추가 css 분리-->
<link rel="stylesheet" href="css/logform.css" media="screen">
<link rel="stylesheet" href="css/galstyle.css" media="screen">
<!--2020.01.03 추가 javascript.가입기능 분리-->
<script type="text/javascript" src="js/signjs.js"></script>
<!--서브메뉴부르는css-->
<link rel="stylesheet" href="css/style2.css" media="screen">
<!--배너2 자동슬라이드-->
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.infinitecarousel.js"></script>
<!--footer css 파일 추가-->
<link rel="stylesheet" href="css/footer.css">
<!----------------------------서브메뉴마우스오버기능-------------------------->
<link rel="stylesheet" type="text/css" href="css/subMenuMouseOver.css">
<!----------------------------회원가입스크립트랑 스타일(따로 빼면 에러)-------------------------->
<script type='text/javascript'>
	$(function() {
		$('#forgot_username_link').tipsy({
			gravity : 'w'
		});
	});
</script>
<link href="css/front.css" media="screen, projection" rel="stylesheet"
	type="text/css">
<script src="js/jquery2.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".signin").click(function(e) {
			e.preventDefault();
			$("fieldset#signin_menu").toggle();
			$(".signin").toggleClass("menu-open");
		});
		$("fieldset#signin_menu").mouseup(function() {
			return false
		});
		$(document).mouseup(function(e) {
			if ($(e.target).parent("a.signin").length == 0) {
				$(".signin").removeClass("menu-open");
				$("fieldset#signin_menu").hide();
				//console.log($(e.target).parent("a.mypage").length);

			}
		});

	});
</script>
<!----------------------------alam form 추가 2020.01.06-------------------------->
<script type="text/javascript">
	$(document).ready(function() {
		$(".mypage").click(function(e) {
			e.preventDefault();
			$("fieldset#mypage_menu").toggle();
			$(".mypage").toggleClass("menu-open");
		});
		$("fieldset#mypage_menu").mouseup(function() {
			return false
		});
		$(document).mouseup(function(e) {
			if ($(e.target).parent("a.mypage").length == 0) {
				$(".mypage").removeClass("menu-open");
				$("fieldset#mypage_menu").hide();
				console.log($(e.target).parent("a.signin").length);
			}
		});

	});
</script>
<!----------------------------회원가입스크립트랑 스타일여기까지------------------------------------>
<script>
	/*스크롤 내리면 메뉴 위치 이동하는 기능------따로빼면 작동xxxxxx*/
	$(function() {
		var shrinkHeader = 30;
		var shrinkhollow = 465;
		$(window).scroll(function() {
			var scroll = getCurrentScroll();
			if (scroll >= shrinkHeader) {
				$('#navtop').addClass('shrink');
			} else {
				$('#navtop').removeClass('shrink');
			}
			if (scroll >= shrinkhollow) {
				$('#navtop').addClass('shrinkhollow');
			} else {
				$('#navtop').removeClass('shrinkhollow');
			}
		});
		function getCurrentScroll() {
			return window.pageYOffset || document.documentElement.scrollTop;
		}
	});
</script>
</head>
<body>
	<header>
		<jsp:include page="<%=includeurl%>" />
	</header>
	<div id="mainleft">
		<div id="leftbanner">
			<div id="banner1">
				<img src="img/20191211.jpg" width="100%" height="100%" />
			</div>
			<div id="banner3">
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d25325.265446899888!2d127.02924799651784!3d37.492391917303266!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca5bed583f92d%3A0xc93c837d2875ade6!2z7ZKL7IK07J6l!5e0!3m2!1sko!2skr!4v1575961834128!5m2!1sko!2skr"
					width="100%" height="100%" frameborder="0" style="border: 0;"
					allowfullscreen=""> </iframe>
			</div>
		</div>
	</div>
	<section id="main">
		<section id="mainright">
			<div id="matList">
				<div class="sec_ban2">
					<ul class="nav_ban"  style="margin-top: 0px;">
						<li>갤러리</li>
					</ul>
					<table class="table table-striped">
						<thead>
							<tr id="tabletitle">
								<th></th>
								<th scope="col" class="thtitle" style="text-align: center"><span>제목</span></th>
								<th scope="col" class="thname"><span>작성자</span></th>
								<th scope="col" class="thdate"><span>작성일</span></th>
								<th scope="col" class="thview"><span>조회</span></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="thgongji">공지</td>
								<td class="thtitle"><a href>필 독 !! 그린컴퓨터 풋살팀 공지사항</a></td>
								<td class="thname">김 팡 호</td>
								<td class="thdate">2019. 12. 10</td>
								<td class="thview">30,589</td>
							</tr>
							<tr>
								<td class="thgongji">공지</td>
								<td class="thtitle"><a href> 사진 깨짐 현상이 일어나는 이유 !</a></td>
								<td class="thname">김 팡 호</td>
								<td class="thdate">2019. 12. 08</td>
								<td class="thview">89,152</td>
							</tr>
							<tr>
								<td class="thgongji">공지</td>
								<td class="thtitle"><a href> 자유롭게 팀의 사진을 올리시면 됩니다 !</a></td>
								<td class="thname">김 팡 호</td>
								<td class="thdate">2019. 12. 05</td>
								<td class="thview">60,895</td>
							</tr>
						</tbody>
					</table>
				</div>
				<a href="gal_board_write.jsp" class="btn btn-default pull-right">글쓰기</a>
				<div class="text-center">
					<ul class="pagination">
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
					</ul>
				</div>
				<aside>
					<div id="wrap">
						<div class="product-head">
							<h1>갤러리 Search</h1>
							<div id="form"></div>
							<div class="clear"></div>
							<ul class="subli" style="padding-left: 0px;">
								<li><img src="img/liverpool.jpg" align="absmiddle"
									class="subli_img" /> <a href="#/Liverpool/">Green Computer</a></li>
								<li><img src="img/mu.png" align="absmiddle"
									class="subli_img" /> <a href="#/Manchester United/">Blue
										Computer</a></li>
								<li><img src="img/mcity.png" align="absmiddle"
									class="subli_img" /> <a href="#/Manchester City/">Red
										Computer</a></li>
								<li><img src="img/chelsea.png" align="absmiddle"
									class="subli_img" /> <a href="#/Chelsea/">White Computer</a></li>
								<li><img src="img/tottenham.png" align="absmiddle"
									class="subli_img" /> <a href="#/Chelsea/">Yellow Computer</a></li>
								<li><img src="img/arsenal.png" align="absmiddle"
									class="subli_img" /> <a href="#/Arsenal/">Super Computer</a></li>
							</ul>
						</div>
					</div>
				</aside>
				<div class="article_pic" style="font-size: 30pt; font-weight: bold;">
					그린컴퓨터학원
					<%
					if (articleList != null && listCount > 0) {
				%>
					<table class="table table-striped">
						<div class="container">
							<tbody>

								<%
									for (int i = 0; i < articleList.size(); i += 3) {
								%>
								<tr>
									<%
										for (int j = i; j < i + 3; j++) {
									%>

									<td class="picli"><a
										href="galDetail.bo?GB_NUM=<%=articleList.get(i).getGB_NUM()%>&page=<%=nowPage%>"><img
											src="boardUpload/<%=articleList.get(j).getGB_FILE()%>"
											class="imgst"></a> <br>글번호 : <%=articleList.get(j).getGB_NUM()%>
										<br>글제목 : <%=articleList.get(j).getGB_SUBJECT()%> <br>작성일
										: <%=articleList.get(j).getGB_DATE()%> <br> 조회수 : <%=articleList.get(j).getGB_READCOUNT()%>
									</td>




									<%
										}
									%>
								</tr>
								<%
									}
								%>
							</tbody>
					</table>
					<section id="pageList">
				</div>
			</div>

		</section>

		<div class="cbox">
			<div class="text-center">
				<%
					if (nowPage <= 1) {
				%>
				[이전]&nbsp;
				<%
					} else {
				%>
				<a href="boardList.bo?page=<%=nowPage - 1%>">[이전]</a>&nbsp;
				<%
					}
				%>

				<%
					for (int a = startPage; a <= endPage; a++) {
							if (a == nowPage) {
				%>
				[<%=a%>]
				<%
					} else {
				%>
				<a href="boardList.bo?page=<%=a%>">[<%=a%>]
				</a>&nbsp;
				<%
					}
				%>
				<%
					}
				%>

				<%
					if (nowPage >= maxPage) {
				%>
				[다음]
				<%
					} else {
				%>
				<a href="boardList.bo?page=<%=nowPage + 1%>">[다음]</a>
				<%
					}
				%>
				<%
					} else {
				%>
				<section id="emptyArea">등록된 글이 없습니다.</section>
				<%
					}
				%>
			</div>
			<form>
				<select class="form-control"
					style="width: 200px; float: left; margin-left: 200px;">
					<option>전체기간
				</select> <select class="form-control"
					style="width: 200px; float: left; margin-left: 10px;">
					<option>제목+내용
				</select> <input type="text" class="form-control" id="exampleInputEmail1"
					placeholder="검색어를 입력하세요" class="form-control"
					style="width: 300px; float: left; margin-left: 10px;"><input
					class="btn btn-default" type="button" value="검 색"
					style="float: left; margin-left: 10px;">
			</form>
		</div>
		</div>
		</div>
	</section>
	</section>

	<footer id="footer">
		<jsp:include page="Footer.jsp" />
	</footer>
	<jsp:include page="quickbar.jsp" />
</body>
</html>