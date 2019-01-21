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

.sidebar-list .ko-12 {
	
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

.content {
	min-height: 250px;
	padding: 35px;
	margin-right: auto;
	margin-left: auto;
	padding-left: 35px;
	padding-right: 35px
}

.content-header>.breadcrumb {
	float: left;
	background: transparent;
	margin-top: 0;
	margin-bottom: 0;
	font-size: 12px;
	padding-left: 35px;
	position: static;
	top: 15px;
	right: 10px;
	border-radius: 2px
}

.box-header>.box-tools {
	position: absolute;
	right: 20px;
	top: 10px
}

.btn-info {
	background-color: #dd4b39;
	border-color: #dd4b39
}

.small-box .icon {
	-webkit-transition: all .3s linear;
	-o-transition: all .3s linear;
	transition: all .3s linear;
	position: absolute;
	top: -10px;
	right: 35px;
	z-index: 0;
	font-size: 90px;
	color: rgba(0, 0, 0, 0.15)
}

.row {
	margin-right: 0px;
	margin-left: 0px
}

.text-white {
    color: #fff !important
}


.bgcolor-default{
    background: rgba(221, 75, 57, 0.5) !important; 
}

.color-default{
	color: rgba(221, 75, 57, 0.5) !important    
}

.small-box .icon {
    -webkit-transition: all .3s linear;
    -o-transition: all .3s linear;
    transition: all .3s linear;
    position: absolute;
    top: 20px;
    right: 35px;
    z-index: 0;
    font-size: 90px;
    color: rgba(221, 75, 57, 0.5);
}

.small-box:hover {
    text-decoration: none;
    color: #dd4b39 !important
}

.box-header>.box-tools {
    position: absolute;
    right: 20px;
    top: 10px;
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
<<<<<<< HEAD
		
		<!-- content -->
		<c:import url="/WEB-INF/views/kyunghwan/gamepage/_gamepageoutline.jsp"></c:import>
		<!-- content -->
		
=======

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header"></section>

			<!-- Main content -->

			<section class="content container">
				<div class="row">
					<div class="col-xs-12">
						<div class="box">
							<!-- .box-header -->
							<div class="box-header">
								<h3 class="box-title">내 단어장</h3>
								<!--갤러리, 리스트 버튼 -->
								<div class="pull-right box-tools">
									<a type="button" class="btn btn-info btn-xs"
										data-toggle="tooltip"
										href="${pageContext.request.contextPath}/mypage/list"><i
										class="fa fa-bars"></i></a> <a type="button"
										class="btn btn-info btn-xs" data-toggle="tooltip"
										href="${pageContext.request.contextPath}/mypage/gallery"><i
										class="fa fa-th-large"></i></a>
								</div>
								<!--/갤러리, 리스트 버튼 -->
							</div>
							<!-- /.box-header -->
							<div class="box-body no-padding">
								<div class="row">
									<div class="col-lg-3 col-xs-6">
										<!-- small box -->
										<div class="small-box">
											<div class="inner">
												<h3>새 단어장</h3>
												<p>&nbsp;</p>
												<p>&nbsp;</p>
												<p>&nbsp;</p>

											</div>
											<div class="icon">
												<i class="fa fa-plus"> </i>
											</div>
											<a href="#" class="small-box-footer bgcolor-default">
												More <i class="fa fa-arrow-circle-right"></i>
											</a>
										</div>
									</div>
									<!-- ./col -->
									<div class="col-lg-3 col-xs-6">
										<!-- small box -->
										<div class="small-box">
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
											<a href="#" class="small-box-footer bgcolor-default">
												More <i class="fa fa-arrow-circle-right"></i>
											</a>
										</div>
									</div>
									<!-- ./col -->
									<div class="col-lg-3 col-xs-6">
										<!-- small box -->
										<div class="small-box">
											<div class="inner">
												<h3>단어장 2</h3>
												<p>Seya</p>
												<p>2019-01-02</p>
												<p>
													<span class="label label-warning">선택허용</span>
												</p>

											</div>
											<div class="icon">
												<i class="fa fa-file-text"> </i>
											</div>
											<a href="#" class="small-box-footer bgcolor-default">
												More <i class="fa fa-arrow-circle-right"></i>
											</a>
										</div>
									</div>
									<!-- ./col -->
									<div class="col-lg-3 col-xs-6">
										<!-- small box -->
										<div class="small-box">
											<div class="inner">
												<h3>단어장 3</h3>
												<p>Seya</p>
												<p>2019-01-03</p>
												<p>
													<span class="label label-success">공유가능</span>
												</p>

											</div>
											<div class="icon">
												<i class="fa fa-file-text"> </i>
											</div>
											<a href="#" class="small-box-footer bgcolor-default">
												More <i class="fa fa-arrow-circle-right"></i>
											</a>
										</div>
									</div>
									<!-- ./col -->
								</div>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
					</div>
				</div>

			<section class="content container">
			<!-- adasd -->
			<!-- test -->
			<!-- 서경환 -->

			</section>
			<section class="content container"></section>

			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

>>>>>>> refs/remotes/origin/master
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