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

<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

<style>
.mainpage-wrapper {
	width: 1080px;
	height: 969px;
}

.mainpage-header {
	width: 1080px;
	height: 100px;
}

.main-logo {
	width: 165px;
    font-size: 34px;
    float: left;
    text-align: center;
    margin-right: 15px;
    margin-left: 165px;
    margin-top: 40px;
}
.main-logo:hover {
	cursor: pointer;

}

.searchdiv {
	width: 500px;
	float: left;
}

.input-group .form-control:focus {
	border-color: red;
}

.input-group .form-control {
	position: relative;
	z-index: 2;
	float: right;
	margin-bottom: 0;
	margin-top: 40px;
	border-color: red;
	width: 461px;
	height: 50px;
}

.input-group-btn:last-child>.btn, .input-group-btn:last-child>.btn-group
	{
	z-index: 2;
	margin-left: -1px;
	width: 40px;
	height: 50px;
	margin-top: 40px;
	border-color: red;
	background-color: white;
}

.main-content-wrapper {
	width: 1080px;
	height: 850px;
	margin-top: 10px;
}

.content-picture {
	width: 700px;
	height: 400px;
	border: 1px solid #d4d4d4;
	margin: 30px 30px 10px 30px;
	float: left;
	background-color: #ddd;
	overflow: hidden;
}

.main-content-login {
	width: 290px;
	height: 400px;
	margin: 30px 30px 10px 0px;
	float: left;
	background-color: #ffffff;
}

.main-content-seyaword-line {
	width: 1020px;
	height: 300px;
	border-top: 1px solid #262a2e;
	float: left;
	margin-top: 10px;
	margin-left: 30px;
}

.search-content-title {
	width: 303px;
	height: 50px;
	float: left;
	padding-left: 0px;
	font-size: 16px;
	font-weight: 700;
	color: #ffffff;
	background-color: #262a2e;
	border-top-left-radius: 25px;
	border-top-right-radius: 25px;
	border-bottom-left-radius: 25px;
	border-bottom-right-radius: 25px;
	margin-bottom: 16px;
	margin-left: 50px;
}

.recommend-wordbook-list {
	width: 220px;
	height: 260px;
	border: 1px solid #d4d4d4;
	margin: 20px 17px 20px 17px;
	overflow: hidden;
	float: left;
}

.wrong-wordbook-list {
	width: 220px;
	height: 260px;
	border: 1px solid;
	margin: 20px 17px 20px 17px;
	float: left;
}

.cpicture {
	width: 698px;
	height: auto;
}

.main-login-body {
	width: 290px;
	height: 390px;
	padding: 10px;
	border: 1px solid #d4d4d4;
}

.login-text {
	width: 280px;
	height: 60px;
	text-align: center
}

.login-text2 {
	width: 280px;
	height: 20px;
	text-align: center;
	font-size: 18px;
	margin-top: 10px;
}

.content-title-img {
	margin-right: 10px;
	margin-left: -5px;
}

.content-title-img2 {
	margin-top: 1px;
	margin-right: 12px;
}

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
	width: 920px;
    height: 100%;
    overflow: hidden;

}

.search-result {
	width: 1020px;
    height: 868px;
    background-color: #e9ecef;
    margin-left: 30px;
    padding-top: 20px;
    border-top: 1px solid red;
}

.search-result-list {
	padding-top: 5px;
    background-color: #ffffff;
    width: 920px;
    height: 160px;
    float: left;
    margin-bottom: 10px;
    margin-left: 50px;
    border: 1px solid lightgray;
}
.search-result-list:hover {
	cursor: pointer;
	border-bottom : 5px solid #262a2e;
	-webkit-transition: 0.5s all ease;
     transition: 0.5s all ease;
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
	margin-top: 3px;
	background-color: #ffffff;
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
	padding-top: 10px;
	padding-left: 20px;
}

.preview-mean-ko {
	height: 33px;
    width: 25%;
    border-right: #e2e2e2 2px solid;
    padding: 3px;
    padding-left: 18px;
    overflow: hidden;
    padding-top: 10px;
}

.search-img {
	margin-top: 10px;
	height: 50px;
	width: 50px;
	border-radius: 50px;
	padding-left: 0px;
}

.content-inline1 {
	width: 60px;
	padding-left: 0px;
	float: left;
}

.content-inline2 {
	padding-left: 0px;
	width: 100px;
	margin-top: 17px;
}

.content-inline3 {
	padding-left: 0px;
}

.content-inline4 {
	float: left;
    width: 50%;
    margin-top: 20px;
    font-size: 20px;
    border-left: solid #dd4b39;
    padding-left: 15px;
    margin-left: 28px;
}

.content-combine {
	width: 115px;
	height: 70px;
	float: left;
}

.search-text-box {
	width: 500px;
	height: 50px;
	margin-left: 50px;
	font-size: 20px;
}
.checkcheck{

}
</style>

</head>
<body>
	<div class="mainpage-wrapper">

		<!-- 헤더 시작 -->
		<div class="mainpage-header">
			<form action="/seyamain" id="mainlogoform"></form>
			<div class="main-logo" id="mainlogo">SeyaWord</div>

			<!-- 메인써취 -->
			<div class="searchdiv">
				<form action="/selectsearch.do" method="get" class="sidebar-form">
					<div class="input-group">
						<input type="text" name="keyword" class="form-control"
							placeholder="단어장 검색.."> <span class="input-group-btn">
							<button type="submit" id="search-btn" class="btn btn-flat">
								<i class="fa fa-search"></i>
								
								
							</button>
						</span>
					</div>
				</form>
			</div>
		</div>
		<!-- 헤더 끝 -->

		<!-- 본문 -->
		<div class="main-content-wrapper">
			<div class="search-result">
				<!-- 검색결과 -->
				<div class="search-content-title">
					<img class="content-title-img"
						src="/upload/profile/searchicon2.png">${ param.keyword } 의
					검색결과
				</div>
				<!-- 검색결과  끝-->
				<!-- 목록에서 단어장이름, 아이디를 뱉을곳 시작 -->
				<c:forEach items="${list}" var="list">
					<div class="searchform" data-wordbookno="${list.wordbookNo }" data-urlid="${list.id }">
						<input type="hidden" name="${URLId}" value="${list.id }">
						<input type="hidden" name="wordbookNo" value="${list.wordbookNo }">
						<input type="hidden" name="wordbookName" value="${list.wordbookName}">
						<!-- 목록 전체를 덮을 박스 -->
						<div class="search-result-list">
							<div class="search-result-content">
								<!-- 							<div class="list-content"> -->
								<!-- 목록 닉네임, 단어장이름, 이미지를 뱉을 부분 -->
								<div class="content-line-1 col-xs-12">
									<!-- 닉네임, 유저이미지, 단어갯수, 단어장 제목 뱉을곳 -->
									<div class="content-inline1">
										<img class="search-img"
											src="/upload/profile/${list.userImage}">
									</div>
									<div class="content-combine">
										<div class="content-inline2">${list.nickName }</div>
										<div class="content-inline3">${list.count }단어</div>
									</div>
									<div class="content-inline4">${list.wordbookName}</div>
								</div>
								<!-- 							</div> -->
								<div class="preview-word col-xs-12">
									<div class="preview-word-eng col-xs-3">${list.wordArr[0]}</div>
									<div class="preview-word-eng col-xs-3">${list.wordArr[1]}</div>
									<div class="preview-word-eng col-xs-3">${list.wordArr[2]}</div>
									<div class="preview-word-eng col-xs-3">${list.wordArr[3]}</div>
									<!-- 영어단어를 뱉을 부분 -->
								</div>
								<div class="preview-mean col-xs-12">
									<div class="preview-mean-ko col-xs-3">${list.meanArr[0]}</div>
									<div class="preview-mean-ko col-xs-3">${list.meanArr[1]}</div>
									<div class="preview-mean-ko col-xs-3">${list.meanArr[2]}</div>
									<div class="preview-mean-ko col-xs-3">${list.meanArr[3]}</div>
									<!-- 해석인 한글을 뱉을부분 -->
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
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
		<!-- 본문 끝 -->
	</div>






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
	$(".searchform").on("click", function () {
		var wordbookno = $(this).data("wordbookno");
		var urlid = $(this).data("urlid");
		
		
		console.log(wordbookno);
		var httpStr="./"+urlid+"/vocabularylist?wordbookNo="+wordbookno;
		console.log(httpStr);
		$(location).attr('href', httpStr);

	});
		
	$('#mainlogo').click(function() {
		$('#mainlogoform').submit();
	});


</script>

</html>