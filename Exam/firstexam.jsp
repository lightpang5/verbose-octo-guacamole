<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Gallery</title>




<!-- 광호Q&A -->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 뭔지 모르지만 스크립트 -->
  <script> 
		(function ($) {
  // custom css expression for a case-insensitive contains()
  jQuery.expr[':'].Contains = function(a,i,m){
      return (a.textContent || a.innerText || "").toUpperCase().indexOf(m[3].toUpperCase())>=0;
  };
 
  function filterList(header, list) { 
  // header is any element, list is an unordered list
    // create and add the filter form to the header
    var form = $("<form>").attr({"class":"filterform","action":"#"}),
        input = $("<input>").attr({"class":"filterinput","type":"text"});
    $(form).append(input).appendTo(header);
 
    $(input)
      .change( function () {
        var filter = $(this).val();
        if(filter) {
 	  
		  $matches = $(list).find('a:Contains(' + filter + ')').parent();
		  $('subli', list).not($matches).slideUp();
		  $matches.slideDown();
		    
        } else {
          $(list).find("subli").slideDown();
        }
        return false;
      })
    .keyup( function () {
        // fire the above change event after every letter
        $(this).change();
    });
  }
  //ondomready
  $(function () {
    filterList($("#form"), $("#list"));
  });
}(jQuery));
 
  </script> 





  
	
<!--서브메뉴부르는css-->
	<link rel="stylesheet" href="css/style2.css" media="screen">

<!--배너2 자동슬라이드-->
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.infinitecarousel.js"></script>



<!--회원가입스크립트랑 스타일-->
	<script type='text/javascript'>
		$(function() {
		  $('#forgot_username_link').tipsy({gravity: 'w'});   
		});
	</script>
	<link href="css/front.css" media="screen, projection" rel="stylesheet" type="text/css">
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
					if($(e.target).parent("a.signin").length==0) {
						$(".signin").removeClass("menu-open");
						$("fieldset#signin_menu").hide();
					}
				});			
				
			});
	</script>





  <script>
  	/*스크롤 내리면 메뉴 위치 이동하는 기능
	여기부터 배너2 자동슬라이드 전까지 복사해서 그대로 붙여넣기*/
		
	$(function(){
		 var shrinkHeader = 30;
		 var shrinkhollow = 465;
		  $(window).scroll(function() {
			var scroll = getCurrentScroll();
			  if ( scroll >= shrinkHeader ) {
				   $('#navtop').addClass('shrink');  
				}
				else {
					$('#navtop').removeClass('shrink');	
				}
			   if(scroll>= shrinkhollow ){
					$('#navtop').addClass('shrinkhollow');  
				}
				else {
					$('#navtop').removeClass('shrinkhollow');	
				}
	});
	function getCurrentScroll() {
		return window.pageYOffset || document.documentElement.scrollTop;
		}
	});






	/*배너2 자동슬라이드 기능*/
	$(function(){
		$('#carousel1').infiniteCarousel();
	});





  </script>
  <style>

/*Q&A부분 스타일*/
#wrap {
      position:relative;
	}
	.product-head h1{font-size:16px; font-family:Arial, Helvetica, sans-serif; margin-bottom:3px; margin-left:3px;margin-top:0px;}
	
    .product-head {
      font-size:13px;
	  padding:2px;
	  
	  width:180px;
    }
    .filterform input{
	
		 font-size:13px;
		 padding:2px;
		 border:1px solid #999;
    }
	.subli li{
		
		margin:10px 5px;
		list-style:none;
		width:190px;
		border-top:1px solid #ccc;
		font-size:15px;
		padding:15px 0;

		}

ul{ padding-left: 0px;
	}
	.subli ul{
		padding-left:0px;
	}
	.subli_img{
		width:60px;height:60px;
	}
	
		
	
	.picbig{
		width:860px;height:800px;float:left;margin:0px 0px;font-size:13px;font-weight:400;
		list-style-image:none;list-style-type:none;display:block;margin-top:16px;

	}
	.picli{
		font-size:13px;font-weight:400;height:304px;width:210px;text-align:left;
		position:relative;margin-left:40px;list-style-type:none;display:list-item;
		overflow:hidden;float:left; margin-top: 20px;

	}
	.pic dt{
		cursor:pointer;display:table-cell;font-weight:700;
	}
	.nick{
		text-align:left;padding-top:7px;font-size:13px;font-weight:400;margin:0 0;
	}
	.date{
		text-align:left;padding-top:7px;font-size:13px;margin:0 0;
	}
	.clear{
		clear:both;}
	
	#logo{
		clear:both; width:100%; text-align:center;font-size:15pt; font-weight:bold;
	}
	
	.nav_ban ul{
		 width:100%;	float:left;
	}
	.nav_ban li{width:100%;display:inline;font-size: 30pt; font-weight:bold; margin:100px;
	}

	.sec_ban2{
	width:100%; float:left;
	text-align:center;
	}
	.article_pic{
		float:left; width:780px;  background-color:white;
		text-align:left;
	}

	.cbox{
		width:100%;height:120px;border-width: 1pt;border-color:black;border-style:solid;float:left;
	}
	aside{
		width:200px;height:750px;
		float:left;
	}


	#tabletitle{
		width:100%;,font-size:13px;height:40px;
	}
	table{
		width:100%;
	}
	.thgongji{
		width:70px;height:40px;padding:2px;color:#8C8C8C;font-weight:bold;
	}
	.thno{
		width:118px;height:40px;padding:2px;text-align:left;
	}
	.thtitle{
		width:506px;height:40px;padding:2px;text-align:left;
	}
	.thname{
	width:118px;height:40px;padding:2px;text-align:center;
	}
	.thdate{
	width:80px;height:40px;padding:2px;text-align:center;
	}
	.thview{
	width:68px;height:40px;padding:2px;text-align:center;
	}
	.imgst{
	width:210px; height:200px;
	}
	.reimg{
	width:70px;height:25px;}
	.secretimg{
	width:30px;height:25px;
	}
	.numlist ul{
		display:inline;font-size:13px;margin:0 auto;
	}
	.numlist li{
		width:24px;height:24px;display:inline;margin:0 2px;box-sizing: border-box;
		border: solid 1px;line-height: 24px;padding:0 5px 0 5px; 
	}
















  	/*주메뉴 마우스오버하면 밑줄기능*/
	.borderRightLeft {
		display: inline-block;
		color: #474E51;
		position: relative;
		top:10px; left: 50px;
	}

	.borderRightLeft::after {
		 content: '';
		 position: absolute;
		 width: 100%;
		 transform: scaleX(0);
		 height: 2px;
		 bottom: 20px;
		 left: 0;
		 background-color: #AA1212;
		 transform-origin: bottom left;
		 transition: transform .3s ease-in-out;
	 }

	.borderRightLeft:hover::after {
		 transform: scaleX(1);
		 transform-origin: bottom right;
	 }

	/*소메뉴 마우스오버하면 배경색 바뀌는 기능*/
	.slideDown {
		width: 120px;
		height: 40px;
		color: #AA1212;
		padding: 0 14px;
		text-align: center;
		line-height: 40px;
		position: relative;
		transition: 0.2s ease-in-out;
		overflow: hidden;
	}

	.slideDown::after {
		content: "";
		position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		transform: translateY(-100%);
		background-color: #AA1212;
		transition: transform 0.2s ease-out;
		z-index:-1;
	}

	.slideDown:hover {
		color: #fff;
		transition: 0.2s ease-out;
		
	}

	.slideDown:hover::after {
		transform: translateY(0);
		transition: transform 0.2s ease-in;
		

	}









/*============================================================================*/
  	body {
		margin:0;
	}

	ul {
		list-style-type:none;
	}
	#header {
	text-align : center;
		width : 100%; height : 460;
		
		position : relative;
		
	}
	/*스크롤 수정사항 #navtop부터 #navtop.shrinkhollow까지 복사해서 각문서의 #navtop와 #navtop.shrink에 덮어씌우기. */
	#navtop {
		width : 100%; height : 60px;
		background-color: rgba(0, 0, 0, 0.45);
		color : #ffffff;
		position : fixed;
		left : 0; top : 50px;
		z-index : 99999;
		-webkit-transition: all 0.3s;
		-moz-transition: all 0.3s;
		transition: all 0.3s;
	}
	#navtop.shrink {
		top:0px;
		background-color: rgba(0, 0, 0, 0.45);
		-webkit-transition: all 0.3s;
		-moz-transition: all 0.3s;
		transition: all 0.3s;
	}
	#navtop.shrinkhollow{
		top:0px;
		background-color: #333;
		-webkit-transition: all 0.3s;
		-moz-transition: all 0.3s;
		transition: all 0.3s;
	}
	#navtop_logo.shrink {
	
		width : 60px; height : 100%;
	}

	
	#navtop_logo {
		float : left;
		width : 95px; height : 120px;
		
		color : #ffffff;
		position : relative;
		left : 30px; top : -30px;
	}
	#navtop_menu {
		float : left;
		width : 960px; height : 99%;
		color : #ffffff;
		position:relative;
		right: -300px;
		
		
		
	}
	#navtop_menu li {
		display : inline;
		margin-right : 50px;
		font-size : 22px;
		height: 60px;
		font-weight: 700;
		transition: all 0.3s ease-out;
		
	}
	#navtop_login {
		float : right;
		width : 152px; height : 99%;
		color : #ffffff;
		font-size : 13px;
		font-weight: 700;
		position: relative;
		top:15px;
		
		
	}
	#navmid {
		clear : both;
		width : 100%; height : 60px;
		background-color: #363636;
		color : #ffffff;
		background-color: rgba(0, 0, 0, 0.45);
		position : absolute;
		bottom : 6px;
		
		
		
		
		
	}
	#navmid li {
		display : inline;
		margin-right : 200px;
		font-size : 30px;

		
   
    font-family: sans-serif;
    font-weight: normal;
    line-height: 26px;
   
    word-spacing: 0;
    letter-spacing: -0.3px;

		
	}
	#navmid_1 {
		float : left;
		width: 33.3%; height:100%
		
		
		
	}
	#navmid_2 {
		float : left;
		width: 33.3%; height:100%
	}
	#navmid_3 {
		float : left;
		width: 33.4%; height:100%
	}
	
/*============================================================================*/
	#main {
		width : 1270px;
		
		
		margin : 0 400px;
		
	}
	#mainleft {
		text-align : center;
		float : left;
		width : 250px;
		height : 1500px;
		margin : 6px 100px;
		
		
	}
	#leftnav {
		width : 96%;
		height : 301px;
		border-style : solid;
		margin: 2px;
		background-color : #960707;

	}

	
	#leftbanner {
		width : 96%;
		height : 100%;
		
		margin: 2px;
	}

	#banner1 {
		position:sticky;
		top:100px;
		width : 98%;
		height : 100px;
		
		margin: 3px;
		
	}

	#banner2 {
		width : 98%;
		height : 130px;
		
		margin: 3px;
		
		overflow:hidden;
	}

	#banner3 {
		position:sticky;
		top:200px;
		width : 98%;
		height : 190px;
		
		margin: 3px;
		background-color : #EDEDED;
		
		
	}
	#mainright {
		float : left;
		width : 79%;
		height : 98%;
		margin : 6px;
	}
	#video01 {
		position: relative;
		z-index:-2;
	}
	#navtop a {
		color: #ffffff;
		text-decoration: none;
	}
	#navmid a {
		color: #ffffff;
		font-size:20px;
		font-weight: 700;
		text-decoration: none;
		position: relative;
		top:10px;
	}
	#callender {
		width : 98%;
		height : 300px;
		border-style : solid;
		margin : 3px;
		background-color : #EDEDED;
		
	}
	#callender {
		width : 98%;
		height : 300px;
		border-style : solid;
		margin : 3px;
		background-color : #EDEDED;
		
	}
	#matList {
		width : 98%;
		height : 100%;
		
		margin : 3px;
		
		
	}
	#matList a {
		
		text-decoration: none;
	}
	#matjoin {
		width : 120px; height : 40px;
	}
	#list {
		clear:both;
	}

/*배너2 자동슬라이드 스타일*/
#carousel1 {
	width:400px;
	height:250px;
	overflow:scroll;
	border:2px solid #999;
}

  </style>
 </head>




 <body>
 	<header id="header">
	<video id="video01" autoplay="" playsinline="" muted="" loop="" height="460" width="100%" title="video element"> 
					<source src="img/video element.mp4" type="video/mp4"> 
				</video>
		<div id="navtop">
			<div id="navtop_logo">
				 <a href="" ><img src="img/logo2.png" width="95px" height="120px"></a>
			</div>
			<div id="navtop_menu">
				<ul class="menu">
					<li class="borderRightLeft"><a href="reservation.html" >대관</a>
						<ul>
							<li><a href="#" >Documents</a></li>
							<li><a href="#" >Messages</a></li>
							<li><a href="#" >Sign Out</a></li>
						</ul>
					</li>
					<li class="borderRightLeft"><a href="yonglist.html" >매치/용병</a>
						<ul>
							<li><a href="#" >팀매치신청</a></li>
							<li><a href="#" >용병등록</a></li>
							<li><a href="#" >팀원모집</a></li>
						</ul>
					
					</li>
					<li class="borderRightLeft"><a href="" >리그</a></li>
					<li class="borderRightLeft"><a href="gal.html" >팀커뮤니티</a></li>
					<li class="borderRightLeft"><a href="qna.html" >고객센터</a></li>
				</ul>
			</div>
			<div id="navtop_login">
				<a href="sign.html" style="float:left; line-height:25px;">회원가입</a>

				<div id="container" style="float:left;">
  <div id="topnav" class="topnav"><a href="login" class="signin"><span>로그인</span></a> </div>
  
  
  <fieldset id="signin_menu">
    <form method="post" id="signin" action="sign.html">
      <label for="username">아이디</label>
      <input id="username" name="username" value="" title="username" tabindex="4" type="text">
      </p>
      <p>
        <label for="password">비밀번호</label>
        <input id="password" name="password" value="" title="password" tabindex="5" type="password">
      </p>
      <p class="remember">
        <input id="signin_submit" value="로그인" tabindex="6" type="submit">
        <input id="remember" name="remember_me" value="1" tabindex="7" type="checkbox">
        <label for="remember">로그인상태유지</label>
      </p>
      <p class="forgot"> <a href="#" id="resend_password_link">비밀번호찾기</a> </p>
      <p class="forgot-username"> <A id=forgot_username_link 
title="If you remember your password, try logging in with your email" 
href="#">아이디찾기</A> </p>
    </form>
  </fieldset>
</div>
				
				
				
			</div>
		</div>
		<div id="navmid">
				<div id="navmid_1" class="slideDown"><a href="">팀매치신청</a></div>
				<div id="navmid_2" class="slideDown"><a href="">용병등록</a></div>
				<div id="navmid_3" class="slideDown"><a href="">팀원모집</a></div>
		</div>
	</header>
	<div id="mainleft">
			

			<div id="leftbanner">
				<div id="banner1">
					<img src="img/20191211.png" width="100%" height="100%"/>
				</div>
				
				<div id="banner3">
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d25325.265446899888!2d127.02924799651784!3d37.492391917303266!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca5bed583f92d%3A0xc93c837d2875ade6!2z7ZKL7IK07J6l!5e0!3m2!1sko!2skr!4v1575961834128!5m2!1sko!2skr" width="100%" height="100%" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
				</div>
			</div>


		</div>
	<section id="main">
		

		<section id="mainright">
			<div id="matList">

				<div class="sec_ban2">
			<ul class="nav_ban" >
			<li>팀 갤러리</li>
			
		</ul>
		<table class="table table-striped">
			<thead>
				<tr id="tabletitle">
					<th></th>
					<th scope="col" class="thtitle" style="text-align:center">
						<span >제목</span>		
					</th>
					<th scope="col" class="thname">
						<span >작성자</span>		
					</th>
					<th scope="col" class="thdate">
						<span >작성일</span>		
					</th>
					<th scope="col" class="thview">
						<span >조회</span>		
					</th>
				</tr>
			

			</thead>
			<tbody>
				<tr>
				<td class="thgongji">공지</td>
				<td class="thtitle"> <a href>필 독 !! 그린컴퓨터 풋살팀 공지사항</a></td>
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

			<a class="btn btn-default pull-right">글쓰기</a>
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
		
		
		<ul class="subli"> 
		<li><img src="img/liverpool.jpg"align="absmiddle" class="subli_img"/> <a href="#/Liverpool/">Green Computer</a></li> 
		<li><img src="img/mu.png" align="absmiddle" class="subli_img"/> <a href="#/Manchester United/">Blue Computer</a></li> 
		<li><img src="img/mcity.png" align="absmiddle" class="subli_img"/> <a href="#/Manchester City/">Red Computer</a></li> 
		<li><img src="img/chelsea.png" align="absmiddle" class="subli_img"/> <a href="#/Chelsea/">White Computer</a></li> 
		<li><img src="img/tottenham.png" align="absmiddle" class="subli_img"/> <a href="#/Chelsea/">Yellow Computer</a></li>
		<li><img src="img/arsenal.png" align="absmiddle" class="subli_img"/> <a href="#/Arsenal/">Super Computer</a></li> 
		
          
		</ul> 
		</div> 
		</div>
		</aside>
		<div class="article_pic" style="font-size:30pt; font-weight:bold;">
			그린컴퓨터학원
		<hr class="one" style="border-top: 2px solid #eee;">
			<table>
				<div class="container">
			<tbody>
				<tr>
					<td class="picli"> <a href><img src="img/son.jpg" class="imgst"></a><br><b>손흥민 시즌 1호골</b><br>SBS Sports<br>12:22 조회 3,000,000</td>				
					<td class="picli"><a href><img src="img/son2.jpg" class="imgst"></a><br><b>손흥민 시즌 2호골</b><br>Spotv<br>12:29 조회 4,000,000</td>				
					<td class="picli"><a href><img src="img/son3.jpg" class="imgst"></a><br><b>손흥민 시즌 3호골</b><br>Spotv<br>15:45 조회 5,000,000</td>	
				</tr>
				<tr>
					<td class="picli"><a href><img src="img/son4.jpg" class="imgst"></a><br><b>손흥민 시즌 4호골</b><br>Spotv<br>20:04 조회 6,000,000</td>	
					<td class="picli"> <a href><img src="img/son5.jpg" class="imgst"></a><br><b>손흥민 시즌 5호골</b><br>SBS Sports<br>12:22 조회 3,000,000</td>				
					<td class="picli"><a href><img src="img/son6.jpg" class="imgst"></a><br><b>손흥민 시즌 6호골</b><br>Spotv<br>12:29 조회 4,000,000</td>		
				</tr>
				<tr>
					<td class="picli"><a href><img src="img/son7.jpg" class="imgst"></a><br><b>손흥민 시즌 7호골</b><br>Spotv<br>15:45 조회 5,000,000</td>	
					<td class="picli"><a href><img src="img/son8.jpg" class="imgst"></a><br><b>손흥민 시즌 8호골</b><br>Spotv<br>20:04 조회 6,000,000</td>	
					<td class="picli"> <a href><img src="img/son.jpg" class="imgst"></a><br><b>손흥민 시즌 1호골</b><br>SBS Sports<br>12:22 조회 3,000,000</td>	
				</tr>



				
				
			</tbody>
		</table>
		</div>


		</div>
		
		
		<div class="cbox">
		<div class="text-center">
				<ul class="pagination">
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">6</a></li>
					<li><a href="#">7</a></li>
					<li><a href="#">8</a></li>
					<li><a href="#">9</a></li>
					<li><a href="#">10</a></li>
					<li><a href="#">다음 ></a></li>
				</ul>
			</div>
		<form>
			<select class="form-control" style="width:200px; float:left;margin-left : 200px;"><option>
			전체기간</select>
			<select class="form-control" style="width:200px; float:left; margin-left:10px;"><option>
			제목+내용</select>
			<input type="text" class="form-control" id="exampleInputEmail1" placeholder="검색어를 입력하세요" class="form-control" style="width:300px; float:left;margin-left:10px;" >
			<input class="btn btn-default" type="button" value="검 색" style="float:left; margin-left:10px;">
		</form>
		
		</div>


			</div>
		</section>

  </section>
	
	

	<img src="img/bot.png">
 </body>
</html>
