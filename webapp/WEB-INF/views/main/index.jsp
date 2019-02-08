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
	margin-left: 400px;
	margin-right: 400px;
	margin-bottom: 0px;
	padding: 10px;
	position: absolute;
	margin-top: -495px;
	width: 280px;
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
		url("${pageContext.request.contextPath}/dist/images/main1.png");
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
					<h2 class="text-center" style="color: #dd4b39">로그인</h2>
				</div>
				<form action="userlogin.do" name="loginform" method="post">
					<div class="user-body">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="아이디"
								id="id" name="id" maxlength="20">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" placeholder="비밀번호"
								id="password" name="password" maxlength="20">
						</div>
						<div>
							<input type="submit" class="btn btn-block btn-danger form control"
								style="width: 100%" value="로그인"> <a
								href="${pageContext.request.contextPath}/main2"
								class="btn btn-block btn-danger form control"
								style="width: 100%">회원가입</a> <a href="#"
								class="btn btn-block btn-danger form control"
								style="width: 100%">비밀번호 찾기</a>
						</div>
					</div>
				</form>
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
<script type="text/javascript">
 $('[name="loginform"]').on('submit', function(){
	//밸류 함수
	var id = $('#id').val();
	var password = $('#password').val();
	
	// 아이디 체크
	if(id == "" || id == null){
		alert("아이디를 입력하지 않았습니다.")
		$('#id').focus();
		return false;
	}
	if(id.search(/\s/) != -1) { 
		alert("아이디에 공백을 사용할 수 없습니다.");
		$('#id').focus();
		return false;
	}
	//아이디체크 끝
	//비밀번호 입력여부 체크
	if (password == "" || password == null) {
		console.log("비밀번호 입력안함")
		alert("비밀번호를 입력하지 않았습니다.")
		$('#password').focus();
		return false;
	} 
	 
		
	}); 
</script>
</html>