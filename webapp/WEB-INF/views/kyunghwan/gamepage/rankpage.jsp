<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
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

.table-hover>tbody>tr:hover {
	background-color: #f5f5f5;
	color: #dd4b39 !important;
}

.content-header>.breadcrumb {
	position: static;
	float: left;
	margin-top: -35px
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

.page {
	padding-left: 250px;
}

#vocaarea {
	border-color: rgba(221, 75, 57, 0.5);
	width: 720px;
	height: 350px;
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
	width: 92%;
	margin-top: 20px;
	padding-right: 30px;
}

.btn-sm {
	margin-left: 700px;
	margin-top: 20px;
	margin-right: 35px;
	margin-bottom: 20px;
}

.subheader {
	width: 300px;
	height: 50px;
	border: 1px solid #000000;
	margin-left: 50px;
}

.wordpadname {
	width: 300px;
	height: 50px;
	border: 2px #ffffff;
	border-bottom: solid 1.5px #dd4b39;
	margin-left: 50px;
	font-size: 25px;
	margin-bottom: 20px;
	margin-top: 10px;
}

input:disabled {
	background-color: #ffffff;
}

.form-control {
	margin-left: 30px;
}

<
style>.boardList thead th {
	height: 54px;
	font-size: 14px;
	font-weight: normal;
	color: white;
	background-color: #dd4b39;
	text-align: center;
}

.div_ranking_list {
	float: right;
	height: 200px;
	margin-left: 100px;
}

.boardList {
	position: static;
	margin-bottom: 27px;
	border-bottom: 2px solid black;
	margin-right: 20px;
	float: right;
}

.small, small {
	font-size: 85%;
	padding-right: 10px;
}

.trline {
	border-bottom: 1px solid black;
	margin-bottom: 5px;
	text-align: center;
}

.grade .small img {
	float: left;
}

.td {
	padding: 5px;
}

.rankgamecontainer {
	width: 800px;
	height: 600px;
	margin-left: 8px;
}

.rank-header {
	font-size: 16px;
	background: #dd4b39;
}

.rank-content {
	font-size: 20px;
	border-bottom: 1px solid rgba(0, 0, 0, 0.1);
	border-bottom: 1px solid rgba(0, 0, 0, 0.1)
}

.table-wrapper {
	list-style: none;
	margin: auto;
	padding: 0;
	text-align: center;
}

.rank-header-text {
	text-align: center;
}

.rank-img-circle {
	width: 50px;
	height: 50px;
	border-radius: 50%;
	float: right;
}

.rank-nickname {
	margin-left: 20px;
	text-align: left
}

.rank-score {
	text-align: center;
}

td.col-xs-3.rank-no, td.col-xs-3.rank-nickname, td.col-xs-3.rank-score {
	vertical-align: middle;
}

.breadcrumb {
	background-color: #ffffff;
	margin-bottom: 0px
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
			</section>
			<section class="content container">
				<input type="text" class="wordpadname" name="new-word"
					disabled="disabled" value="플래시 카드">
				<div class=rankgamecontainer>

					<div id="div_ranking_list">
						<ul class="table-wrapper">
							<%-- <c:forEach items="${requestScope.gbList}" var="gbVo"> --%>

							<li>
								<table class="table table-hover">
									<thead>
										<tr class="rank-header">
											<th class="col-xs-3 rank-header-text">등수</th>
											<th class="col-xs-6 rank-header-text" colspan="2">닉네임</th>
											<th class="col-xs-3 rank-header-text">점수</th>
										</tr>
									</thead>
									<tbody>
										<tr class="rank-content">
											<td class="col-xs-3 rank-no">1</td>
											<td class="col-xs-3"><img
												src="/seya/dist/images/profile1.png" class="rank-img-circle"
												alt="User Image"></td>
											<td class="col-xs-3 rank-nickname">Seya</td>
											<td class="col-xs-3 rank-score">5709점</td>
										</tr>
										<tr class="rank-content">
											<td class="col-xs-3 rank-no">1</td>
											<td class="col-xs-3"><img
												src="/seya/dist/images/profile1.png" class="rank-img-circle"
												alt="User Image"></td>
											<td class="col-xs-3 rank-nickname">Seya</td>
											<td class="col-xs-3 rank-score">5709점</td>
										</tr>
										<tr class="rank-content">
											<td class="col-xs-3 rank-no">1</td>
											<td class="col-xs-3"><img
												src="/seya/dist/images/profile1.png" class="rank-img-circle"
												alt="User Image"></td>
											<td class="col-xs-3 rank-nickname">Seya</td>
											<td class="col-xs-3 rank-score">5709점</td>
										</tr>
									</tbody>



								</table>
							</li>
							<%-- </c:forEach> --%>
						</ul>
					</div>
				</div>
			</section>



		</div>
		<!-- /.content-wrapper -->

		<!-- footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!-- /footer -->

	</div>
	<!-- ./wrapper -->
</body>

<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 3 -->
<script
	src="${pageContext.request.contextPath}/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script
	src="${pageContext.request.contextPath}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/dist/js/adminlte.min.js"></script>

<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->

</html>