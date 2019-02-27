<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport">
<title>SeyaWord</title>
<!-- Tell the browser to be responsive to screen width -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/bower_components/Ionicons/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect. -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/dist/css/skins/skin-red-light.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

<style>
.mainpage-wrapper {
	width: 1080px;
	height: 969px;
}

.mainpage-header {
	width: 1080px;
	height: 100px;
}

.mainlogo {
	width: 330px;
	font-size: 34px;
	float: left;
	text-align: right;
	margin-right: 15px;
	margin-top: 40px;
}

.searchdiv {
	width: 500px;
	float: left;
}

.input-group .form-control:focus {
	border-color: red;
}

.input-group .form-control {
	position: relative;
	z-index: 2;
	float: right;
	margin-bottom: 0;
	margin-top: 40px;
	border-color: red;
	width: 461px;
	height: 50px;
}

.input-group-btn:last-child>.btn, .input-group-btn:last-child>.btn-group
	{
	z-index: 2;
	margin-left: -1px;
	width: 40px;
	height: 50px;
	margin-top: 40px;
	border-color: red;
	background-color: white;
}

.main-content-wrapper {
	width: 1080px;
	height: 850px;
	margin-top: 10px;
}

.content-picture {
	width: 700px;
	height: 400px;
	border: 1px solid #d4d4d4;
	margin: 30px 30px 10px 30px;
	float: left;
	background-color: #ddd;
	overflow: hidden;
}

.main-content-login {
	width: 290px;
	height: 400px;
	margin: 30px 30px 10px 0px;
	float: left;
	background-color: #ffffff;
}

.main-content-seyaword-line {
	width: 1020px;
	height: 300px;
	border-top: 1px solid #262a2e;
	float: left;
	margin-top: 10px;
	margin-left: 30px;
}

.main-content-title {
	width: 303px;
	height: 50px;
	float: left;
	margin-top: 5px;
	margin-left: 30px;
	padding-left: 0px;
	font-size: 16px;
	font-weight: 700;
	color: #ffffff;
	background-color: #262a2e;
	border-top-left-radius: 25px;
	border-top-right-radius: 25px;
	border-bottom-left-radius: 25px;
	border-bottom-right-radius: 25px;
}

.recommend-wordbook-list {
	width: 220px;
	height: 260px;
	border: 1px solid #d4d4d4;
	margin: 20px 17px 20px 17px;
	overflow: hidden;
	float: left;
}

.wrong-wordbook-list {
	width: 220px;
	height: 260px;
	border: 1px solid;
	margin: 20px 17px 20px 17px;
	float: left;
}

.cpicture {
	width: 698px;
	height: auto;
}

.main-login-body {
	width: 290px;
	height: 390px;
	padding: 10px;
	border: 1px solid #d4d4d4;
}

.login-text {
	width: 280px;
	height: 60px;
	text-align: center
}

.login-text2 {
	width: 280px;
	height: 20px;
	text-align: center;
	font-size: 18px;
	margin-top: 10px;
}

.content-title-img {
	margin-right: 2px;
	margin-left: -6px;
}

.content-title-img2 {
	margin-top: 1px;
	margin-right: 12px;
}
.seya-solid{
	border-top:solid 1px red;
	width:1020px;
	margin-left: 30px;
	height:1px;
}
</style>

</head>
<body>
	<div class="mainpage-wrapper">

		<!-- 헤더 시작 -->
		<div class="mainpage-header">
			<div class="mainlogo">SeyaWord</div>

			<!-- 메인써취 -->
			<div class="searchdiv">
				<form action="/selectsearch.do" method="get" class="sidebar-form">
					<div class="input-group">
						<input type="text" name="keyword" class="form-control"
							placeholder="단어장 검색.."> <span class="input-group-btn">
							<button type="submit" id="search-btn" class="btn btn-flat">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
				</form>
			</div>
		</div>
		<!-- 헤더 끝 -->
		<!-- 본문 -->
		<div class="main-content-wrapper">
			<!-- 페이지별로 맞게 바뀔 solid -->
			<div class="seya-solid"></div>
			<!-- 페이지별로 맞게 바뀔 solid -->
			<div class="content-picture">
				<img class="cpicture" src="/upload/profile/woman-4008702_1280.jpg">
			</div>

			<!-- 로그인 -->
			<div class="main-content-login">
				<form action="userlogin.do" name="loginform" method="post">
					<div class="main-login-body">
						<h2 class="login-text">Login</h2>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="아이디" id="id"
								name="id" maxlength="20">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" placeholder="비밀번호"
								id="password" name="password" maxlength="20">
						</div>
						<div>
							<input type="submit"
								class="btn btn-block btn-danger form control"
								style="width: 100%" value="로그인"> <a
								href="${pageContext.request.contextPath}/main2"
								class="btn btn-block btn-danger form control"
								style="width: 100%">회원가입</a> <a href="#"
								class="btn btn-block btn-danger form control"
								style="width: 100%">비밀번호 찾기</a>
						</div>
						<div class="login-text2">OR</div>
						<!-- 네이버아이디로로그인 버튼 노출 영역 -->
						<div id="naver_id_login"></div>
					</div>
				</form>
			</div>
			<!-- 로그인  끝-->
			<div class="main-content-title">
				<img class="content-title-img"
					src="/upload/profile/notepad-check.png">Seyaword Recommend
				Notepad
			</div>
			<!-- 추천단어장 리스트 -->
			<div class="main-content-seyaword-line">
				<div class="recommend-wordbook-list">
					<div>
						<img src="/upload/profile/kyohaksa.jpg">
					</div>
					<!-- 	<div>
						<p>추천 단어장 제목</p>
					</div>
					<div>
						<p>추천 단어장 단어갯수</p>
					</div>
					<div>
						<p>추천 단어장 추천이유</p>
					</div> -->
				</div>
				<div class="recommend-wordbook-list">
					<div>
						<img src="/upload/profile/miraen.jpg">
					</div>
					<!-- 	<div>
						<p>추천 단어장 제목</p>
					</div>
					<div>
						<p>추천 단어장 단어갯수</p>
					</div>
					<div>
						<p>추천 단어장 추천이유</p>
					</div> -->
				</div>
				<div class="recommend-wordbook-list">
					<div>
						<img src="/upload/profile/sinsago.jpg">
					</div>
					<!-- 	<div>
						<p>추천 단어장 제목</p>
					</div>
					<div>
						<p>추천 단어장 단어갯수</p>
					</div>
					<div>
						<p>추천 단어장 추천이유</p>
					</div> -->
				</div>
				<div class="recommend-wordbook-list">
					<div>
						<img src="/upload/profile/neungryul.jpg">
					</div>
					<!-- 	<div>
						<p>추천 단어장 제목</p>
					</div>
					<div>
						<p>추천 단어장 단어갯수</p>
					</div>
					<div>
						<p>추천 단어장 추천이유</p>
					</div> -->

				</div>
			</div>
			<div class="main-content-title">
				<img class="content-title-img2" src="/upload/profile/check2.png">Frequently
				Misspelled Words
			</div>
			<!--  틀린 단어장 리스트 -->
			<div class="main-content-seyaword-line">
				<div class="wrong-wordbook-list">
					<div>
						<img src="/upload/profile/errorimg1.png">
					</div>
					<!-- 	<div>
						<p>틀린 단어장 제목</p>
					</div>
					<div>
						<p>틀린 단어장 단어갯수</p>
					</div>
					<div>
						<p>틀린 단어장 추천이유</p>
					</div> -->
				</div>
				<div class="wrong-wordbook-list">
					<div>
						<img src="/upload/profile/errorimg2.png">
					</div>
					<!-- <div>
						<p>틀린 단어장 제목</p>
					</div>
					<div>
						<p>틀린 단어장 단어갯수</p>
					</div>
					<div>
						<p>틀린 단어장 추천이유</p>
					</div> -->
				</div>
				<div class="wrong-wordbook-list">
					<div>
						<img src="/upload/profile/errorimg3.png">
					</div>
					<!-- 	<div>
						<p>틀린 단어장 제목</p>
					</div>
					<div>
						<p>틀린 단어장 단어갯수</p>
					</div>
					<div>
						<p>틀린 단어장 추천이유</p>
					</div> -->
				</div>
				<div class="wrong-wordbook-list">
					<div>
						<img src="/upload/profile/errorimg4.png">
					</div>
					<div>
						<!-- 		<p>틀린 단어장 제목</p>
					</div>
					<div>
						<p>틀린 단어장 단어갯수</p>
					</div>
					<div>
						<p>틀린 단어장 추천이유</p> 
					</div> -->
					</div>
				</div>
			</div>
			<!-- 본문 끝 -->
		</div>
	</div>





	<!-- 네이버아이디로로그인 버튼 노출 영역 -->
	<script type="text/javascript">
		var naver_id_login = new naver_id_login("yaDY92Z36BstPLdOmosi",
				"http://localhost:8181/seyamain"); // Client ID, CallBack URL 삽입
		// 단 'localhost'가 포함된 CallBack URL
		var state = naver_id_login.getUniqState();

		naver_id_login.setButton("white", 2, 40);
		naver_id_login.setDomain("서비스 URL"); //  URL
		naver_id_login.setState(state);
		naver_id_login.setPopup();
		naver_id_login.init_naver_id_login();
	</script>



	<!-- REQUIRED JS SCRIPTS -->

	<!-- jQuery 3 -->
	<script
		src="${pageContext.request.contextPath}/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script
		src="${pageContext.request.contextPath}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- AdminLTE App -->
	<script
		src="${pageContext.request.contextPath}/dist/js/adminlte.min.js"></script>

	<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>

</html>