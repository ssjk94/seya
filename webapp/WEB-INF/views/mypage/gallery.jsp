<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
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

</style>
</head>
<body>
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">

		<!-- Content Header (Page header) -->
		<section class="content-header">
			<!--단어장 경로 -->
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
				<li><a href="#">Tables</a></li>
				<li class="active">Simple</li>
			</ol>
			<!--/단어장 경로 -->
		</section>



		<!-- Main content -->
		<section class="content container">
			<div class="row">
				<div class="col-xs-12">
					<div class="box">
						<!-- .box-header -->
						<div class="box-header">
							<h2 class="box-title">내 단어장</h2>
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
										<a href="#" class="small-box-footer bgcolor-default"> More <i
											class="fa fa-arrow-circle-right"></i>
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
											<p><span class="label label-danger">공유불가</span></p>
											
										</div>
										<div class="icon">
											<i class="fa fa-file-text"> </i>
										</div>
										<a href="#" class="small-box-footer bgcolor-default"> More <i
											class="fa fa-arrow-circle-right"></i>
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
											<p><span class="label label-warning">선택허용</span></p>
											
										</div>
										<div class="icon">
											<i class="fa fa-file-text"> </i>
										</div>
										<a href="#" class="small-box-footer bgcolor-default"> More <i
											class="fa fa-arrow-circle-right"></i>
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
											<p><span class="label label-success">공유가능</span></p>
											
										</div>
										<div class="icon">
											<i class="fa fa-file-text"> </i>
										</div>
										<a href="#" class="small-box-footer bgcolor-default"> More <i
											class="fa fa-arrow-circle-right"></i>
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
		</section>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->
</body>
</html>