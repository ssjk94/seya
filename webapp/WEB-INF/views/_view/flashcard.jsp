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
	padding-top: 85px;
}

.panel-primary {
	border-color: #000000;
	margin-top: 35px;
}

.content-header>.breadcrumb {
	position: static;
}

.panel-height {
	height: 400px
}

.modal-notline {
	border-top: 0px;
}

.gli-left {
	
}

.gli-right {
	
}

.gli-left .glyphicon-chevron-left {
	font-size: 80px;
	float: left;
	display: block;
	color: white
}

.gli-right .glyphicon-chevron-right {
	font-size: 80px;
	float: right;
	display: block;
	color: white
}

.gli-left:hover .glyphicon-chevron-left {
	font-size: 80px;
	float: left;
	display: block;
	color: black
}

.gli-right:hover .glyphicon-chevron-right {
	font-size: 80px;
	float: right;
	display: block;
	color: black
}

.fc-wrapper {
	margin-top: 110px;
}

p.flashcard-font {
	font-size: 80px;
	margin-top: -18px;
}

.gamerow {
	margin-top: 50px;
}

.breadcrumb {
	background-color: #ffffff;
	margin-top: -35px;
}

.quiz-question {
	width: 850px;
	height: 50px;
	font-size: 20px;
}

.quiz-answer {
	width: 850px;
	height: 30px;
	font-size: 16px;
	margin-bottom: 15px;
	text-align: center;
	margin-left: 50px;
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

			<!-- Main content -->
			<section class="content container">

				<c:import url="/WEB-INF/views/kyunghwan/flashcard/_flashcard.jsp"></c:import>


				<!--게임링크-->
				<div class="gamerow text-center">
					<div class="col-xs-4 col-md-4">
						<form
							action="${pageContext.request.contextPath}/${URLId}/flashcardgame"
							method="get">
							<input name="wordbookNo" type="hidden"
								value="${flashcardVo.wordbookNo}">
							<button type="submit"
								style="background-color: transparent; border: 0px transparent solid;">
								<img class="flashcard-image"
									src="${pageContext.request.contextPath}/dist/images/flashcards1.jpg"
									alt="플래시 카드">
								<p class=text-center>플래시 카드</p>
							</button>
						</form>

					</div>

					<div class="col-xs-4 col-md-4">

						<a href="#"><img class="flashcard-image"
							src="dist/images/wordmatch.png" alt="짝 맞추기"> </a>
						<p class=text-center>짝 맞추기</p>
					</div>
					<div class="col-xs-4 col-md-4">
						<img class="flashcard-image" data-toggle="modal"
							data-target="#quizModal"
							src="${pageContext.request.contextPath}/dist/images/flashcards1.jpg"
							alt="랜덤 퀴즈">
						<p class=text-center>랜덤 퀴즈</p>



					</div>
			</section>
			<div class="modal fade" id="quizModal">
				<div class="modal-dialog" style="width: 80%">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title">사지선다 퀴즈</h4>
						</div>
						<div class="modal-body">
							<div class="quiz-question" id="game-question">
							
							</div>
							<div class="quiz-answer">
								<p>1.</p>
							</div>
							<div class="quiz-answer">
								<p>2.</p>
							</div>
							<div class="quiz-answer">
								<p>3.</p>
							</div>
							<div class="quiz-answer">
								<p>4.</p>
							</div>


						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary">Save
								changes</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		<!-- footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!-- /footer -->

	</div>
	<!-- ./wrapper -->

	<!-- "${pageContext.request.contextPath}/${URLId}/multiplechoice" 써야할지도모름-->

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
$(document).ready(function(){

	$(function () {
		var wordlist = new Array();
		var badmeanlist = new Array();
		var meanlist = new Array();
		var questionlist = new Array();
		var answerlist = new Array();
		var k = 0;
		var p = 0;
	
	 	<c:forEach items="${wordList}" var="wordlist">
			var word = new Object();
			word.wordname = "${wordlist.wordName}";
			wordlist.push(word);
		</c:forEach> 
		
		<c:forEach items="${meanList}" var="meanlist">
			var mean = new Object();
			mean.meanname = "${meanlist.meanName}";
		    meanlist.push(mean);
		</c:forEach>
	 	
		<c:forEach items="${badMeanList}" var="badmeanlist">
			var badmean = new Object();
			badmean.badname = "${badmeanlist.seyaMeanName}";
		    badmeanlist.push(badmean);
		</c:forEach>
	
				

		for(var i=0; i<wordlist.length; i++){
			
			k = Math.floor(Math.random() * wordList.length);
			questionlist[i] =  wordlist[k].wordname;
			answerlist[i] = meanlist[k].meanname;
			
			for (var q=0; q<3; q++){
				q = Math.floor(Math.random() * badmeanlist.length);				
				answerlist[i] = badmeanlist[q].badname;
				badmeanlist.splice(q, 1);
			}
			
			wordlist.splice(k, 1);
			meanlist.splice(k, 1);
			console.log("질문리스트 "+ i + "번째 : " + questionlist[i]);
			console.log("답 리스트  "+ i + "번째 : " + answerlist[i]);
			
		};
		

		
		
   });


});
	
</script>
</html>