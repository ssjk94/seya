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
	href="https://fonts.googleapis.com/css?family=Poor+Strory:300,400,600,700,300italic,400italic,600italic">
<style>
.ko-12 {
	font-family: 'Poor Strory', cursive;
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
	font-size: 25px;
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
#wordbookBox{
	padding-right: 0px;
	padding-left: 0px;
}

.wordbook{
	width: 31.3%;
    margin: 5px 1% 10px 1%;
    background: linear-gradient(to right, rgb(240,240,240), rgba(245,245,245,0.7));
	padding: 0 1px 0 0;
	width: 258px;
	border: 1px solid darkgray; !important
}
.editSetting{
	height: 30px;
}

.deleteWordbook{
    padding: 0px 12px 0px 12px;
    margin: 3px 0 3px 0;
	visibility: hidden;
}
.editSetting:hover .deleteWordbook{
    visibility: visible;
    height: 28px;
    font-size: 20px;
    margin-right: 8px;
    background-color: rgba(245,245,245,0.7);
}
p{
	display: inline;
}
.enterFlashcard{
	width: 90%;
	margin: 5px 5% 10px 5%;
	padding: 5px 0 5px 0;
	background-color: #7c8ba8;
	color: #fff;
}
.enterFlashcard:hover{
	color: #fff;
	background-color: #626f87;
}
.infowordbook{
	border-top: 1px solid darkgray;
	padding: 3px 5px 3px 6px;
	clear: both;
}
.infowordbook img{
	width: 40px;
	height: 30px;
	margin-top: 5px;
	
}
.infowordbook b{
	font-size: 13px;
}
.infowordbook p{
	font-size: 13px;
}
.infowordbook div .pull-left:nth-child( 2 ){
	width: 95px;
}
.infowordbook div .pull-left:nth-child( 1 ){
	overflow: hidden;
	width: 40px;
	height: 35px;
}

.viewSelecter{
	margin: 10px 0 35px 0;
	padding-right: 6px;
	clear: both;
}

.shareWordbook{
	margin: 5px 0 5px 0;
	color: #000000;
	border: 1px solid darkgray;
    background-color: rgba(240,240,240);
}
.accessChange{
	margin: 5px 0 5px 0;
	color: #000000;
	border: 1px solid darkgray;
    background-color: rgba(240,240,240);
    width: 77px;
}
.changeborder1{
	border-color: red;
}
.changeborder0{
	border-color: dodgerblue;
}
.wordbookHeader{
	margin-bottom: 35px;
}
.wordbookHeader .pull-left{
	margin-left: 0px;
}
#pagenation{
	width: 100%;
	text-align: center;
}
.profile-content b{
	font-size: 20px;
}
.disabled{
	pointer-events: none;
}
.active{
	z-index: 3;
    color: #fff;
    cursor: default;
    background-color: #337ab7;
    border-color: #337ab7;
}
*:focus{
	outline: none;
}
.nonBtn{
	border: none;
	background: none;
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
				
			</section>
			<!-- Main content -->
			<section class="content container">
				
				<!-- 검색결과  and 단어장 추가버튼 -->
				<div class="wordbookHeader">
					<!-- 검색결과창 나오는칸 -->
					<!-- 검색결과 icon -->
					<div class="fa-key pull-left">
							단어장				
					</div>
					<!-- 단어장 추가하는 버튼이 들어가는칸 -->
					<c:if test="${URLId eq sessionScope.id}">
						<form action="${pageContext.request.contextPath}/${URLId}/addvocabulary">
							<input type="hidden" name="directoryNo" value="${directoryNo}">
							<div class="pull-right">
								<button type="submit" class="btn btn-sm bg-navy">단어장 만들기</button>
							</div>
						</form>
					</c:if>
				</div>
				
				<!-- 깨끗 -->
				<div style="clear: both;"></div>
				<!-- 깨끗 -->
				
				<!-- 단어장이 나오는 칸 -->
				<div class="box box-default">
				
					<!-- 단어장 뷰어를 선택하는 칸 -->
					<!--갤러리, 리스트 버튼 -->
					<div class="viewSelecter">
		
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

					<!-- 단어장 칸 -->
					<div  id="wordbookBox" class="wordbookBox">
						<c:forEach items="${requestScope.wordbookList}" var="wordbookVo">
							<!-- 실질 한개의 단어장 div -->
							<div class="wordbook box pull-left">
								<!-- 관리 들어가는 칸 -->
									<div class="editSetting">
								<c:if test="${sessionScope.id eq URLId}">
										<!-- 호버 들어가야함 -->
										<button class="pull-right btn btn-flat deleteWordbook">
											<i class="fa fa-trash-o"></i>
										</button>
								</c:if>
									</div>
								<!-- ㄲㄲ -->
								<div style="clear: both;"></div>
								<!-- ㄲㄲ -->
								<!-- 단어장 리스트로 들어가는 칸 -->
								<div>
									<!-- 단어장 제목들어가는 칸 -->
									<form action="${pageContext.request.contextPath}/${URLId}/vocabularylist">
										<input type="hidden" name="wordbookNo" value="${wordbookVo.wordbookNo}">
										<input type="hidden" name="wordbookName" value="${wordbookVo.wordbookName}">
										<div class="profile-content">
											<button type="submit" class="nonBtn">
												<b>${wordbookVo.wordbookName}</b>
											</button>
										</div>
									</form>
									<!-- 단어장에 포함된 단어 갯수 들어가는 칸 -->
									<div class="profile-content">
										<p>${wordbookVo.wordNum}단어</p>
									</div>
								</div>
								
								<!-- 플래쉬카드 들어가는 버튼 들어가는 칸 -->
								<form action="${pageContext.request.contextPath}/${URLId}/flashcard">
									<input type="hidden" name="wordbookNo" value="${wordbookVo.wordbookNo }">								
									<div>
										<button type="submit" class="btn btn-lg enterFlashcard">단 어 암 기</button>
									</div>
								</form>
								
								<!-- 단어장 정보 나오는칸 -->
								<div class="infowordbook">
									<!-- 단어장 정보칸 -->
									<div>
										<!-- 단어장 만든이의 이미지가 나오는 칸 -->
										<div class="pull-left">
											 <img class="img-circle" alt="사진없음" src="/upload/profile/${wordbookVo.wordbookMakerImage}">
										</div>
										<!-- 만든이와 만든 날짜나오는 칸 -->
										<div class="pull-left">
											<!-- 만든이 -->
											<div>
												<b>${wordbookVo.wordbookMaker}</b>
											</div>
											<!-- 날짜 나오는칸 -->
											<div>
												<p>${wordbookVo.wordbookRegdate}</p>
											</div>
										</div>
									</div>
									
									<!-- 공유해가는 버튼있는 칸 -->
									
										<c:choose>
											<c:when test="${sessionScope.id eq URLId}">
												<c:choose>
													<c:when test="${wordbookVo.wordbookAccess eq 0}">
														<div>
															<button class="btn btn-sm accessChange changeborder0">
																<i class="fa fa-save">공유변경</i>
															</button>
														</div>
													</c:when>
													<c:otherwise>
														<div>
															<button class="btn btn-sm accessChange changeborder1">
																<i class="fa fa-save">공유변경</i>
															</button>
														</div>
													</c:otherwise>
												</c:choose>
											</c:when>
											<c:when test="${sessionScope.id ne null}">
												<c:choose>
													<c:when test="${wordbookVo.wordbookAccess eq 0}">
														<div>
															<button class="btn btn-sm shareWordbook changeborder0">
																<i class="fa fa-save">&nbsp;&nbsp;&nbsp;퍼가기</i>
															</button>
														</div>
													</c:when>
													<c:otherwise>
														<div>
															<button class="btn btn-sm shareWordbook changeborder1">
																<i class="fa fa-save">&nbsp;&nbsp;&nbsp;퍼가기</i>
															</button>
														</div>
													</c:otherwise>
												</c:choose>
											</c:when>
											<c:otherwise>
												<c:choose>
													<c:when test="${wordbookVo.wordbookAccess eq 0}">
														<div>
															<button class="btn btn-sm shareWordbook changeborder0 notLogin">
																<i class="fa fa-save">&nbsp;&nbsp;&nbsp;퍼가기</i>
															</button>
														</div>
													</c:when>
													<c:otherwise>
														<div>
															<button class="btn btn-sm shareWordbook changeborder1 notLogin">
																<i class="fa fa-save">&nbsp;&nbsp;&nbsp;퍼가기</i>
															</button>
														</div>
													</c:otherwise>
												</c:choose>
											</c:otherwise>
										</c:choose>
									
								</div>
							
							</div>
							<!--//실질 한개의 단어장 -->
						</c:forEach>
						
					</div>
				</div>
				
			</section>
			<!-- /.content -->
			<!-- 페이지 네이션 -->
			<form name="pagenationForm" action="${URLId}">
				<input type="hidden" name="directoryNo" value="">
				<input type="hidden" name="index" value="">
			</form>
			<c:if test="${!empty wordbookList}">
				<div id="pagenation">
					<ul class="pagination pagination-sm no-margin">
						<li><a href="#">«</a></li>
						<c:forEach var="i" begin="${pagingVo.pageStartNum}" end="${pagingVo.pageLastNum}">
							<li><a href="#"><c:out value="${i}" /></a></li>
						</c:forEach>
						<li><a href="#">»</a></li>
	              </ul>
				</div>
			</c:if>
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
	
	$(document).ready(function() {
		
		console.log($(".pagination").find("a").text());
		console.log(${pagingVo.index});
		
		var allPageNum = $(".pagination").find("a").text();
		var nowPageIndex=allPageNum.indexOf("${pagingVo.index}") + 1;
		
		$(".pagination li:nth-child("+nowPageIndex+")").addClass("active");
		
		//몇번째 자식이냐에 포커스만 주면 끝
		
		if(${pagingVo.index}==1){
			$(".pagination>li:first").find("a").addClass("disabled");
		}
		if(${pagingVo.index}==${pagingVo.pageLastNum}){
			$(".pagination>li:last").find("a").addClass("disabled");
		}
	});
	
	$(".deleteWordbook").on("click",function(){
 		var wordbookNo=$(this).parent().siblings().find($('input[name="wordbookNo"]')).val();
 		
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
 		
 	});
	
	$(".accessChange").on("click",function(){
		var wordbookNo=$(this).parents(".infowordbook").prev().find($('input[name="wordbookNo"]')).val();
		var wordbookAccess;
		
		if($(this).hasClass("changeborder0")){
			wordbookAccess = 0;
		}else{
			wordbookAccess = 1;
		};
		
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
	});
	
	$(".shareWordbook").on("click",function(){
		var wordbookNo=$(this).parents(".infowordbook").prev().find($('input[name="wordbookNo"]')).val();
		if($(this).hasClass("notLogin")){
			alert("로그인이 필요한 기능입니다.");
		}else{
			if($(this).hasClass("changeborder0")){
				//공유가능	
				 $.ajax({
					url : "${pageContext.request.contextPath}/${URLId}/share",
					type : "post",
//		 			contentType : "application/json",
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
				 
			}else{
				//공유불가
				alert("가져갈 수 없는 단어장입니다.");
			}
		}
	});
 
	$(".pagination").on("click","a",function page(){
		
		if($(this).text()=="«"){
			document.pagenationForm.directoryNo.value = ${directoryNo};
			document.pagenationForm.index.value=${pagingVo.index}-1;
		}else if($(this).text()=='»'){
			document.pagenationForm.directoryNo.value = ${directoryNo};
			document.pagenationForm.index.value=${pagingVo.index}+1;
		}else{
			nowpageNum=$(this).text();
			document.pagenationForm.directoryNo.value = ${directoryNo};
			document.pagenationForm.index.value = nowpageNum;
		}
		document.pagenationForm.submit();
		
	});

 	

//새로고침
function refreshMemList(){
	location.reload();
}
</script>


</html>