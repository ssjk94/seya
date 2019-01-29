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
	top: 78px;
	right: 40px;
	font-size: 60px
}

.small-box:hover {
	text-decoration: none;
	color: #dd4b39 !important
}

.fixed .content-wrapper, .fixed .right-side {
	padding-top: 85px;
}

.content-header>.breadcrumb {
	position: static;
}

a.wordpad-link {
	color: #000000
}

.breadcrumb {
	background-color: #ffffff;
	margin-top: -35px;
}

.button-name {
	padding-bottom: 20px;
	padding-right: 15px;
}

.inner-header .tools {
	display: none;
	float: right;
	padding: 10px
}

.small-box:hover .tools {
	display: inline-block
}

.btn-info {
	background-color: #dd4b39;
	border-color: #dd4b39;
}

i.fa-share {
	font-size: 30px;
	margin-right: 15px
}

i.fa-edit {
	font-size: 30px;
	margin-right: 15px
}

i.fa-trash-o {
	font-size: 30px;
}

.inner-body>.inner {
	padding: 15px;
	height: 175px;
	color: #000000
}

.inner-body>.small-box-footer {
	position: static;
	text-align: center;
	padding: 3px 0;
	color: #fff;
	color: rgba(255, 255, 255, 0.8);
	display: block;
	z-index: 10;
	background: rgba(0, 0, 0, 0.1);
	text-decoration: none;
	/* margin-bottom: 100px; */
}

.inner-body h3 {
	font-size: 20px;
	margin: 20px 0 20px 0
}

.inner-body p {
	font-size: 13px;
	margin: 0 0 5px 10px;
}

.small-box:hover .icon {
	font-size: 60px;
	color: #dd4b39
}

.small-box:hover .small-box-footer {
	background: #dd4b39
}

.small-box {
	margin-top: 10px;
	border-top: 1px solid rgba(0, 0, 0, 0.1)
}

.row {
	padding-left: 10px;
	padding-right: 10px;
}

.small-box:hover h3 {
	color: #dd4b39
}

.small-box:hover p {
	color: #dd4b39
}
.add-footer{
	position: static;
	text-align: center;
	padding: 3px 0;
	color: #fff;
	color: rgba(255, 255, 255, 0.8);
	display: block;
	z-index: 10;
	text-decoration: none;
	height: 25px;
	/* margin-bottom: 100px; */
}
.container{
width: 840px;
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
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
		<!-- /header -->

		<!-- navigation -->
		<c:import url="/WEB-INF/views/includes/navigation.jsp"></c:import>
		<!-- /navigation -->

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="path-name">
					<!--단어장 경로 -->
					<ol class="breadcrumb">
						<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
						<li><a href="#">Tables</a></li>
						<li class="active">Simple</li>
					</ol>
					<!--/단어장 경로 -->
				</div>
				<!--갤러리, 리스트 버튼 -->
				<div class="button-name">

					<div class="pull-right box-tools">
						<a type="button" class="btn btn-info btn-xs" data-toggle="tooltip"
							href="${pageContext.request.contextPath}/mypage/list"><i
							class="fa fa-bars"></i></a> <a type="button"
							class="btn btn-info btn-xs" data-toggle="tooltip"
							href="${pageContext.request.contextPath}/mypage/gallery"><i
							class="fa fa-th-large"></i></a>
					</div>
				</div>
				<!--/갤러리, 리스트 버튼 -->
			</section>
			<!-- Main content -->
			<section class="content container">
				<div class="row">
					<div class="col-xs-12">
						<div class="box">
							<div class="box-body no-padding">
								<div class="row">
									<div class="col-lg-4 col-xs-4">
										<!-- small box -->
										<div class="small-box">
											<div class="inner-header">
												<div class="tools"></div>
											</div>
											<a href="${pageContext.request.contextPath}/leech"
												class="inner-body">
												<div class="inner">
													<h3>단어장 만들기</h3>
													<p></p>
													<p></p>
													<p></p>
												</div>
												<div class="icon">
													<i class="fa fa-plus"> </i>
												</div>
												<div class="add-footer bgcolor-default">
												
												</div>
											</a>
										</div>
									</div>
									<!-- ./col -->

									<!-- ./col -->
									<div class="col-lg-4 col-xs-4">
										<!-- small box -->
										<div class="small-box">
											<div class="inner-header">
												<div class="tools">
													<a href="#"><i class="fa fa-share"></i></a> <a
														href="${pageContext.request.contextPath}/listtest"><i
														class="fa fa-edit"></i></a> <a href="#"><i
														class="fa fa-trash-o"></i></a>
												</div>
											</div>
											<a href="${pageContext.request.contextPath}/flashcard"
												class="inner-body">
												<div class="inner">
													<h3>단어장 1</h3>
													<p>Seya</p>
													<p>2019-01-01</p>
													<p>
														<span class="label label-danger">공유불가</span>
													</p>
												</div>
												<div class="icon">
													<i class="fa fa-file-text"> </i>
												</div>
												<div class="small-box-footer bgcolor-default">
													공부하기 <i class="fa fa-arrow-circle-right"></i>
												</div>

											</a>
										</div>
									</div>



								</div>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
					</div>
				</div>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

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