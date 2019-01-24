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
.fixed .content-main, .fixed .footer-main {
	min-height: 100%;
	z-index: 800;
}

b, strong {
	font-weight: 700;
}

.user-page {
	padding-left: 20%;
	padding-right: 20%;
	margin-left: 17%;
	margin-right: 17%;
	margin-top: 20%
}

.content-wrapper, .main-footer {
	-webkit-transition: -webkit-transform .3s ease-in-out, margin .3s
		ease-in-out;
	-moz-transition: -moz-transform .3s ease-in-out, margin .3s ease-in-out;
	-o-transition: -o-transform .3s ease-in-out, margin .3s ease-in-out;
	transition: transform .3s ease-in-out, margin .3s ease-in-out;
	margin-left: 0px;
	z-index: 820;
}

.form-control {
	border-radius: 0;
	box-shadow: none;
	border-color: #d2d6de;
	margin-bottom: 10px;
}

.signup-content {
	padding-top: 30px;
	margin: auto;
	font-size: 12px
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

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">

			<!-- 고정폭으로 만들기 -->
			<div class="container signborder">

				<!-- 정보가 들어가는 컨테이너 패딩 40 테두리 라운드 -->
				<div class="signup-content" style="width: 360px;">
					<!-- 기본적인 텍스트 로고 들어가는 div -->
					<div>
						<h3 class="text-center">Seya World 계정 만들기</h3>
						&nbsp;
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
						<div>
							<img alt="dkdkk" src="dist/images/account.svg">
						</div>
						<!-- 이미지 글 -->
						<div>
							<p class="signup-content text-center">하나의 계정으로 모든 SeyaWorld 서비스를 이용할 수
								있습니다.</p>
						</div>
					</div>
				</div>
				<!-- 이미지, 글 들어가는 컨테이너 -->
				<!-- 이미지 -->

			</div>
		</div>
	</div>

	<!-- Main Footer -->

	<footer class="main-footer">

		<!-- Default to the right -->
		<strong>Copyright &copy; 2019 <a href="#">Team GeSe</a>
		</strong>

	</footer>
	<!-- /footer -->

	<div class="control-sidebar-bg"></div>

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