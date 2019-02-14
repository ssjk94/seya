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
	width: 1080px;
	heigth: 740px;
}

.search-result-content {
	width: 800px;
	height: 50%;
}

.search-result {
	width: 900px;
	height: 868px;
	background-color: #e9ecef;
	margin-left: 90px;
	padding-top: 20px;
}

.search-result-list {
	padding-top: 5px;
	background-color: #ffffff;
	width: 800px;
	height: 160px;
	margin: auto;
}

.list-content {
	margin-left: 10px;
	width: 780px;
	height: 75px;
	border: solid 1px;
}

.content-line-1 {
	width: 96.3%;
	height: 75px;
	border: #e2e2e2 solid 2px;
	margin-left: 15px;
	margin-right: 15px;
}

.content-line-2 {
	width: 96%;
	height: 35px;
	border: 1px solid;
	margin: auto;
}

.search-result-word {
	width: 800px;
	height: 50%;
	border: 1px solid;
}

.word-preview {
	margin-left: 10px;
	width: 780px;
	height: 75px;
	border: solid 1px;
}

.preview-word {
	display: table;
	table-layout: fixed;
	width: 96.3%;
	height: 35px;
	margin-left: 15px;
	padding: 0px;
	background-color: #ffffff;
    border-left: #e2e2e2 2px solid;
}

.preview-mean {
	display: table;
	table-layout: fixed;
	width: 96.3%;
	height: 35px;
	background-color: #ffffff;
	margin-left: 15px;
	padding: 0px;
	border-bottom: #e2e2e2 2px solid;
    border-left: #e2e2e2 2px solid;
}

.preview-word-eng {
		
	height: 100%;
	width: 25%;
	border-right: #e2e2e2 2px solid;
}

.preview-mean-ko {
	
	height: 100%;
	width: 25%;
    border-right: #e2e2e2 2px solid;    
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
			<!-- 	<div class="jumbotron">
			</div>  /.jumbotron -->
			<div class="search-result">
				<div class="search-result-list">
					<!-- 목록 전체를 덮을 박스 -->
					<!-- 목록에서 단어장이름, 아이디를 뱉을곳 시작 -->
					<div class="search-result-content">
						<!-- 							<div class="list-content"> -->
						<!-- 목록 닉네임, 단어장이름, 이미지를 뱉을 부분 -->
						<div class="content-line-1 col-xs-12">
							<!-- 닉네임, 유저이미지, 단어갯수 뱉을곳 -->

						</div>
						<!-- 							</div> -->
						<div class="preview-word col-xs-12">
							<div class="preview-word-eng col-xs-3"></div>
							<div class="preview-word-eng col-xs-3"></div>
							<div class="preview-word-eng col-xs-3"></div>
							<div class="preview-word-eng col-xs-3"></div>
							<!-- 영어단어를 뱉을 부분 -->
						</div>
						<div class="preview-mean col-xs-12">
							<div class="preview-mean-ko col-xs-3"></div>
							<div class="preview-mean-ko col-xs-3"></div>
							<div class="preview-mean-ko col-xs-3"></div>
							<div class="preview-mean-ko col-xs-3"></div>
							<!-- 해석인 한글을 뱉을부분 -->
						</div>
					</div>
					<!-- 목록에서 단어장이름, 아이디를 뱉을곳 끝 -->

					<!-- 목록에서 단어,뜻을 뱉을 부분 시작-->
					<!-- 						<div class="search-result-word"> -->
					<!-- 							<div class="word-preview"> -->
					<!--목록 단어를 다 감싸게 될 div -->

					<!-- 							</div> -->
					<!-- 						</div> -->
					<!-- 목록에서 단어,뜻을 뱉을 부분  끝-->

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