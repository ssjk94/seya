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
	padding-top: 50px;
}

.table-hover>tbody>tr:hover {
	background-color: #f5f5f5;
	color: #dd4b39 !important;
}

.content-header>.breadcrumb {
	position: static;
}

.breadcrumb {
	background-color: #ffffff;
}

.button-name {
	padding-bottom: 20px;
	padding-right: 15px;
}

.btn-info {
	background-color: #dd4b39;
	border-color: #dd4b39;
}

.table-list {
	text-align: center
}

.table>tbody>tr>td {
	vertical-align: middle;
}

.container {
	width: 830px;
}

.row {
	margin-right: -10px;
}
/*
아웃라인을 없애면 버튼같은 푸른색 테두리 없앤다
*/
*:focus {
	outline: none;
}

button.btn-size {
	width: 100%;
	padding: 0px;
}

.table-hover>tbody>tr:hover {
	color: black !important;
}

.table-hover>tbody>tr>td.flashcard-link:hover, .table-hover>tbody>tr>td.tools-link>div>form>button.Btn-change:hover,
	.table-hover>tbody>tr>td.tools-link>div>button.Btn-delete:hover,
	.table-hover>tbody>tr>td.tools-link>div>button.Btn-share:hover {
	color: #dd4b39 !important;
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
						<li><a
							href="${pageContext.request.contextPath}/${URLId}/list"><i
								class="fa fa-dashboard"></i> Home</a></li>
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
								<table class="table table-hover">
									<thead>
										<tr>
											<th class="col-xs-9">
												<ul class="list-inline">
													<li class="col-xs-3 table-list">단어장 이름</li>
													<li class="col-xs-3 table-list">만든 이</li>
													<li class="col-xs-3 table-list">만든 날짜</li>
													<li class="col-xs-3 table-list">상태</li>
												</ul>
											</th>
											<th class="col-xs-3 table-list">링크</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${requestScope.wordbookList}"
											var="wordbookVo">
											<tr>
												<form
													action="${pageContext.request.contextPath}/${URLId}/flashcard"
													method="get">
													<input type="hidden" name="wordbookNo"
														value="${wordbookVo.wordbookNo}">
													<td class="flashcard-link col-xs-9">
														<button class="btn-size" type="submit"
															style="background-color: transparent; border: 0px transparent solid; padding-left: 0px; padding-right: 0px;">
															<ul class="list-inline">
																<li class="col-xs-3 table-list">${wordbookVo.wordbookName}</li>
																<li class="col-xs-3 table-list">${wordbookVo.wordbookMaker}</li>
																<li class="col-xs-3 table-list">${wordbookVo.wordbookRegdate}</li>
																<c:choose>
																	<c:when test="${wordbookVo.wordbookAccess eq 0}">
																		<li class="col-xs-3 table-list"><span
																			class="label label-success">공유 가능</span></li>
																	</c:when>
																	<c:otherwise>
																		<li class="col-xs-3 table-list"><span
																			class="label label-danger">공유 불가</span></li>
																	</c:otherwise>
																</c:choose>
															</ul>
														</button>
													</td>
												</form>
												<td class="tools-link col-xs-3 table-list">
													<div class="col-xs-12">
														<c:choose>
															<c:when test="${sessionScope.id eq URLId}">
																<!-- 내가 이용하는 공간 -->
																<!-- 공유 변경 아이콘 -->

																<button class="Btn-share col-xs-4 col-lg-4"
																	type="submit"
																	style="background-color: transparent; border: 0px transparent solid; padding-left: 0px; padding-right: 0px;"
																	onclick="changeWordbook(${wordbookVo.wordbookNo},${wordbookVo.wordbookAccess});">
																	공유</button>

																<!-- 삭제 아이콘 -->

																<button class="Btn-delete col-xs-4 col-lg-4"
																	type="submit"
																	style="background-color: transparent; border: 0px transparent solid; padding-left: 0px; padding-right: 0px;"
																	onclick="deleteWordbook(${wordbookVo.wordbookNo});">
																	삭제</button>

																<!-- 수정하러 들어가는 리스트 아이콘 -->

																<form
																	action="${pageContext.request.contextPath}/${URLId}/vocabularylist"
																	method="get">
																	<input name="wordbookNo" type="hidden"
																		value="${wordbookVo.wordbookNo}"> <input
																		name="wordbookName" type="hidden"
																		value="${wordbookVo.wordbookName}">
																	<button class="Btn-change col-xs-4 col-lg-4"
																		type="submit"
																		style="background-color: transparent; border: 0px transparent solid; padding-left: 0px; padding-right: 0px;">수정</button>
																</form>
															</c:when>

															<c:when test="${sessionScope.id eq null }">
															</c:when>
															<c:otherwise>
																<!-- 서로 다른 회원끼리 이용하는 곳 -->
																<c:choose>
																	<c:when test="${wordbookVo.wordbookAccess eq 0}">
																		<!-- 공유 기능 -->
																		<button class="Btn-share col-xs-4 col-lg-4"
																			type="submit"
																			style="background-color: transparent; border: 0px transparent solid; padding-left: 0px; padding-right: 0px;"
																			onclick="shareWordbook(${wordbookVo.wordbookNo});">
																			공유</button>
																	</c:when>
																	<c:otherwise>
																		<button class="Btn-share col-xs-4 col-lg-4"
																			type="submit"
																			style="background-color: transparent; border: 0px transparent solid; padding-left: 0px; padding-right: 0px;"
																			onclick="doNotShare();">공유</button>
																	</c:otherwise>
																</c:choose>
															</c:otherwise>
														</c:choose>
													</div>
												</td>
											</tr>
										</c:forEach>
										<c:if test="${sessionScope.id eq URLId && directoryNo ne 0}">
											<tr>
												<td align="center" colspan="2">
													<form
														action="${pageContext.request.contextPath}/${URLId}/addvocabulary"
														method="get">
														<input name="directoryNo" type="hidden"
															value="${directoryNo}">
														<button class="Btn-add" type="submit"
															style="background-color: transparent; border: 0px transparent solid; padding-left: 0px; padding-right: 0px;">
															새 단어장 추가</button>
													</form>
												</td>
											</tr>
										</c:if>
									</tbody>
								</table>
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
	function moveFlashcard(){
		document.moveflashcard.submit();
	}

</script>
</html>