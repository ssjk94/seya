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
<!-- 경환 css -->
<style type="text/css">
.pair-dialog {
	width: 1100px;
	height: 820px;
	display: inline-block;
	margin-left: 10%;
	margin-right: 10%;
}

.pair-content {
	height: 100%;
	overflow: hidden;
}

.gameInfo {
	clear: both;
	height: 60px;
}

.gameInfo p {
	display: inline-block;
	font-size: 25px;
	margin: 0px;
}

.gameInfo b {
	font-size: 35px;
}

.gameInfo img {
	width: 40px;
}

.gameInfo div:nth-child(3) p {
	margin-top: 10px;
}

.gameInfo .pull-left {
	margin-right: 20px;
}

.gameInfo .pull-right {
	margin-left: 10px;
}

.clearBox {
	clear: both;
    text-align: center;
    padding-top: 5%;
    padding-bottom: 5%;
    height: 50%;
    position: relative;
    z-index: 2;
}

.clearBox img {
	animation-duration: 1s;
	animation-name: slidein;
}

@
keyframes slidein {from { margin-left:75%;
	width: 10%
}

to {
	margin-left: 0%;
	width: 92%;
}

}
.clearBox span {
	font-size: 25px;
    display: block;
    text-align: center;
    line-height: 113px;
    vertical-align: middle;
    animation-duration: 1s;
    animation-name: slidein;
    position: relative;
    z-index: 2;
    background-color: cornsilk;
}

.pairSetGameWordBox {
	width: 100%;
    height: 100%;
    float: left;
    border: 1px solid;
    overflow: hidden;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    border-bottom-left-radius: 10px;
    border-bottom-right-radius: 10px;
}

.pairSetGameMeanBox {
	width: 100%;
    height: 100%;
    float: left;
    border: 1px solid;
    border-top-left-radius: 10px;
    overflow: hidden;
    border-top-right-radius: 10px;
    border-bottom-left-radius: 10px;
    border-bottom-right-radius: 10px;
}

.choiceblock {
	color: darkcyan;
	font-weight: bold;
}

.pair-footer button {
	background-color: #7c8ba8;
}

.pair-footer button:hover {
	background-color: #626f87;
}

.click {
	width: 20%;
	margin-left: 4%;
	height: 70%;
	float: left;
	display: inline-block;
}

.pair-body {
	height: 70%;
}

.click-checker{

	border: 2px solid cyan;
}
</style>
<style>
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);

@import url(//fonts.googleapis.com/earlyaccess/hanna.css);

@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic');

body {
	font-family: 'Jeju Gothic', sans-serif;
}

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
	padding-top: 40px;
}

.panel-primary {
	border-color: #000000;
	margin-top: 35px;
}

.content-header>div {
	position: static;
	background: rgba(124, 139, 168,0.7);
	border: 1px solid white;
	color: white;
	border-radius: 4px;
	padding: 5px 0 5px 10px;
	margin-left: 14px;
    margin-right: 14px;
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

.quiz-header {
	width: 100%;
	height: 100px;
	font-size: 20px;
	border: solid 2px;
	padding: 10px;
	padding-top: 30px;
	text-align: center;
}

.quiz-answer {
	width: 100%;
	height: 70px;
	font-size: 16px;
	margin-top: 10px;
	float: right;
	padding: 10px;
	text-align: center;
	border: solid;
	padding-top: 20px;
}

.quiz-OX {
    width: 100%;
    height: 175px;
    border: solid;
    float: left;
    padding: 10px;
    padding-top: 15px;
    margin-top: 10px;
    text-align: center;
}

.quiz-question {
	width: 100%;
	heigth: 70%;
	font-size: 50px;
	padding-top: 30px;
}

.check-mark {
	width: 50px;
	height: 50px;
	float: left;
	margin-top: -14px;
}

.circle-mark {
	width: 50px;
	height: 50px;
	float: left;
	margin-top: -14px;
}

.x-mark {
	width: 50px;
	height: 50px;
	float: left;
	margin-top: -14px;
}

.select-answer {
	width: 94%;
}

.correct-mark {
	width: 30%;
    margin-bottom: 15px;
    min-width: 150px;
    max-width: 150px;
    position: absolute;
    margin-left: -75px;
    margin-top: -5px;
}

#ansCheck01 {
	float: left;
}

#ansCheck02 {
	float: left;
}

#ansCheck03 {
	float: left;
}

#ansCheck04 {
	float: left;
}

.quiz-answer img {
	visibility: hidden;
}

.lee-dialog {
	width: 1100px;
	height: 820px;
}

.lee-content {
	width: 100%;
	height: 100%;
}

.random-quiz-result-header {
	width: 860px;
	height: 100px;
	font-size: 36px;
	text-align: center;
	padding-top: 20px;
	z-index: 2;
	position: relative;
	color: antiquewhite;
}

.random-quiz-result-list {
	width: 860px;
	height: 50px;
	font-size: 36px;
	text-align: center;
	color: ghostwhite;
}

.random-quiz-result-score {
	width: 860px;
	height: 50px;
	font-size: 36px;
	text-align: center;
	color: khaki;
}
.random-quiz-result-highScore{
	width: 860px;
	height: 50px;
	font-size: 36px;
	text-align: center;
	color: aliceblue;
}

.random-quiz-result-text {
	width: 860px;
	height: 55px;
	font-size: 36px;
	text-align: center;
	padding-top: 5px;
}

.result-image {
	margin-bottom: 15px;
	position: absolute;
	width: 870px;
	height: 300px;
}

.random-quiz-result-content {
	position: relative;
	z-index: 2;
}
.blank-div {
	width: 860px;
	height: 100px;

}


.result-rank{
	width: 870px;
    height: 430px;
    background-color: cornsilk;
    margin-bottom: -30px;

}
.result-rank-header{
	width: 600px;
    height: 50px;
    margin: auto;
    text-align: center;
    padding-top: 10px;
    font-size: 30px;
}
.result-rank-list{
	width: 600px;
    height: 70px;
    border: solid;
    margin: auto;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    border-bottom-left-radius: 10px;
    border-bottom-right-radius: 10px;
    margin-bottom: 5px;
    background-color: peachpuff;
}

.result-rank-userImage{
    width: 70px;
    height: 70px;
    float: left;
    margin-left: 10px;
    margin-right: 10px;
}
.result-rank-nickName{
	width: 200px;
    height: 70px;
    float: left;
    padding: 10px;
    padding-top: 20px;
    font-size: 17px;
}
.result-rank-highScore{
	width: 200px;
    height: 70px;
    float: left;
    padding: 20px;
    font-size: 20px;
    text-align: right;
}
.rank-image-size{
	width: 60px;
	height: 60px;
	border-radius: 50%;
	
}
.result-ranker{
	width: 100px;
	height: 70px;
	float: left;
	padding-left: 10px;
}
.result-ranker-image1{
	width: 70px;
    height: 70px;
}
.result-ranker-image2{
	width: 65px;
    height: 65px;
}
.modal-header-cotent{
	width:1060px;
	height: 130px;
	
}
.modal-game-title{
	width: 340px;
	height: 50px;
	border: 1px solid;
	float: left;
}
.modal-game-score{
	width: 260px;
	height: 50px;
	border: 1px solid;
	float: left;
	
}
.modal-game-list{
	width: 200px;
	height: 50px;
	border: 1px solid;
	float: left;

}

.modal-game-life{
	width: 200px;
	height: 50px;
	border: 1px solid;
	float: right;
}
.heart-img{
	width:40px;
	height: 40px;
}
.pair-img-size{
	width: 1070px;
    height: 544px;
    position: absolute;
    opacity: 0.9;
    z-index: 1;
    text-align: left; !important
}
.modal-size-controller{
	height: 75%;
}
</style>

</head>
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
				<div>
					<span class="fa fa-bank">&nbsp;&nbsp;</span>
					<a href="${pageContext.request.contextPath}/${URLId}">홈</a>&nbsp;
					<span>>></span>&nbsp;
					<span>단어 공부</span>&nbsp;
				</div>
			</section>

			<!-- Main content -->
			<section class="content container">
				<c:import url="/WEB-INF/views/kyunghwan/flashcard/_flashcard.jsp"></c:import>
				<!--게임링크-->
				<!-- 경환 body -->
				<c:import url="/WEB-INF/views/_view/pairsetgame.jsp"></c:import>
				<!-- 세윤 게임 body -->
				<c:import url="/WEB-INF/views/_view/flashcardgame.jsp"></c:import>
				<div class="gamerow text-center">
					

					<div class="col-xs-4 col-md-4 text-center" id="flashQuiz">
						<img class="flashcard-image" data-toggle="modal"
							data-target="#flashquizModal"
							src="/upload/profile/flashcardgame.jpg"
							alt="플래시 퀴즈">
						<p class=text-center>플래시 퀴즈</p>
					</div>

					

					<div class="col-xs-4 col-md-4" id="pairSetGame">
						<a href="#"><img class="flashcard-image" data-toggle="modal"
							data-target="#pairSetGameModal" src="/upload/profile/wordmatch1.png"
							alt="짝 맞추기"> </a>
						<p class=text-center>짝 맞추기</p>
					</div>


					<div class="col-xs-4 col-md-4" id="randomQuiz">
						<img class="flashcard-image" data-toggle="modal"
							data-target="#quizModal"
							src="/upload/profile/randomgame.png"
							alt="랜덤 퀴즈">
						<p class=text-center>랜덤 퀴즈</p>
					</div>
				</div>
			</section>
			<div class="modal fade" id="quizModal" data-backdrop="static" data-keyboard="false">
				<div class="modal-dialog pair-dialog">
				    <div class="modal-content pair-content">
				      <div class="modal-header pair-header">
				        <button id="random-X" type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					    <!-- 설명이 들어갈 div -->
						<div class="gameInfo">
						<!-- GameTitle div -->
							<div class="pull-left">
								<p>제목 : &nbsp;&nbsp;</p>
								<b class="find-game-name">제발좀요</b>
							</div>
							<!-- Score div -->
							<div class="pull-left">
								<p>점수 : &nbsp;&nbsp;</p>
								<b class="find-game-score"></b>점
							</div>
							<!-- nowSituation div -->
							<div class="pull-left">
								<p>현재상황 : &nbsp;&nbsp;</p>
								<b class="present-game-number"></b>
								<b class="last-game-number"></b>
							</div>
							<!-- Life div -->
							<div class="pull-right">
								<p>목숨 : &nbsp;&nbsp;</p>
								<img id="gameLife1" alt="" src="/dist/images/heart.png">
								<img id="gameLife2" alt="" src="/dist/images/heart.png">
								<img id="gameLife3" alt="" src="/dist/images/heart.png">
							</div>
			
						</div>
							
							<!-- 시간이 들어갈 div -->
						<div class="time-bar">
							<div class="progress">
								<div
									class="progress-bar progress-bar-primary progress-bar-striped"
									role="progressbar" aria-valuenow="100" aria-valuemin="0"
									aria-valuemax="100" style="width: 100%">
									<span class="sr-only">40% Complete (success)</span>
								</div>
							</div>
						</div>
					</div>
						<div class="modal-body modal-size-controller">
						 
							<div class="quiz-header">다음의 보기에서 알맞은 정답을 선택하세요.</div>
							<!-- 문제 나오고 , 정답 체크 하는 곳 -->
							<div class="quiz-OX">
								<img class="correct-mark" src="">
								<!-- <img class="correct-mark" src="/upload/profile/correct-mark01.png">
								<p>정답입니다.</p> -->
								<div class="quiz-question" id="game-question"></div>
							</div>
							<!-- 정답 번호 1번. -->

							<div class="btn btn-default quiz-answer">
								<img class="check-mark" id="ansCheck00">
								<div class="select-answer" id="ans00"></div>
								<input type="hidden" value=0>
							</div>

							<!-- 정답 번호 2번. -->
							<div class="btn btn-default quiz-answer">
								<img class="check-mark" id="ansCheck01"
									src="/upload/profile/white-background01.png">
								<div class="select-answer" id="ans01"></div>
								<input type="hidden" value=1>
							</div>

							<!-- 정답 번호 3번. -->
							<div class="btn btn-default quiz-answer">
								<img class="check-mark" id="ansCheck02"
									src="/upload/profile/white-background01.png">
								<div class="select-answer" id="ans02"></div>
								<input type="hidden" value=2>
							</div>

							<!-- 정답 번호 4번. -->
							<div class="btn btn-default quiz-answer">
								<img class="check-mark" id="ansCheck03"
									src="/upload/profile/white-background01.png">
								<div class="select-answer" id="ans03"></div>
								<input type="hidden" value=3>
							</div>
						</div>
						<div class="modal-footer">
							<a data-toggle="modal" data-target="#myModal2" id="modalClick"></a>
							 <button type="button" class="btn btn-default" id="random-exit"
								data-dismiss="modal">나가기</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
			<!-- 랜덤퀴즈 Modal 안의 Modal -->
			<div class="modal fade" id="myModal2" aria-hidden="true"
				style="display: none; z-index: 1060;">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">×</button>
							<h4 class="modal-title">랜덤 퀴즈</h4>
						</div>
						<div class="container"></div>
						
						<div class="modal-body">
							<img class="result-image"
								src="/upload/profile/result-background.jpg">
							<div class="random-quiz-result-header">랜덤 퀴즈 게임 결과</div>
							<div class="random-quiz-result-content">
								<div class="random-quiz-result-highScore" id="random-quiz-highScore">
									최고점수 :</div>
								<div class="random-quiz-result-score" id="random-quiz-score">
									<p>얻은 점수 :</p>
								</div>
								<div class="blank-div">
								
								</div>
								<div class="result-rank">
									<div class="result-rank-header">랭  킹</div>
									<!-- 1등 -->
									<div class="result-rank-list">
										<div class="result-ranker">
											<img class="result-ranker-image1" src="/upload/profile/rank1-2.png">
										</div>
										<div class="result-rank-userImage">
											<img src="/upload/profile/usericon.png" class="rank-image-size" id="image-rank1">					
										</div>
										<div class="result-rank-nickName" id="nickname-rank1">
											닉네임 들어갈 곳입니다.
										</div>	
										<div class="result-rank-highScore" id="score-rank1">
											10000 점
										</div>
									</div>
									<!-- 2등 -->
									<div class="result-rank-list">
										<div class="result-ranker">
											<img class="result-ranker-image2" src="/upload/profile/rank2.png">
										</div>
										<div class="result-rank-userImage">
											<img src="/upload/profile/usericon.png" class="rank-image-size" id="image-rank2">												
										</div>
										<div class="result-rank-nickName" id="nickname-rank2">
											닉네임 들어갈 곳2.
										</div>	
										<div class="result-rank-highScore" id="score-rank2">
											9999 점
										</div>
									</div>
									
									<!-- 3등 -->
									<div class="result-rank-list">
										<div class="result-ranker">
											<img class="result-ranker-image2" src="/upload/profile/rank3.png" > 
										</div>
										<div class="result-rank-userImage">
											<img src="/upload/profile/usericon.png" class="rank-image-size" id="image-rank3">											
										</div>
										<div class="result-rank-nickName" id="nickname-rank3">
											닉네임 들어갈 곳3.
										</div>	
										<div class="result-rank-highScore" id="score-rank3">
											9888 점
										</div>
									</div>
									
									<!-- 4등 -->
									<div class="result-rank-list">
										<div class="result-ranker">
											<img class="result-ranker-image2" src="/upload/profile/rank4.png">
										</div>
										<div class="result-rank-userImage">
											<img src="/upload/profile/usericon.png" class="rank-image-size" id="image-rank4">									
										</div>
										<div class="result-rank-nickName" id="nickname-rank4">
											닉네임 들어갈 곳4.
										</div>	
										<div class="result-rank-highScore" id="score-rank4">
											8788 점
										</div>
									</div>
									
									<!-- 5등 -->
									<div class="result-rank-list">
										<div class="result-ranker">
											<img class="result-ranker-image2" src="/upload/profile/rank5.png">
										</div>
										<div class="result-rank-userImage">
											<img src="/upload/profile/usericon.png" class="rank-image-size" id="image-rank5">											
										</div>
										<div class="result-rank-nickName" id="nickname-rank5">
											닉네임 들어갈 곳5.
										</div>	
										<div class="result-rank-highScore" id="score-rank5">
											6732 점
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<a href="#" data-dismiss="modal" class="btn">나가기</a>
						</div>
					</div>
				</div>
			</div>
			<!-- RANDOM QUIZ MODAL IN MODAL END -->
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
<!-- 세윤 and 승현 합작 -->
<script type="text/javascript">
	var randomQuizList;
	var crtRandomNo = -1;
	var incorrectWord;
	var incorrectMean;
	var userScore = 0;
	var listNumber= 1;
	var sessionId = "${sessionScope.id}";
	var gamename = "RandomQuiz";
	var gameLife = 0;
	//랜덤퀴즈 클릭할때
	$("#randomQuiz").on("click", function() {
	
		console.log("${flashcardVo.wordbookNo}");
		console.log(sessionId);
		
		$(".find-game-name").text("RandomQuiz");
		$(".find-game-score").text(userScore);
		
		var wordbookNo = "${flashcardVo.wordbookNo}";

		$.ajax({
			url : "${pageContext.request.contextPath}/randomquiz", //url 
			type : "post",
			//		contentType : "application/json",
			data : {
				wordbookNo : wordbookNo
			},
			dataType : "json",
			success : function(data) {
				/*성공시 처리해야될 코드 작성*/
				timeController = false;
				console.log("성공 : " + data);
				
				randomQuizList = data;
				randomQuizList.length;
				randomTimeStart(0);
				//리스트 첫번째 번호
				$(".present-game-number").text("( 1 / ");
				//리스트 마지막 번호
				$(".last-game-number").text(randomQuizList.length + " )");
				//
				gameLifeInitialization();
				crtRandomNo = -1;
				randomQuizPrint();
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		}); // /ajax
	});

	//랜덤퀴즈> 보기클릭했을때
	$(".quiz-answer").on("click", function() {
		console.log("보기클릭");
		// 누른곳 체크 이미지 변경	
		var choiceNo = $(this).find("input").val();
		$("#ansCheck0" + choiceNo).css("visibility", "visible");
		$(this).find("img").attr("src", "/upload/profile/check-mark.png");

		//정답 판단및 다음진행
		setTimeout(function() {
			console.log("니어디감? 초이스넘버? : " + choiceNo);
			randomQuizPrint(choiceNo);
		}, 300);
	});
		
	//퀴즈 출력(현재번호 출력)
	function randomQuizPrint(choiceNo) {
		
		console.log("니어디감? 초이스넘버체크 : " + choiceNo);
		var delayTime;
		if (crtRandomNo == -1) {
			delayTime = 0;
		} else {
			delayTime = 500;
		}
		//1초지연
		setTimeout(function() {
			crtRandomNo++;
			console.log("randomQuizRender", randomQuizList[crtRandomNo]);
			$("#game-question").text(randomQuizList[crtRandomNo].question);
			//보기
			$("#ans00")
					.text("1. " + randomQuizList[crtRandomNo].answerArray[0]);
			$("#ans01")
					.text("2. " + randomQuizList[crtRandomNo].answerArray[1]);
			$("#ans02")
					.text("3. " + randomQuizList[crtRandomNo].answerArray[2]);
			$("#ans03")
					.text("4. " + randomQuizList[crtRandomNo].answerArray[3]);
		}, delayTime);
		
		console.log("번호확인 : "+ randomQuizList[crtRandomNo].ansNo);
		var answerNo = randomQuizList[crtRandomNo].ansNo;
		
		
		//정답판단
		//랜덤 퀴즈 정답일때
		if (answerNo == choiceNo) {
			
			console.log("진짜 정답 번호 체크 true : " + answerNo);
			console.log("누른 정답 번호 체크 true: " + choiceNo);
			// 정답체크후 정답시에
			$("#ansCheck0" + answerNo).css("visibility", "visible");
			$("#ansCheck0" + answerNo).attr("src",
					"/upload/profile/circle-mark01.png");
			//문제에 O, X 체크
			$(".correct-mark").attr("src", "/upload/profile/correct-mark01.png");
			userScore = userScore + 50;
			$(".find-game-score").text(userScore);
			
			//리스트 번호 올리기..
			listNumber = listNumber + 1;
			$(".present-game-number").text("( "+listNumber+" / ");
			
		//랜덤 퀴즈 틀렸을때
		} else {
			
			console.log("진짜 정답 번호 체크 false: " + answerNo);
			console.log("누른 정답 번호 체크 false: " + choiceNo);
			// 정답 아닐때에 
			$("#ansCheck0" + choiceNo).css("visibility", "visible");
			$("#ansCheck0" + choiceNo).attr("src",
					"/upload/profile/x-mark01.png");
			//문제에 O, X 체크
			$(".correct-mark").attr("src",
					"/upload/profile/incorrect-mark02.png");
			//정답인곳에 O 이미지 띄우기
			$("#ansCheck0" + answerNo).css("visibility", "visible");
			$("#ansCheck0" + answerNo).attr("src",
					"/upload/profile/circle-mark01.png");
			
			if (pairLife == 3) {
			//라이프 초과하여 게임이 끝남
				setTimeout(function() {
					gamename = "RandomQuiz";
					randomQuizGameEnd(gamename);
				}, 400);
			} else {
				userScore = userScore - 30;
				//유저점수 확인
				$(".find-game-score").text(userScore);
				
				//틀린단어, 뜻 넣기
				incorrectWord = (randomQuizList[crtRandomNo].question);
				console.log("틀린단어 확인 : " +incorrectWord);
				incorrectMean = (randomQuizList[crtRandomNo].answerArray[answerNo]);
				console.log("틀린 뜻 확인 : " +incorrectMean ); 
				randomGameWrong();
				
				//게임 라이프 체크
				//라이프 업데이트
				pairLife++;
				console.log("업데이트 했는지 페어라이프 : " +pairLife);
				$("#gameLife" + gameLife).attr("src", "/upload/profile/heart2.gif");
				
				//리스트 번호 올리기..
				listNumber = listNumber + 1;
				$(".present-game-number").text("( "+listNumber+" / ");
			}
		}

		var compareLength = randomQuizList.length - 1;
		console.log("현재문제 번호 : " + crtRandomNo + " 리스트 랭쓰 : " + compareLength);
		
		//마지막문제면
		if (crtRandomNo >= compareLength) {
			//세션 아이디 필요? sessionId 로 여기서 사용가능, 게임네임은 gameName 으로 사용가능
			//결과페이지 출력
			$("#ansCheck00").css("visibility", "hidden");
			$("#ansCheck01").css("visibility", "hidden");
			$("#ansCheck02").css("visibility", "hidden");
			$("#ansCheck03").css("visibility", "hidden");
			
			$(".correct-mark").attr("src", "");
			console.log("다끝났습니다.");
			gamename = "RandomQuiz";
			console.log("확인용 확인 : gamename = " + gamename);
			var resultSize = crtRandomNo;
			randomQuizGameEnd(gamename);
		}
		//마지막이 아니면
		else {
			setTimeout(function() {
				//다음문제 출력
				//이전 이미지, 값 초기화
				$("#ansCheck00").css("visibility", "hidden");
				$("#ansCheck01").css("visibility", "hidden");
				$("#ansCheck02").css("visibility", "hidden");
				$("#ansCheck03").css("visibility", "hidden");
				$(".correct-mark").attr("src", "");
			}, 500);
		}

		//

	};
	function theendlist(gamename){
		var wordbookNo = "${flashcardVo.wordbookNo}";
		var sessionId = "${sessionScope.id}";
		var AllgameName = gamename;
		
		console.log("게임왔는지 확인 : " + AllgameName);
			$.ajax({
				url : "${pageContext.request.contextPath}/gamerankingpage", //url 
				type : "post",
				//		contentType : "application/json",
				data : {
					wordbookNo : wordbookNo,
					gameName : AllgameName,
					master : sessionId
				},
				dataType : "json",
				success : function(data) {
						console.log("가져옴? : "+ data);
					/*성공시 처리해야될 코드 작성*/
						ranker = data;
						var rankerTop = new Array();
						rankerTop =	ranker[1];
						//최고점수
						console.log(userScore+"유저스고어");
						$("#random-quiz-score").text("획득 점수 : "+ userScore + " 점");
						var topUserScore;
						if(ranker[0] == null){
							topUserScore = 0;
						}else{
							topUserScore = ranker[0].userScore;
						}
						
						$("#random-quiz-highScore").text("최고 점수 : "+ topUserScore + " 점");
						
						for(var i=0;i<rankerTop.length;i++){
							
							$("#image-rank"+(i+1)).attr("src", "/upload/profile/"+rankerTop[i].userImage);
							$("#nickname-rank"+(i+1)).text(rankerTop[i].nickName);
							$("#score-rank"+(i+1)).text(rankerTop[i].gameScore+" 점");
							console.log("랭커 이미지"+rankerTop[i].userImage);
							console.log("랭커 닉네임"+rankerTop[i].nickName);
							console.log("랭커 스코어"+rankerTop[i].gameScore);
						};
						
						$("#modalClick").trigger("click");
					/* 	$("#random-quiz-highScore").text("총 문제 수 : " +  + " 개");
						$("#random-quiz-score").text("획득 점수 : " + userScore + " 점"); */
						
				},
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}
			}); // /ajax	
	}
	
	$("#random-X").on("click",function(){
		timeController = true;
	});
	
	//randomquiz 게임 끝나고 저장
	function randomQuizGameEnd(gamename) {
		var sessionId = "${sessionScope.id}";
		if (sessionId != "" ) {
			//url 바꾸어야합니다.
			var wordbookNo = "${flashcardVo.wordbookNo}";
			$.ajax({
						url : "${pageContext.request.contextPath}/${URLId}/scoreupdate",
						type : "post",
						//		traditional : true,
						data : {
							wordbookNo : wordbookNo,
							gameName : gamename,
							gameScore : userScore,
							master : sessionId
						},
						dataType : "html",
						success : function() {
							/*성공시 처리해야될 코드 작성*/
							console.log("랜덤퀴즈게임 인서트");
							$('#quizModal').modal('hide');
							theendlist(gamename);
						},
						error : function(XHR, status, error) {
							console.error(status + " : " + error);
						}
					});
		} //if문
		else{
			$('#quizModal').modal('hide');
			theendlist(gamename);
		}
	}
	
	//랜덤게임 틀린단어
	function randomGameWrong() {
		var sessionId = "${sessionScope.id}"
			console.log("틀린단어 확인2 : " +incorrectWord );
			console.log("틀린단어 확인2 : " +incorrectMean );
			$.ajax({
				url : "${pageContext.request.contextPath}/${URLId}/wrongword",
				type : "post",
				//		traditional : true,
				data : {
					wordName : incorrectWord,
					meanName : incorrectMean,
					master : sessionId
				},
				dataType : "html",
				success : function() {
					/*성공시 처리해야될 코드 작성*/
					console.log("틀린단어 ajax");
				},
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}
			});
		};//if
	
		//랜덤게임 목숨관리 메소드
	function gameLifeInitialization() {
		gameLife = 0;
		for (var i = 1; i < 4; i++) {
			$("#gameLife" + i).attr("src", "/dist/images/heart.png");
		}
	}
	function gameLifeUpdate() {
		gameLife++;
		console.log("업데이트 했는지 게임라이프 : " +pairLife);
		$("#gameLife" + gameLife).attr("src", "/dist/images/heart2.gif");
	}
		
	
	
	//현재 에이잭스는 활성화 상태 by세윤
	$("#flashQuiz").on("click", function(){
		
		var wordbookNo = "${flashcardVo.wordbookNo}";
		
		$.ajax({
			url : "${pageContext.request.contextPath}/flashcardgame",   //url 
			type : "post",
//			contentType : "application/json",
			data : {wordbookNo: wordbookNo},
			dataType : "json",
			success : function(flashGameSource){
			/*성공시 처리해야될 코드 작성*/
				flashInitialization();
				for(var i=0;i<flashGameSource.length;i++){
					flashGameList.push(flashGameSource[i]);
				}
				timeController = false;
				flashTimeStart(0);
				flashStart();
				flashSetting();
				
			},
			error : function(XHR, status, error) {
				console.error(status+" : "+error);
			}
		});
		
		
		
	});
		
	$("#pairSetGame").on("click", function(){
		
		var wordbookNo = "${flashcardVo.wordbookNo}";
		
		$.ajax({
			url : "${pageContext.request.contextPath}/pairsetgame",   //url 
			type : "post",
//			contentType : "application/json",
			data : {wordbookNo: wordbookNo},
			dataType : "json",
			success : function(pairGameSource){
				/*성공시 처리해야될 코드 작성*/ //리스트 반환할것
				pairFinishList = pairGameSource[0];
				pairRandomList = pairGameSource[1];
				pairNow=0;
				pairScore = 0;
				pairHiddenSetting();
				pairSetting();
				pairScoreUpdate();
				pairNameUpdate();
				pairLifeInitialization();
				timeController = false;
				pairTimeStart(0);
				
			},
			error : function(XHR, status, error) {
				console.error(status+" : "+error);
			}
		});
	});
</script>


<!-- 경환 스크립트 -->
<script type="text/javascript">
	var pairFinishList = new Array(); //제대로 정렬된 배열
	var pairRandomList = new Array(); //랜덤으로 배치된 배열
	var pairNow = 0; //현재 진행 단계를 저장하는 변수 객체의갯수
	var pairScore = 0; //점수를 표현하는 변수
	var pairGameName = "Pair Set Game"; //게임 제목
	var pairInsertNum = 1; //몇번 사용자가 눌렀는지 확인하는 변수
	var pairAnswer = false; //정답인지 아닌지 확인하는 변수
	var pairPressId1 = ""; //사용자가누른것이 무엇인지 알기위한 변수
	var pairPressId2 = ""; //사용자가누른것이 무엇인지 알기위한 변수
	var pairWordValue = ""; //사용자가 누른 값
	var pairMeanValue = ""; //사용자가 누른 값
	var pairFeverScore = [ 1, 2, 3, 4, 5 ]; //점수를 더 올리기 위한 변수
	var pairFeverGo = 0; //몇번 맞추었는지 알아보는 변수
	var pairNowSituation = 0; //현재 진행상황 단어의 1~4 
	var pairLife = 0; //이 게임의 목숨
	var roopNo = 2; //게임을 끝내기위한 변수

	$(".click").on(
			"click",
			function() {
				//한번 눌렀을때
				if (pairInsertNum == 1) {
					pairPressValue($(this).find("div").attr("id"), $(this)
							.find("span").text());
					$( 'h1' ).find( 'span' );

				}
				//두번째 눌렀을때		정답을 체크해야함 여기서
				else {
					pairPressValue($(this).find("div").attr("id"), $(this)
							.find("span").text());
					pairAnswerConfirm();
					//정답일 경우
					if (pairAnswer) {
						console.log("정답"); 
						//점수
						pairRightScore();
						pairScoreUpdate();
						//점수
						//박스 숨기기
						setTimeout(function() {
							clickEventNone();
						}, 400);
						pairHiddenBox();
						//박스 숨기기
						pairNowSituation++;

					}
					//오답일경우
					else {
						console.log("오답");
						//점수
						pairWrongScore();
						pairScoreUpdate();
						//점수
						//틀린단어업데이트
						pairGameWrong();
						//틀린단어업데이트
						//라이프 초과하여 게임이 끝남end
						if (pairLife == 3) {
							gamename = pairGameName;
							console.log(gamename);
							userScore = pairScore;
							pairGameEnd();
						}
						//라이프 초과하여 게임이 끝남
						//목숨
						pairLifeUpdate()
						//목숨
						
						setTimeout(function() {
							clickEventNone();
						}, 400);
					}

					if (pairNowSituation == 4) {
						pairInitialization();
					}
					wordInitialization();
					//끝내기end
					if (pairNow == pairFinishList.length
							&& roopNo == pairNowSituation + 1) {
						pairGameEnd();
					}
					;
				}

			})

	//초기화 시키는 함수
	function wordInitialization() {
		pairAnswer = false;
		pairWordValue = "";
		pairMeanValue = "";
		pairInsertNum = 1;
		pairPressId1 = "";
		pairPressId2 = "";
	}
	function pairInitialization() {
		pairSetting();
		pairNowSituation = 0;
	}
	//정답시 숨기는 함수
	function pairHiddenBox() {
		$("#" + pairPressId1).hide();
		$("#" + pairPressId2).hide();
	}
	//입력받는 값을 저장하는 메소드
	function pairPressValue(pairPressId, value) {
		clickEvent(pairPressId);
		if (pairInsertNum == 1) {
			pairPressId1 = pairPressId;
		} else {
			pairPressId2 = pairPressId;
		}
		//word을 눌렀을때
		if (pairPressId.startsWith('w')) {
			pairWordValue = value;
		} else { //mean을 눌렀을때
			pairMeanValue = value;
		}
		pairInsertNum++;
	}
	//정답 맞추는 메소드
	function pairAnswerConfirm() {
		if (pairFinishList[pairNow - 1].word1 == pairWordValue) {
			if (pairFinishList[pairNow - 1].mean1 == pairMeanValue) {
				pairAnswer = true;
			}
		} else if (pairFinishList[pairNow - 1].word2 == pairWordValue) {
			if (pairFinishList[pairNow - 1].mean2 == pairMeanValue) {
				pairAnswer = true;
			}
		} else if (pairFinishList[pairNow - 1].word3 == pairWordValue) {
			if (pairFinishList[pairNow - 1].mean3 == pairMeanValue) {
				pairAnswer = true;
			}
		} else if (pairFinishList[pairNow - 1].word4 == pairWordValue) {
			if (pairFinishList[pairNow - 1].mean4 == pairMeanValue) {
				pairAnswer = true;
			}
		}
	}

	//목숨 관리를 위한 메소드
	function pairLifeUpdate() {
		pairLife++;
		console.log("업데이트 했는지 페어라이프 : " +pairLife);
		$("#pairLife" + pairLife).attr("src", "/dist/images/heart2.gif");
	}
	function pairLifeInitialization() {
		pairLife = 0;
		for (var i = 1; i < 4; i++) {
			$("#pairLife" + i).attr("src", "/dist/images/heart.png");
		}
	}
	
	
	//게임제목을 위한 메소드
	function pairNameUpdate() {
		$("#gameName").find("b").text(pairGameName);
		$("#pairNowSituation").find("b:last")
				.text(pairFinishList.length + " )");
	}
	//점수를 위한 메소드
	function pairRightScore() {
		pairScore = pairScore + 100 * pairFeverScore[pairFeverGo];
		if (pairFeverGo < 4) {
			pairFeverGo = pairFeverGo + 1;
		}
		;
	}
	function pairWrongScore() {
		if (pairScore < 44) {
			pairScore = 0;
		} else {
			pairScore = pairScore - 44;
		}
		pairFeverGo = 0;
	}
	function pairScoreUpdate() {
		$("#gameScore").find("b").text(pairScore);
	}
	//초기 세팅 함수
	function pairSetting() {
		pairSituationUpdate();

		//마지막 이라는것
		if (pairNow == pairFinishList.length) {
			if (pairFinishList[pairNow - 1].word4 != null
					&& pairFinishList[pairNow - 1].mean4 != null) {
				roopNo = 5;
			} else if (pairFinishList[pairNow - 1].word3 != null
					&& pairFinishList[pairNow - 1].mean3 != null) {
				roopNo = 4;
			} else if (pairFinishList[pairNow - 1].word2 != null
					&& pairFinishList[pairNow - 1].mean2 != null) {
				roopNo = 3;
			} else{
	            roopNo = 2;
	        }
		} else {
			roopNo = 5;
		}
		console.log("루프" + roopNo);
		console.log("페어나우" + pairNow);
		console.log("렝스" + pairFinishList.length);
		for (var i = 1; i < roopNo; i++) {
			if (i == 1) {
				$("#word" + i).find("span").text(
						pairRandomList[pairNow - 1].word1);
				$("#mean" + i).find("span").text(
						pairRandomList[pairNow - 1].mean1);
				$("#word" + i).show();
				$("#mean" + i).show();
			} else if (i == 2) {
				$("#word" + i).find("span").text(
						pairRandomList[pairNow - 1].word2);
				$("#mean" + i).find("span").text(
						pairRandomList[pairNow - 1].mean2);
				$("#word" + i).show();
				$("#mean" + i).show();
			} else if (i == 3) {
				$("#word" + i).find("span").text(
						pairRandomList[pairNow - 1].word3);
				$("#mean" + i).find("span").text(
						pairRandomList[pairNow - 1].mean3);
				$("#word" + i).show();
				$("#mean" + i).show();
			} else if (i == 4) {
				console.log(pairRandomList[pairNow - 1].word4);
				console.log(pairRandomList[pairNow - 1].mean4);
				$("#word" + i).find("span").text(
						pairRandomList[pairNow - 1].word4);
				$("#mean" + i).find("span").text(
						pairRandomList[pairNow - 1].mean4);
				$("#word" + i).show();
				$("#mean" + i).show();
			}
		}
	}
	function pairHiddenSetting() {
		for (var i = 1; i < 5; i++) {
			$("#word" + i).hide();
			$("#mean" + i).hide();
		}
	}
	function pairSituationUpdate() {
		pairNow++;
		$("#pairNowSituation").find("b:first").text("( " + pairNow + " / ");
	}
	//나가기버튼
	$("#pairExit").on("click", function() {
		pairGameEnd();
		
	});
	$("#pair-X").on("click",function(){
		timeController = true;
	});
	//게임 끝나 저장하는 함수
	function pairGameEnd() {
		timeController = true;
		console.log("여기는 단어 점수 업데이트창");
		var sessionId = "${sessionScope.id}";
		setTimeout(function() {
			clickEventNone();
		}, 400);
		if (sessionId != "" && pairScore != 0) {

			//url 바꾸어야합니다.
			var wordbookNo = "${flashcardVo.wordbookNo}";

			$.ajax({
						url : "${pageContext.request.contextPath}/${URLId}/scoreupdate",
						type : "post",
						//		traditional : true,
						data : {
							wordbookNo : wordbookNo,
							gameName : pairGameName,
							gameScore : pairScore,
							master : sessionId
						},
						dataType : "html",
						success : function() {
							/*성공시 처리해야될 코드 작성*/
							console.log("성공q");
							$("#pairSetGameModal").modal("hide");
							theendlist(pairGameName);
						},
						error : function(XHR, status, error) {
							console.error(status + " : " + error);
						}
					});
		} //if문
		else{
			theendlist(pairGameName);
			$("#pairSetGameModal").modal("hide");	
		}
	}
	function pairGameWrong() {
		var sessionId = "${sessionScope.id}"
		if (pairWordValue != "" && sessionId != "") {
			answerExtract();
			$.ajax({
				url : "${pageContext.request.contextPath}/${URLId}/wrongword",
				type : "post",
				//		traditional : true,
				data : {
					wordName : pairWordValue,
					meanName : pairMeanValue,
					master : sessionId
				},
				dataType : "html",
				success : function() {
					/*성공시 처리해야될 코드 작성*/
					console.log("틀린단어 ajax");
				},
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}
			});
		}
		;//if
	}
	function answerExtract() {
		if (pairFinishList[pairNow - 1].word1 == pairWordValue) {
			pairMeanValue = pairFinishList[pairNow - 1].mean1
		} else if (pairFinishList[pairNow - 1].word2 == pairWordValue) {
			pairMeanValue = pairFinishList[pairNow - 1].mean2
		} else if (pairFinishList[pairNow - 1].word3 == pairWordValue) {
			pairMeanValue = pairFinishList[pairNow - 1].mean3
		} else if (pairFinishList[pairNow - 1].word4 == pairWordValue) {
			pairMeanValue = pairFinishList[pairNow - 1].mean4
		}
	}
	function clickEvent(pairPressId) {
		$("#" + pairPressId).find("span").addClass("choiceblock");
	}
	function clickEventNone() {
		for (var i = 0; i < 5; i++) {
			
			$("#word" + i).find("span").removeClass("choiceblock");
			$("#mean" + i).find("span").removeClass("choiceblock");
		}
	}
	//나가기 버튼 클릭시
	
</script>

<!-- 세윤 스크립트 -->
<script type="text/javascript">
	var flashGameList = new Array(); //현재 랜덤으로 섞은 리스트가 들어가있음
	var flashListNowNum = 0; //플래시게임의 현재 인덱스를 나타내는 변수	///정답체크는 -1해서 사용
	var flashGameName = "Flash Quiz"; //이 게임 이름
	var flashGameScore = 0; //현재 점수
	var flashLife = 0; //라이프 1증가마다 하나씩 목숨깍인다
	var nowSituation = 0; //현재 진행단계를 표현하기위한 변수
	var userScore = 0;
	var gamename ="";
	
	var timeController = false; // 타임 조정함수

	//정답 체크하는 문장
	$('#flashSubmit')
			.keydown(
					function(e) {
						if (e.keyCode == 13) {
							//alert('you pressed enter ^_^');
							//엔터키를 눌러서 값을 빼오는것
							var userMean = $("#flashSubmit").val();
							var answerMean;
							var flashWord = $("#flashDenote").find("p").text();
							var flashMean = flashGameList[flashListNowNum - 1].meanName;
							if (userMean != "") {
								userMean = userMean.toLowerCase();
							}
							if (flashGameList[flashListNowNum - 1].meanName != null) {
								answerMean = flashGameList[flashListNowNum - 1].meanName
										.toLowerCase();
							} else {
								answerMean = "";
							}
							//널처리
							//정답
							if (answerMean == userMean) {
								console.log("정답");
								//스코어 부분	
								flashGameScore = flashGameScore + 100;
								flashScoreUpdate();
								//끝까지 했을경우 끝내기
								if (flashListNowNum == flashGameList.length) {
									flashEnd();
								} else {
									situationUpdate();
									clearText();
									flashStart();
								}
							} else {//오답
								console.log("오답");
								//스코어 부분
								if (flashGameScore < 44) {
									flashGameScore = 0;
								} else {
									flashGameScore = flashGameScore - 44;
								}
								flashWrong(flashWord, flashMean);
								flashScoreUpdate();
								//라이프 다 썻을때
								if (flashLife == 3) {
									flashEnd();
								}
								//끝까지 했을경우 끝내기
								if (flashListNowNum == flashGameList.length) {
									gamename = flashGameName;
									console.log(gamename);
									userScore = flashGameScore;
									flashEnd();
								} else {
									situationUpdate();
									flashLifeUpdate();
									clearText();
									flashStart();
								}
							}//오답
						}//정답체크 부분

					})
	
	function flashInitialization(){
		for(var i=1;i<4;i++){
			$("#flashLife" +i).attr("src", "/dist/images/heart.png");			
		};
		flashGameList = new Array();
		nowSituation = 0;
		userScore = 0;
		flashLife = 0;
		flashGameScore = 0;
		flashListNowNum = 0;
	}
					
	//안의 내용을 계속해서 바꿔주는 함수
	function flashStart() {
		$("#flashDenote").find("p").text(
				flashGameList[flashListNowNum].wordName);
		flashListNowNum++; //1증가 시킨다
	}
	//게임 라이프 업데이트
	function flashLifeUpdate() {
		flashLife++;
		$("#flashLife" + flashLife).attr("src", "/dist/images/heart2.gif");
	}
	//게임 점수를 업데이트하는 함수
	function flashScoreUpdate() {
		$("#flashScore").find("b").text(flashGameScore);
	}
	//현재상황을 업데이트 해주는 함수
	function situationUpdate() {
		nowSituation++;
		$("#flashNowSituation").find("b:first").text(
				"( " + nowSituation + " / ");
	}
	//제목하고 스코어를 초기세팅 함수
	function flashSetting() {
		$("#flashName").find("b").text(flashGameName);
		$("#flashScore").find("b").text(flashGameScore);
		situationUpdate();
		$("#flashNowSituation").find("b:last")
				.text(flashGameList.length + " )");
	}
	function clearText() {
		$("#flashSubmit").val("");
	}
	//게임이 끝났을때 실행하는 함수
	function flashEnd() {
		timeController=true;
		var sessionId = "${sessionScope.id}";
		var wordbookNo = "${flashcardVo.wordbookNo}";
		
		console.log(flashGameScore);
		console.log(wordbookNo);
		console.log(flashGameName);
		console.log(sessionId);
		//모달 숨기고 새로고침
		if (sessionId != "") {
			$
					.ajax({
						url : "${pageContext.request.contextPath}/${URLId}/flashscoreupdate",
						type : "post",
						//		traditional : true,
						data : {
							wordbookNo : wordbookNo,
							gameName : flashGameName,
							gameScore : flashGameScore,
							master : sessionId
						},
						dataType : "html",
						success : function() {
							/*성공시 처리해야될 코드 작성*/
							console.log("플래시카드 성공");
							userScore = flashGameScore;
							gamename = flashGameName;
							$("#flashquizModal").modal("hide");
							theendlist(gamename);
						},
						error : function(XHR, status, error) {
							console.error(status + " : " + error);
						}
					});
		} //if문
		else{
			$("#flashquizModal").modal("hide");
			theendlist(gamename);
		}
	}
	function flashWrong(flashWord, flashMean) {
		//틀렸을때 단어 업데이트 	//미완성
		var sessionId = "${sessionScope.id}";

		if (flashWord != "" && sessionId != "") {
			$
					.ajax({
						url : "${pageContext.request.contextPath}/${URLId}/flashwrongword",
						type : "post",
						//		traditional : true,
						data : {
							wordName : flashWord,
							meanName : flashMean,
							master : sessionId
						},
						dataType : "html",
						success : function() {
							/*성공시 처리해야될 코드 작성*/
						},
						error : function(XHR, status, error) {
							console.error(status + " : " + error);
						}
					});
		}
		;//if
	}
	$("#flashExit").on("click", function() {
		timeController = true;
		flashEnd();
	});
	$("#flash-X").on("click",function(){
		timeController = true;
	});
</script>


<!-- 공통 스크립트 -->
<script type="text/javascript">
	function refreshMemList() {
		location.reload();
	}
	function pairTimeStart(counter) {
		
		if(timeController){
			counter = 102;
		};
		
		if (counter < 101) {

			setTimeout(function() {

				counter++;
				
				$(".progress-bar").css("width",counter+"%");

				pairTimeStart(counter);

			}, 600);

		}else if(counter == 102){
			console.log("x로 인한종료");
		}else{
			//끝나는 문장
			pairGameEnd();
		}
	}
	
	function randomTimeStart(counter) {
		
		if(timeController){
			counter = 102;
		};

		if (counter < 101) {

			setTimeout(function() {

				counter++;
				
				$(".progress-bar").css("width",counter+"%");

				randomTimeStart(counter);

			}, 600);

		}else if(counter == 102){
			console.log("x로 인한종료");
		}else{			
			//끝나는 문장
			gamename = 'RandomQuiz';
			randomQuizGameEnd(gamename);
		}
	}
	
	function flashTimeStart(counter) {
		if(timeController){
			counter = 102;
		};
		if (counter < 101) {

			setTimeout(function() {

				counter++;
				
				$(".progress-bar").css("width",counter+"%");
				
				flashTimeStart(counter);
			}, 600);

		}else if(counter==102){
			console.log("x로 인한종료");
		}else{
			//끝나는 문장
			gamename = flashGameName;
			userScore = flashGameScore;
			flashEnd();			
		}
	}
	
</script>
</html>