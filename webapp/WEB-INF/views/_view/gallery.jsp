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

<!-- favinco오류 제거용 -->
<link rel="shortcut icon" href="">

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

.fixed .content-wrapper, .fixed .right-side {
	padding-top: 85px;
}

.content-header>.breadcrumb {
	position: static;
}

.breadcrumb {
	background-color: #ffffff;
	margin-top: -35px;
}

.button-name {
	padding-bottom: 20px;
	padding-right: 15px;
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

i.fa-plus {
	font-size: 80px;
}

i.fa-file-text {
	font-size: 80px;
}

.icon {
	top: -25px;
	height: 100px;
}

.small-box .file-icon {
	-webkit-transition: all .3s linear;
	-o-transition: all .3s linear;
	transition: all .3s linear;
	position: absolute;
	top: -25px;
	right: 10px;
	z-index: 0;
	font-size: 90px;
	color: rgba(0, 0, 0, 0.15);
}

.inner-body:hover i.fa-file-text, .inner-body:hover i.fa-plus,
	.Btn-delete:hover i.fa-trash-o, .Btn-change:hover i.fa-edit, .Btn-share:hover i.fa-share,
	.inner-body:hover h3, .inner-body:hover p {
	color: #dd4b39;
}

.small-box:hover .inner-header, .small-box:hover .inner-body {
	color: black;
}

.row {
	padding-left: 10px;
	padding-right: 10px;
}

.add-footer {
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

.container {
	width: 840px;
}

.small-box {
	border: 1px solid #fff;
	margin-bottom: 10px;
	margin-top: 10px;
}

.inner-header {
	padding: 5px;
	height: 40px;
	width: 100%;
	color: #ffffff;
}

.inner-body {
	height: 170px;
}

.small-box h3 {
	height: 34px;
	font-size: 30px;
	text-align: center;
}

.Btn-submit {
	background-color: transparent;
	border: 0px transparent solid;
	outline:none;
}

h3.create-wordbook-name {
	width: 100%;
	font-size: 30px;
}

h3.wordbook-name {
	text-align: left;
	padding-top: 10px;
	width: 100%;
	font-size: 20px;
}

.wordbook-maker {
	height: 20px;
	width: 100%;
}

.wordbook-regdate {
	height: 20px;
	width: 100%;
}

.wordbook-access {
	height: 20px;
	width: 100%;
}

.wordbook-inner {
	height: 100px;
	width: 100%
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
						<li><a href="${pageContext.request.contextPath}/${URLId}"><i
								class="fa fa-dashboard"></i> Home </a></li>
					</ol>
					<!--/단어장 경로 -->
				</div>
				<!--갤러리, 리스트 버튼 -->
				<div class="button-name">

					<div class="pull-right box-tools">
						<a type="button" class="btn btn-info btn-xs" data-toggle="tooltip"
							href="${pageContext.request.contextPath}/${URLId}/list"><i
							class="fa fa-bars"></i></a> <a type="button"
							class="btn btn-info btn-xs" data-toggle="tooltip"
							href="${pageContext.request.contextPath}/${URLId}"><i
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
									<!-- 자기것이 아니면 이 추가창이 눌리면 안됌 아니 보이면?  -->
									<c:if test="${sessionScope.id eq URLId && directoryNo ne 0}">
										<div class="col-lg-4 col-xs-4">
											<!-- small box -->
											<div id="addvocabulary" class="small-box">
												<div class="inner-header"></div>
												<form class="inner-body"
													action="${pageContext.request.contextPath}/${URLId}/addvocabulary"
													method="get">
													<input name="directoryNo" type="hidden"
														value="${directoryNo}">
													<button type="submit" class="Btn-submit col-xs-12">
														<h3 class="create-wordbook-name">단어장 만들기</h3>
														<div class="wordbook-inner">
															<div class="col-lg-6 col-xs-6">
																<p class="wordbook-maker"></p>
																<p class="wordbook-regdate"></p>
																<p class="wordbook-access"></p>
															</div>
															<div class="col-lg-6 col-xs-6">
																<div class="icon">
																	<i class="fa fa-plus"> </i>
																</div>
															</div>
														</div>
													</button>
												</form>
											</div>
										</div>
									</c:if>

									<!-- ./col -->
									<c:forEach items="${requestScope.wordbookList}"
										var="wordbookVo">
										<!-- ./col -->

										<div class="col-lg-4 col-xs-4">
											<!-- small box -->
											<div class="small-box">
												<div class="inner-header">
													<div class="col-xs-12">
														<div class="col-lg-3 col-xs-3"></div>
														<c:choose>
															<c:when test="${sessionScope.id eq URLId}">
																<!-- 내가 이용하는 공간 -->

																<!-- 공유 변경 아이콘 -->
																<div class="col-lg-3 col-xs-3">
																	<button class="Btn-share" type="submit"
																		style="background-color: transparent; border: 0px transparent solid; outline:none;"
																		onclick="changeWordbook(${wordbookVo.wordbookNo},${wordbookVo.wordbookAccess});">
																		<i class="fa fa-share"></i>
																	</button>
																</div>
																<!-- 수정하러 들어가는 리스트 아이콘 -->
																<div class="col-lg-3 col-xs-3">
																	<form class="Btn-change" style="display: inline"
																		action="${pageContext.request.contextPath}/${URLId}/vocabularylist"
																		method="get">
																		<input name="wordbookNo" type="hidden"
																			value="${wordbookVo.wordbookNo}"> <input
																			name="wordbookName" type="hidden"
																			value="${wordbookVo.wordbookName}">
																		<button type="submit"
																			style="background-color: transparent; border: 0px transparent solid; outline:none;">
																			<i class="fa fa-edit"></i>
																		</button>
																	</form>
																</div>
																<!-- 삭제 아이콘 -->
																<div class="col-lg-3 col-xs-3">
																	<button class="Btn-delete" type="submit"
																		style="background-color: transparent; border: 0px transparent solid; outline:none;"
																		onclick="deleteWordbook(${wordbookVo.wordbookNo});">
																		<i class="fa fa-trash-o"></i>
																	</button>
																</div>
															</c:when>

															<c:when test="${sessionScope.id eq null}">

															</c:when>

															<c:otherwise>
																<!-- 서로 다른 회원끼리 이용하는 곳 -->
																<c:choose>
																	<c:when test="${wordbookVo.wordbookAccess eq 0}">
																		<!-- 공유 기능 -->
																		<div class="col-xs-12">
																			<div class="col-lg-9 col-xs-9"></div>
																			<div class="col-lg-3 col-xs-3">
																				<button class="Btn-share" type="submit"
																					style="background-color: transparent; border: 0px transparent solid; outline:none;"
																					onclick="shareWordbook(${wordbookVo.wordbookNo});">
																					<i class="fa fa-share"></i>
																				</button>
																			</div>
																		</div>
																	</c:when>

																	<c:otherwise>
																		<div class="col-xs-12">
																			<div class="col-lg-9 col-xs-9"></div>
																			<div class="col-lg-3 col-xs-3">
																				<button class="Btn-share" type="submit"
																					style="background-color: transparent; border: 0px transparent solid; outline:none;"
																					onclick="doNotShare();">
																					<i class="fa fa-share"></i>
																				</button>
																			</div>
																		</div>
																	</c:otherwise>
																</c:choose>
															</c:otherwise>
														</c:choose>
													</div>
												</div>
												<!-- 여기에 버튼 형식  -->
												<div class="inner-body">
													<form
														action="${pageContext.request.contextPath}/${URLId}/flashcard"
														method="get">
														<input name="directoryNo" type="hidden"
															value="${wordbookVo.directoryNo}"> <input
															name="wordbookNo" type="hidden"
															value="${wordbookVo.wordbookNo}">
														<button type="submit" class="Btn-submit col-xs-12">
															<h3 class="wordbook-name">${wordbookVo.wordbookName}</h3>
															<div class="wordbook-inner">
																<div class="col-lg-6 col-xs-6">
																	<p class="wordbook-maker">${wordbookVo.wordbookMaker}</p>
																	<p class="wordbook-regdate">${wordbookVo.wordbookRegdate}</p>
																	<p class="wordbook-access">
																		<c:choose>

																			<c:when test="${wordbookVo.wordbookAccess eq 0}">
																				<span class="label label-success">공유 가능</span>
																			</c:when>

																			<c:otherwise>
																				<span class="label label-danger">공유 불가</span>
																			</c:otherwise>

																		</c:choose>
																	</p>
																</div>
																<div class="col-lg-6 col-xs-6">
																	<div class="file-icon">
																		<i class="fa fa-file-text"> </i>
																	</div>

																</div>
															</div>
														</button>
													</form>
												</div>




											</div>
										</div>
									</c:forEach>



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

<script type="text/javascript">
//새로고침
function refreshMemList(){
	location.reload();
}

	function deleteWordbook(wordbookNo) {
		console.log(wordbookNo);
		$.ajax({
			url : "${pageContext.request.contextPath}/${URLId}/delete",
			type : "post",
// 			contentType : "application/json",
			data : {wordbookNo: wordbookNo},
			dataType : "html",
			success : function(){
			/*성공시 처리해야될 코드 작성*/
				alert('삭제되었습니다');
				refreshMemList();
			},
			error : function(XHR, status, error) {
			console.error(status+" : "+error);
			}
		});
	};
	
	function shareWordbook(wordbookNo) {
		console.log(wordbookNo);
		$.ajax({
			url : "${pageContext.request.contextPath}/${URLId}/share",
			type : "post",
// 			contentType : "application/json",
			data : {wordbookNo: wordbookNo},
			dataType : "html",
			success : function(){
			/*성공시 처리해야될 코드 작성*/
				alert('가져갔어요');
				refreshMemList();
			},
			error : function(XHR, status, error) {
			console.error(status+" : "+error);
			}
		});
	};
	
	function changeWordbook(wordbookNo,wordbookAccess) {
		console.log(wordbookNo,wordbookAccess);
		$.ajax({
			url : "${pageContext.request.contextPath}/${URLId}/change",
			type : "post",
// 			contentType : "application/json",
			data : {wordbookNo: wordbookNo, wordbookAccess: wordbookAccess},
			dataType : "html",
			success : function(){
			/*성공시 처리해야될 코드 작성*/
				alert('공유 기능이 변경되었습니다.');
				refreshMemList();
			},
			error : function(XHR, status, error) {
			console.error(status+" : "+error);
			}
		});
	};
	function doNotShare(){
		alert('가져갈 수 없는 단어장 입니다.');
	}
</script>


</html>