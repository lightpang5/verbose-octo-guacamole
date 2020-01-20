<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	//2020_01_02 수정부분
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
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="Generator" content="EditPlus®">
<meta name="Author" content="">
<meta name="Keywords" content="">
<meta name="Description" content="">
<title>yongsign</title>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="/js/datepicker.js"></script>
<script type="text/javascript" src="/js/common.js"></script>
<script type="text/javascript" src="/js/common/form_check.js"></script>
<link rel="stylesheet" type="text/css" href="css\join.css" />
<link rel="stylesheet" href="css/classic.css">
<link rel="stylesheet" href="css/classic.date.css">
<link rel="stylesheet" href="css/signbutton.css">
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/signformrelocation.css">
<link rel="stylesheet" href="css/classic.time.css">
<link rel="stylesheet" href="css/style2.css" media="screen">
<link rel="stylesheet" href="css/materialFormStyles2.css">
<link rel="stylesheet" href="css/borderRightLeft.css" media="screen">
<script src="js/materialForm.js"></script>



<!--기본적인 body등의 css-->
<link rel="stylesheet" href="css/basicStyle.css" media="screen">
<link rel="stylesheet" href="css/navmid33.css">
	<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.infinitecarousel.js"></script>

<!--2020.01.03 추가 css 분리-->
<link rel="stylesheet" href="css/logform.css" media="screen">
	<!--2020.01.03 추가 javascript.가입기능 분리-->
<script type="text/javascript" src="js/signjs.js"></script>
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
					if($(e.target).parent("a.mypage").length!=0) {
						$(".mypage").removeClass("menu-open");
						$("fieldset#mypage_menu").hide();
					}
				});			
				
			});
	</script>
<!----------------------------회원가입스크립트랑 스타일여기까지------------------------------------>
<!----------------------------서브메뉴마우스오버기능-------------------------->
<link rel="stylesheet" type="text/css" href="css/subMenuMouseOver.css">
	<!----------------------------회원가입스크립트랑 스타일(따로 빼면 에러)-------------------------->
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
<!----------------------------회원가입스크립트랑 스타일여기까지------------------------------------>
<script>
		
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
	</script>
<!-- -----------------다음 주소 api ----------------------------------------->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- ------------------------------------------------------------------------- -->
<!-- -------------------------ID 중복확인에 대한 ajax--------------------------------- -->
<script type="text/javascript">
	$(document).ready(function(){
		$("#id").blur(function(){
			var idReg = /^[a-zA-z]+[a-zA-z0-9]{5,13}$/g;
			if(idReg.test(join.id.value))
				callAjax();
			else{
				$("#ajaxReturn").html("6~14자 사이의 영문 대소문자와 숫자만 사용가능합니다");
			}
		});
		$("#name").blur(function(){
			if(join.name.value.length!=0)
				$("#nameReturn").html("");
			else{     
				$("#nameReturn").html("이름을 입력해주세요.");
			}
		});
		
		$("#hp2").blur(function(){
			if(join.hp2.value.length!=0)
				$("#hpReturn").html("");
			else{
				$("#hpReturn").html("휴대폰번호를 입력하세요.");
			}
		});
		$("#hp3").blur(function(){
			if(join.hp3.value.length!=0)
				$("#hpReturn").html("");
			else{
				$("#hpReturn").html("휴대폰번호를 입력하세요.");
			}
		});
		$("#em1").blur(function(){
			if(join.em1.value.length!=0)
				$("#emReturn").html("");
			else{
				$("#emReturn").html("이메일을 입력하세요.");
			}
		});
	});
	
	function callAjax(){
		
		$.ajax({
			type:"post",
		url:"./confirmId.jsp",       
		data:{
	
			id:$('#id').val()
		},	
		success:whenSuccess,
		error:whenError
		});
	}
	var confirmid = "";
	function whenSuccess(resdata){
		
		var x=document.getElementById("ajaxReturn");
		$("#ajaxReturn").html(resdata);
		
		if(resdata.includes("이미 사용중인 ID입니다")){
			document.join.hidden.value="0";
			x.style.color="red";
		}
		
		else{
			document.join.hidden.value="1";
			x.style.color="blue";
			confirmid = join.id.value;
			
			
		}
	}
	function whenError(){
		alert("Error");
	}
</script>
<!-- 비밀번호 체크 ajax -->
<script type="text/javascript">
function callAjax2(){
	if(join.pw.value!=join.pwch.value){
		$("#pwReturn").html("비밀번호가 일치하지 않습니다");
	}else{
		$("#pwReturn").html("");
	}
}
</script>
<script type="text/javascript">

</script>
<style>
</style>
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
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d25325.265446899888!2d127.02924799651784!3d37.492391917303266!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca5bed583f92d%3A0xc93c837d2875ade6!2z7ZKL7IK07J6l!5e0!3m2!1sko!2skr!4v1575961834128!5m2!1sko!2skr" width="100%" height="100%" frameborder="0" style="border: 0;" allowfullscreen=""></iframe>
			</div>
		</div>


	</div>
	<section id="main">


		<section id="mainright">
			<div id="matList">

				<div class="container" id="formOutterWrapper">
					<center>
						<h2>용병 등록</h2>
					</center>
					<div class="container" id="formInnerWrapper">
						<form name="join" id="materialForm" class="form" method="post" action="signInsert.jsp" role="form" autocomplete="off">
							<div class="form-group">
								<div class="col-xs-2"></div>
								<div class="col-xs-4">
									<select name="lv" class=formInput>
										<option value="5">지점선택
										<option value="4">동대문점
										<option value="3">안산 고진점
										<option value="2">서수원점
										<option value="1">일산점
										<option value="5">대전 탄방점
										<option value="4">동대전점
										<option value="3">부산 가야점
										<option value="2">울산 남구점
										<option value="1">창원점
										<option value="5">전주 완산점
										<option value="4">울산 북구점
										<option value="3">GLOBAL ARENA(Japan)
										<option value="2">부산 북구점
										<option value="1">Seogwipo. JEJU
										<option value="1">가천대학교 운동장
									</select>
								</div>
								<div class="col-xs-4">
									<select name="lv" class=formInput>
										<option value="5">A구장
										<option value="4">B구장
										<option value="3">C구장
									</select>
								</div>
							</div>
							<div class="form-group">
								<div class="col-xs-2"></div>
								<div class="col-xs-4">
									<label class="labels" for="id">신청자명<img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수"></label> <input type="text" class="formInput" id="id" name="id" >
								</div>
								<div class="col-xs-4">
									<label class="labels" for="id">연락처<img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수"></label> <input type="text" class="formInput" id="id" name="id" >
								</div>
							</div>
							<div class="form-group">
								<div class="col-xs-2"></div>
								<div class="col-xs-4">
									<label class="labels" for="id">매치일정<img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수"></label> <input type="text" class="formInput" id="id" name="id" >
								</div>
								<div class="col-xs-4">
									<select name="lv" class=formInput>
										<option value="5">시간선택
										<option value="4">1시
										<option value="3">2시
									</select>
								</div>
							</div>
							<div class="form-group">
								<div class="col-xs-2"></div>
								<div class="col-xs-4">
									<select name="lv" class=formInput>
										<option value="5">선택
										<option value="4">가능
										<option value="3">마감
									</select>
								</div>
								<div class="col-xs-4">
									<select name="lv" class=formInput>
										<option value="5">팀수준선택
										<option value="4">상
										<option value="3">중상
										<option value="5">중
										<option value="4">중하
										<option value="3">하
									</select>
								</div>
							</div>
							<div class="form-group" style="height:300px;">
								<div class="col-xs-2"></div>
								<div class="col-xs-4">
									<label class="labels" for="id">메모<img src="//img.echosting.cafe24.com/skin/base/common/ico_required.gif" alt="필수"></label>
									<textarea name="text" style="width:730px;resize:none; height:200px;"></textarea>
								</div>
								
							</div>
							
							
							
							
							
							
							
							





							<div class="form-group" style="">
								<div class="col-xs-4" style="font-size: 14px;"></div>

								<div class="col-xs-3" style="margin-left: 90px;">

									<input type="button" value="등록" class="signbutton signbutton5" onClick="joinsubmit()"><input type="button" value="취소" class="signbutton signbuttoncancel" onClick="script: location.href='sign.jsp'">
								</div>


							</div>
							<input type="hidden" name="hidden" value="" />

						</form>
					</div>
				</div>
				<script src="https://code.jquery.com/jquery-2.2.3.min.js" integrity="sha256-a23g1Nt4dtEYOj7bR+vTu7+T8VP13humZFBJNIYoEJo=" crossorigin="anonymous"></script>
				<script src="js/materialForm.js"></script>
			</div>

		</section>


	</section>



	<footer id="footer">
		<jsp:include page="Footer.jsp" />
	</footer>
</body>
</html>