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
<!-- 경환 css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/dist/css/pairsetgame.css">

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
.quiz-answer img{
	visibility: hidden;
}
.lee-dialog{
	width: 1100px;
    height: 820px;
}
.lee-content{
	width: 100%;
    height: 100%;
}
.
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

						<a href="#"><img class="flashcard-image" data-toggle="modal"
							data-target="#pairSetGame" src="dist/images/wordmatch.png"
							alt="짝 맞추기"> </a>
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
								<img class="check-mark" id="ansCheck01" src="/upload/profile/white-background01.png">
								<div class="select-answer" id="ans01"></div>
								<input type="hidden" value=1 class="ansValue">
							</div>

							<!-- 정답 번호 3번. -->
							<div class="btn btn-default quiz-answer">
								<img class="check-mark" id="ansCheck02" src="/upload/profile/white-background01.png">
								<div class="select-answer" id="ans02"></div>
								<input type="hidden" value=2 class="ansValue">
							</div>

							<!-- 정답 번호 4번. -->
							<div class="btn btn-default quiz-answer">
								<img class="check-mark" id="ansCheck03" src="/upload/profile/white-background01.png">
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
			success : function(randomQuizList) {
				
				/*성공시 처리해야될 코드 작성*/
				console.log("성공 : "+ randomQuizList);
				
				for (var i in randomQuizList) {
					//정답
					$("#game-question").text(randomQuizList[i].question);
					//보기
					$("#ans00").text("1. " + randomQuizList[i].answerArray[0]);
					$("#ans01").text("2. " + randomQuizList[i].answerArray[1]);
					$("#ans02").text("3. " + randomQuizList[i].answerArray[2]);
					$("#ans03").text("4. " + randomQuizList[i].answerArray[3]);
				
				//var Choice01 = $("#ans01").text();
				//var ChoiceAnswer01 = Choice01.substring(3);
				
				var ansNo = randomQuizList[i].ansNo;
				console.log("가져온 정답번호 : "+ ansNo);
				
				$(".quiz-answer").on("click",function(){
				 	// 정답체크				
					var str = $(this).find("input").val();
					 // 누른곳 체크 이미지 변경	
					 	$("#ansCheck0"+str).css("visibility","visible");
						$(this).find("img").attr("src","/upload/profile/check-mark.png");

					//체크 1초후에 정답 확인할것임
					setTimeout(function() {
						// 정답체크후 정답시에
						if (str == ansNo) {
							$("#ansCheck0"+ansNo).css("visibility","visible");
							console.log("체크한답 : "+ str +  " , 실제 정답 : " + ansNo );
							$("#ansCheck0"+ansNo).attr("src","/upload/profile/circle-mark01.png");
	  					    $(".correct-mark").attr("src", "/upload/profile/correct-mark01.png");
	  					    		
						} else {
							// 정답 아닐때에 
							$("#ansCheck0"+str).css("visibility","visible");
							$("#ansCheck0"+str).attr("src","/upload/profile/x-mark01.png");
							$(".correct-mark").attr("src", "/upload/profile/incorrect-mark02.png");
							//정답인곳에 O 이미지 띄우기
							$("#ansCheck0"+ansNo).css("visibility","visible");
							$("#ansCheck0"+ansNo).attr("src","/upload/profile/circle-mark01.png");
						
						}
						  console.log('1초뒤에 실행함');
					}, 1000);	
				});
				};
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});
</script>



<script type="text/javascript">
	$("#flashQuiz").on("click", function() {

		console.log("${flashcardVo.wordbookNo}");

		var wordbookNo = "${flashcardVo.wordbookNo}";
		
		$.ajax({
			url : "${pageContext.request.contextPath}/flashquiz", //url 
			type : "post",
			//		contentType : "application/json",
			data : {
				wordbookNo : wordbookNo
			},

			dataType : "json",
			success : function(quizList) {
				/*성공시 처리해야될 코드 작성*/
				console.log(quizList);

			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});

	});
</script>

<!-- 경환 -->
<script type="text/javascript">
	jQuery.ajaxSettings.traditional = true;

	var master = "${sessionScope.id}";

	var gameList = new Array(); //게임 리스트를 받는 배열
	var success = new Array(); //정답지 리스트
	var wordName = new Array();//게임 워드 받는 배열
	var meanName = new Array();//게임 뜻 받는 배열
	var wrongWord = new Array();//틀린 단어 저장하는 배열

	var rnum = 0;//정답 횟수를 추측하여 다시 리셋 시키게 하는 전역변수

	var num = 1; //클릭을 몇번 했는지 나타내는 전역변수
	var a1; // 1번째 워드 or mean값
	var a2; // 2번째 워드 or mean값
	var meanName;//틀린답일시 여기에있는 뜻을 가져감
	var id1; // 1번째 워드 or mean값 에 div아이디
	var id2;// 2번째 워드 or mean값 에 div아이디

	var wordIndex; //3개 랜덤 흩뿌릴때 인덱스 써야함
	var meanIndex;
	var gameLength;//3개이하일경우 길이를 측정해야하는 전역변수

	var life = 3;
	var gameName = "Pair Word";//${gameName};  게임 네임을 저장하는 변수
	var gameScore = 0; // 게임 스코어 전역변수
	var feverScore = [ 1, 2, 3, 4, 5 ];
	var feverGo;
	var correctIndex;
	var listlength;
</script>
<c:forEach items="${wordbookList}" var="info">
	<script type="text/javascript">
		var PairSetGameVo = new Object();
		PairSetGameVo.wordName = "${info.wordName}";
		PairSetGameVo.meanName = "${info.meanName}";
		gameList.push(PairSetGameVo);
	</script>
</c:forEach>
<script type="text/javascript">
	$(document).ready(function() {
		gameStart(gameName, gameScore);
		correctIndex = true;
		feverGo = 0;
		master = 'seo';
		gameScoreUpdate(gameScore);
		startGame();
		//gameEnd();
	});

	//modal창 키고나서 스타트게임 함수 실행하고
	//클릭이벤트로다가 끝
	$(".absolute").on("click", "div", function() {
		var meanindex // 의미찾는 인덱스값
		$(this).find("span").toggleClass("choiceblock");

		if (num == 1) {
			a1 = $(this).find("span").text();
			id1 = $(this).attr("id");
		}

		if (num == 2) {
			a2 = $(this).find("span").text();
			id2 = $(this).attr("id");

			//word부터 시작하는지 mean부터 시작하는지 알기위해
			if (id1.startsWith('w')) {
				if (success.indexOf(a1) + 1 == success.indexOf(a2)) {
					console.log("정답");

					$("#" + id1).hide();
					$("#" + id2).hide();
					$("#" + id1).find("span").removeClass("choiceblock");
					$("#" + id2).find("span").removeClass("choiceblock");

					gameScore = gameScore + 100 * feverScore[feverGo];
					if (feverGo < 4) {
						feverGo = feverGo + 1;
					}
					;

					rnum++;//정답 횟수를 체크하는 전역변수

					gameScoreUpdate(gameScore);

					//단어장에 있는 단어를 다 사용 하였을때	
					if (listlength < 4 && success.length == rnum + 1) {
						//모달창 으로다가 보여주고 확인 누르면 시작 페이지로 시작 페이지 아직 만들지 않음 확인밖에 없음
						alert("끄읕");
						gameEnd();
					}
					//지정했던 클래스 삭제

					//지정했던 클래스 삭제

				} else {
					console.log("오답");
					if (gameScore < 44) {
						gameScore = 0;
					} else {
						gameScore = gameScore - 44;
					}
					feverGo = 0;
					gameScoreUpdate(gameScore);

					$("#" + id1).find("span").removeClass("choiceblock");
					$("#" + id2).find("span").removeClass("choiceblock");

					if (id1.startsWith('w') && !id2.startsWith('w')) {
						wrong(a1);
						var meanindex = success.indexOf(a1) + 1;
						meanName = success[meanindex];
					} else if (!id1.startsWith('w') && id2.startsWith('w')) {
						wrong(a2);
					}

				}

			} else {//처음에 워드를 누르지 않았을 경우
				if (success.indexOf(a1) == success.indexOf(a2) + 1) {
					console.log("정답");

					$("#" + id1).hide();
					$("#" + id2).hide();
					$("#" + id1).find("span").removeClass("choiceblock");
					$("#" + id2).find("span").removeClass("choiceblock");

					gameScore = gameScore + 100 * feverScore[feverGo];
					if (feverGo < 4) {
						feverGo = feverGo + 1;
					}
					;
					rnum++;//정답 횟수를 체크하는 전역변수

					gameScoreUpdate(gameScore);

					//단어장에 있는 단어를 다 사용 하였을때	
					if (listlength < 4 && success.length == rnum + 1) {
						//모달창 으로다가 보여주고 확인 누르면 시작 페이지로 시작 페이지 아직 만들지 않음 확인밖에 없음
						alert("끄읕");
						gameEnd();
					}
					//지정했던 클래스 삭제

					//지정했던 클래스 삭제

				} else {
					console.log("오답");
					$("#" + id1).find("span").removeClass("choiceblock");
					$("#" + id2).find("span").removeClass("choiceblock");
					//점수 부분
					if (gameScore < 44) {
						gameScore = 0;
					} else {
						gameScore = gameScore - 44;
					}
					feverGo = 0;
					gameScoreUpdate(gameScore);

					if (id1.startsWith('w') && !id2.startsWith('w')) {
						wrong(a1);
					} else if (!id1.startsWith('w') && id2.startsWith('w')) {
						wrong(a2);
					}

				}
			}

			if (rnum == 4) {
				rnum = 0;
				startGame();
			}
		}//정답 체크 } num ==2

		//전역변수 초기화 문장
		if (num == 1) {
			num++;
		} else {
			num = 1;
		}
	});
	//클릭 이벤트 펑션 끝나는곳
	function startGame() {
		//단어장 리스트 갯수확인하는 지역변수
		listlength = gameList.length
		console.log("시작");

		success = new Array();

		for (var i = 1; i < 5; i++) {

			var index = gameList.indexOf(random(gameList));
			wordName.push(gameList[index].wordName);
			meanName.push(gameList[index].meanName);

			success.push(gameList[index].wordName);
			success.push(gameList[index].meanName);
			gameList.splice(index, 1);

			if (listlength < 5 && i == listlength) {
				console.log("4개이하 탈출");
				break;
			}
			;
		}
		;

		//현재 배열중 랜덤으로 뽑은 4개
		console.log(wordName);
		console.log(meanName);
		console.log(success);
		//현재 배열중 랜덤으로 뽑은 4개

		//다시 보이게
		for (var i = 1; i < success.length; i++) {

			$("#word" + i).show();
			$("#mean" + i).show();
		}

		//랜덤 뽑은 4개로 랜덤하게 위치하게끔 뿌림
		gameLength = wordName.length;

		for (var i = 1; i <= gameLength; i++) {

			wordIndex = wordName.indexOf(random(wordName));
			meanIndex = meanName.indexOf(random(meanName));
			$("#word" + i).find("span").text(wordName[wordIndex]);
			$("#mean" + i).find("span").text(meanName[meanIndex]);
			wordName.splice(wordIndex, 1);
			meanName.splice(meanIndex, 1);
		}
	}

	//모달창 여는 함수
	function gameStart(gameName, gameScore) {
		$("#myModal").modal();
		$("#myModal").modal("show");
		$("#gameName").find("b").text(gameName);
		$("#gameScore").find("b").text(gameScore);
	};

	function gameScoreUpdate(gameScore) {
		$("#gameScore").find("b").text(gameScore);
	}
	//여기서 점수 업데이트 해야함
	function gameEnd() {

		if (master != "") {

			console.log("게임이 끝나고 게임점수 업데이트");

			//wordbookNo 값 받아야합니다. 함수 안에다 넣어야 합니다 합니다 합니다 합니다.
			//url 바꾸어야합니다.
			wordbookNo = 221;
			master = "기기";
			gameScore = 5;
			gameName = "니니";

			$.ajax({
				url : "${pageContext.request.contextPath}/seo/scoreupdate",
				type : "post",
				//		traditional : true,
				data : {
					wordbookNo : wordbookNo,
					gameName : gameName,
					gameScore : gameScore,
					master : master
				},
				dataType : "html",
				success : function() {
					/*성공시 처리해야될 코드 작성*/
					console.log("성공q")
				},
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}
			});
		} //if문

		$("#myModal").modal("hide");
	}

	//랜덤 함수
	function random(a) {
		return a[Math.floor(Math.random() * a.length)];
	};

	//틀린단어 단어장에 작성하는 ajax함수
	function wrong(wrongWord) {
		//url 바꾸어야합니다

		if (wrongWord != "" && master != "") {
			console.log("오답일때 들어옴");
			$.ajax({
				url : "${pageContext.request.contextPath}/seo/wrongword",
				type : "post",
				//		traditional : true,
				data : {
					wrongWord : wrongWord
				},
				dataType : "json",
				success : function(num) {
					/*성공시 처리해야될 코드 작성*/
					console.log("틀린단어 ajax");
					console.log(num);
				},
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}
			});
		}
		;//if

	};//function
</script>

</html>