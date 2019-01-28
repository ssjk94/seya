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
	margin-left: 340px;
	margin-right: 340px;
	margin-bottom: 0px;
	padding: 10px;
	position: absolute;
	margin-top: -565px;
	width: 400px;
	background-color: rgba(255, 255, 255, 0.7);
}

.content-wrapper {
	background-color: rgb(10, 21, 23);
}

.content-wrapper, .main-footer {
	margin-left: 0px;
}

.jumbotron {
	opacity: 0.8;
	background-repeat: no-repeat;
	background-size: cover;
	margin-top: 50px;
	padding-bottom: 690px;
	margin-bottom: 0px;
	background-position: center;
	background-image:
		url("${pageContext.request.contextPath}/dist/images/main2.jpg");
}

p.signup-content.text-center {
	margin-top: 10px;
}

.sexcheck {
	border: 1px solid #ccc;
	margin-bottom: 15px;
	height: 34px;
	width: 100%;
	padding: 6px 12px;
	background-color: #fff;
	border-color: #d2d6de;	
	color : #666;
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

		<div class="content-wrapper">
			<div class="jumbotron"></div>
			<div class="user-page">
				<!-- The user image in the menu -->
				<div class="user-header">
					<h3 class="text-center">Seya World 계정 만들기</h3>
				</div>
				<div class="user-body">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디"
							name="userId" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호"
							name="userPassword" maxlength="20">
					</div>

					<div class="form-group">
						<input type="text" class="form-control" placeholder="이름"
							name="userNickname" maxlength="20">
					</div>

					<div class="form-group">
						<input type="email" class="form-control" placeholder="이메일"
							name="userEmail" maxlength="20">
					</div>

					<div class="form-group">
						<input type="text" class="form-control" placeholder="생년월일"
							name="userBirth" maxlength="20">
					</div>
					<div class="sexcheck">
						성별 
						
						<input type="radio" name="sex" id="male">
						<label for="male">남자</label>
						<input type="radio" name="sex" id="female">
						<label for="female"">여자</label>
					</div>
					<a href="${pageContext.request.contextPath}/main1"
						class="btn btn-block btn-danger form control" style="width: 100%">계정
						생성</a>

					<p class="signup-content text-center">하나의 계정으로 모든 SeyaWord 서비스를
						이용할 수 있습니다.</p>
				</div>
			</div>
		</div>
		<!-- /.Content Wrapper -->

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