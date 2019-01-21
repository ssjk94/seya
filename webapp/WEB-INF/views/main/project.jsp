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
<style>
.ko-12 {
	font-family: Nanum Gothic, dotum, sans-serif;
	font-size: 12px;
}

.sidebar-list {
	list-style: none;
	margin: 0;
}

.sidebar-header, .sidebar-list li {
	white-space: nowrap;
}

.sidebar-box, .sidebar-list {
	overflow: hidden;
	padding: 10px 15px;
	line-height: 20px;
}

.sidebar-list .fa, .sidebar-list .glyphicon, .sidebar-list .ion {
	width: 20px;
}

.skin-blue .sidebar-menu>li.header {
	color: #4b646f;
	background: #1a2226;
}

.sidebar-box, .sidebar-list {
	overflow: hidden;
	padding: 10px 15px;
	line-height: 20px;
}

.sidebar-header {
	padding: 10px 25px 10px 15px;
	font-size: 12px;
	color: #ffffff;
	background: #1a2226;
}

.side-pad {
	pading: 10px;
	margin-bottom: 10px;
}

.sidebar-list .ko-12 {
	display: block;
}

.pull-center {
	margin-left: 62px;
}

.dropdown-menu .user-footer .pull-center {
	padding-left: 20px;
}

.gaeyeya {
	font-size: 22px;
	text-align: center;
}

.profile-content {
	text-align: center;
}

.side-cont {
	padding: 10px;
	text-align: center;
}

.btn-block {
	display: block;
	width: 50%;
	margin: auto;
}

.sidebar-content {
	padding: 10px;
}

.box-header>.box-tools {
	position: absolute;
	right: 20px;
	top: 10px;
}

.small-box .icon {
	-webkit-transition: all .3s linear;
	-o-transition: all .3s linear;
	transition: all .3s linear;
	position: absolute;
	top: -10px;
	right: 30px;
	z-index: 0;
	font-size: 90px;
	color: rgba(0, 0, 0, 0.15);
}

.small-box:hover {
	text-decoration: none;
	color: #dd4b39 !important
}

.fixed .content-wrapper, .fixed .right-side {
	padding-top: 85px;
}

.table-hover>tbody>tr:hover {
	background-color: #f5f5f5;
	color: #dd4b39 !important;
}

.content-header>.breadcrumb {
	position: static;
}

.profileborder {
	top: 2px;
	left: 2px;
	bottom: 2px;
	right: 2px;
	border: 2px solid #ff6666;
	border-radius: 6px;
}

.lev1 {
	border-bottom: 2px solid #ff6666;
}

.gamepagecontainer {
	width: 780px;
	max-width: none !important;
	margin: auto
}

.clear {
	clear: both;
}

.leftattach {
	float: left;
}

.pagefly {
	margin-top: 30px;
}

.firstpage {
	width: 340px;
	padding-bottom: 10px;
	padding-top: 10px;
	padding-left: 20px;
	padding-right: 20px;
}

.secondpage {
	margin-left: 30px;
	width: 310px;
	padding-bottom: 10px;
	padding-top: 10px;
	padding-left: 20px;
	padding-right: 20px;
}

.pageincludefly {
	margin-left: 10px;
}

.gamestartbtn {
	width: 100%;
}

.gamepageborder {
	top: 2px;
	left: 2px;
	bottom: 2px;
	right: 2px;
	border: 2px solid rgba(221, 75, 57, 0.5);
	border-radius: 6px;
}

.imgsize {
	width: 50px;
	margin: auto;
}

.flashcard {
	background-color: deeppink;
	padding-top: 40px;
	text-align: center;
	height: 120px;
}

.explain {
	padding-left: 20px;
	padding-top: 30px;
	padding-bottom: 30px;
	padding-right: 20px;
}

.rankingprofile {
	margin-left: 40px;
}

p {
	padding-top: 15px;
	margin: auto;
}

.pscore {
	padding-left: 40px;
}

.shapemargin {
	margin-top: 5px;
	margin-left: 125px;
	color: rgba(221, 75, 57, 0.5);
}

.vocabularycontainer {
	width: 780px;
	max-width: none !important;
	margin: auto
}

.vocabu {
	border: 2px solid #dd4b39;
	padding: 10px 20px 10px 20px;
}

.vocamodifybtn {
	width: 100%;
}

.signborder {
	border: 2px solid darkgray;
	padding: 38px;
	border-radius: 6px;
	width: 780px;
}
</style>

</head>

<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to get the
desired effect
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
<body class="hold-transition skin-red-light fixed">
	<div class="wrapper">

		<!-- header -->
		<c:import url="/WEB-INF/views/includes/logout.jsp"></c:import>
		<!-- /header -->

		<!-- navigation -->
		<c:import url="/WEB-INF/views/includes/navigation.jsp"></c:import>
		<!-- /navigation -->

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">

			<!-- 고정폭으로 만들기 -->
			<div class="container signborder">

				<!-- 정보가 들어가는 컨테이너 패딩 40 테두리 라운드 -->
				<div style="float: left; width: 360px;">
					<!-- 기본적인 텍스트 로고 들어가는 div -->
					<div>
						<p>Seya World 계정 만들기</p>
					</div>
					<!-- 실질적인 정보 들어가는창 -->
					<div>
						<!-- 이름 170 20 170 height 20 -->
						<div>
							<input type="text" class="form-control" placeholder="Name">
						</div>
						<!-- 별명 or nickname -->
						<div>
							<input type="text" class="form-control" placeholder="Nick name">
						</div>
						<!-- 아이디 or 메일 360 -->
						<div>
							<input type="email" class="form-control" placeholder="E-Mail">
						</div>
						<!-- 아이디 중복일 경우 나오게 만드는 div -->
						<div></div>
						<!-- 비밀번호 -->
						<div>
							<input type="password" class="form-control"
								placeholder="Password">
						</div>
						<!-- 생년월일 -->
						<div>
							<input type="text" class="form-control"
								placeholder="Year Month Day">
						</div>
						<!-- 확인 누르는 버튼  90-->
						<div style="margin-left: 284px;">
							<button type="submit" class="btn btn-default">Sign Up</button>
						</div>

					</div>
				</div>
				<!-- 이미지, 글 들어가는 컨테이너 -->
				<div style="float: left; width: 340px">
					<!-- 이미지 -->
					<div>
						<img alt="dkdkk" src="dist/images/account.svg">
					</div>
					<!-- 이미지 글 -->
					<div>
						<p>하나의 계정으로 모든 SeyaWorld 서비스를 이용할 수 있습니다.</p>
					</div>
				</div>
			</div>
		</div>

		<!-- footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!-- /footer -->

	</div>
	<!-- ./wrapper -->



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