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
<!-- 경환 css -->

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
}

.clearBox img {
	/* 			position: absolute;
			width: 210px;
			height: 105px; */
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
}

.pairSetGameWordBox {
	width: 100%;
	height: 100%;
	float: left;
	border: 1px solid;
	overflow: hidden;
}

.pairSetGameMeanBox {
	width: 100%;
	height: 100%;
	float: left;
	border: 1px solid;
	overflow: hidden;
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
</style>
<style>
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);

@import url(//fonts.googleapis.com/earlyaccess/hanna.css);

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
	height: 300px;
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
	padding-top: 90px;
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
	max-width: 230px;
	position: absolute;
	margin-left: -115px;
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
					<!-- 세윤 게임 body -->
					<c:import url="/WEB-INF/views/_view/flashcardgame.jsp"></c:import>

					<div class="col-xs-4 col-md-4 text-center" id="flashQuiz">
						<img class="flashcard-image" data-toggle="modal"
							data-target="#flashquizModal"
							src="${pageContext.request.contextPath}/dist/images/flashcards1.jpg"
							alt="플래시 퀴즈">
						<p class=text-center>플래시 퀴즈</p>
					</div>

					<!-- 경환 body -->

					<c:import url="/WEB-INF/views/_view/pairsetgame.jsp"></c:import>

					<div class="col-xs-4 col-md-4" id="pairSetGame">
						<a href="#"><img class="flashcard-image" data-toggle="modal"
							data-target="#pairSetGameModal" src="dist/images/wordmatch.png"
							alt="짝 맞추기"> </a> >>>>>>> stash
						<p class=text-center>짝 맞추기</p>
					</div>


					<div class="col-xs-4 col-md-4" id="randomQuiz">
						<img class="flashcard-image" data-toggle="modal"
							data-target="#quizModal"
							src="${pageContext.request.contextPath}/dist/images/flashcards1.jpg"
							alt="랜덤 퀴즈">
						<p class=text-center>랜덤 퀴즈</p>
					</div>
				</div>
			</section>
			<div class="modal fade" id="quizModal">
				<div class="modal-dialog lee-dialog" style="width: 80%">
					<div class="modal-content lee-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title">사지선다 퀴즈</h4>
						</div>
						<div class="modal-body">
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
								<input type="hidden" value=0 class="ansValue">
							</div>

							<!-- 정답 번호 2번. -->
							<div class="btn btn-default quiz-answer">
								<img class="check-mark" id="ansCheck01"
									src="/upload/profile/white-background01.png">
								<div class="select-answer" id="ans01"></div>
								<input type="hidden" value=1 class="ansValue">
							</div>

							<!-- 정답 번호 3번. -->
							<div class="btn btn-default quiz-answer">
								<img class="check-mark" id="ansCheck02"
									src="/upload/profile/white-background01.png">
								<div class="select-answer" id="ans02"></div>
								<input type="hidden" value=2 class="ansValue">
							</div>

							<!-- 정답 번호 4번. -->
							<div class="btn btn-default quiz-answer">
								<img class="check-mark" id="ansCheck03"
									src="/upload/profile/white-background01.png">
								<div class="select-answer" id="ans03"></div>
								<input type="hidden" value=3 class="ansValue">
							</div>
						</div>
						<div class="modal-footer">
							<!-- <button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary">Save
								changes</button> -->
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
			<div class="modal fade" id="flashquizModal">
				<div class="modal-dialog" style="width: 80%">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title">플래시 퀴즈</h4>
						</div>
						<div class="modal-body">
							<c:import url="/WEB-INF/views/_view/flashcardgame.jsp" />
						</div>
						<div class="modal-footer">
							<!-- <button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary">Save
								changes</button> -->
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
<!-- 세윤 and 승현 합작 -->
<script type="text/javascript">
	$("#randomQuiz").on("click", function() {

		console.log("${flashcardVo.wordbookNo}");

		var wordbookNo = "${flashcardVo.wordbookNo}";

		$.ajax({
			url : "${pageContext.request.contextPath}/randomquiz", //url 
			type : "post",
			//		contentType : "application/json",
			data : {
				wordbookNo : wordbookNo
			},

			dataType : "json",
			success : function(quizList) {
				/*성공시 처리해야될 코드 작성*/
				console.log(quizList);
				$("#ans01").text("살려는주십시오.")

			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	})
	//현재 에이잭스는 활성화 상태 by세윤
	$("#flashQuiz").on("click", function() {

		var wordbookNo = "${flashcardVo.wordbookNo}";

		$.ajax({
			url : "${pageContext.request.contextPath}/flashcardgame", //url 
			type : "post",
			//			contentType : "application/json",
			data : {
				wordbookNo : wordbookNo
			},
			dataType : "json",
			success : function(flashGameSource) {
				/*성공시 처리해야될 코드 작성*/
				for (var i = 0; i < flashGameSource.length; i++) {
					flashGameList.push(flashGameSource[i]);
				}
				flashStart();
				flashSetting();
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});

	$("#pairSetGame").on("click", function() {

		var wordbookNo = "${flashcardVo.wordbookNo}";

		$.ajax({
			url : "${pageContext.request.contextPath}/pairsetgame", //url 
			type : "post",
			//		contentType : "application/json",
			data : {
				wordbookNo : wordbookNo
			},
			dataType : "json",
			success : function(pairGameSource) {
				/*성공시 처리해야될 코드 작성*///리스트 반환할것
				pairFinishList = pairGameSource[0];
				pairRandomList = pairGameSource[1];
				pairNow = 0;
				pairScore = 0;
				pairHiddenSetting();
				pairSetting();
				pairScoreUpdate();
				pairNameUpdate();
				pairLifeInitialization();
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
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
	var pairGameName = "Pair Set Game" //게임 제목
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
							alert("목숨을 다 사용하여 게임이 끝남");
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
						alert("게임이 끝났음");
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
	$("#pairExit").on("click", function() {
		pairGameEnd();
	});
	//게임 끝나 저장하는 함수
	function pairGameEnd() {
		var sessionId = "${sessionScope.id}";
		setTimeout(function() {
			clickEventNone();
		}, 400);
		if (sessionId != "" && pairScore != 0) {
			//url 바꾸어야합니다.
			var wordbookNo = "${flashcardVo.wordbookNo}";
			$
					.ajax({
						url : "${pageContext.request.contextPath}/${URLId}/scoreupdate",
						type : "post",
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
						},
						error : function(XHR, status, error) {
							console.error(status + " : " + error);
						}
					});
		} //if문

		$("#pairSetGameModal").modal("hide");

	}

	function pairGameWrong() {
		var sessionId = "${sessionScope.id}"
		if (pairWordValue != "" && sessionId != "") {
			answerExtract();
			$.ajax({
				url : "${pageContext.request.contextPath}/${URLId}/wrongword",
				type : "post",
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
</script>

<!-- 세윤 스크립트 -->
<script type="text/javascript">
	var flashGameList = new Array(); //현재 랜덤으로 섞은 리스트가 들어가있음
	var flashListNowNum = 0; //플래시게임의 현재 인덱스를 나타내는 변수	///정답체크는 -1해서 사용
	var flashGameName = "Flash Quiz"; //이 게임 이름
	var flashGameScore = 0; //현재 점수
	var flashLife = 0; //라이프 1증가마다 하나씩 목숨깍인다
	var nowSituation = 0; //현재 진행단계를 표현하기위한 변수

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
		//게임점수 업데이트			//미완성
		var sessionId = "${sessionScope.id}";
		var wordbookNo = "${flashcardVo.wordbookNo}";
		//모달 숨기고 새로고침
		if (sessionId != "" && nowSituation == 1) {
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
						},
						error : function(XHR, status, error) {
							console.error(status + " : " + error);
						}
					});
		} //if문

		$("#flashQuiz").modal("hide");
		refreshMemList();
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
		gameEnd();
	});
</script>


<!-- 공통 스크립트 -->
<script type="text/javascript">
	function refreshMemList() {
		location.reload();
	}
</script>
</html>