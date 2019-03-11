<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style>
</style>
<script type="text/javascript">
	var time;
	var t;
	var wordList = new Array();
	var meanList = new Array();
	var noList = new Array();
	var quizList = new Array();
	var answerList = new Array();
	var wordbookNo = '${flashcardVo.wordbookNo}';
	var i = 0;
	var j = 0;
	var count = 0;
</script>
<c:forEach items="${requestScope.selectFlashcardList}" var="flashcardVo">
	<script type="text/javascript">
		noList[i] = '${flashcardVo.wordNo}';
		wordList[i] = '${flashcardVo.wordName}';
		meanList[i] = '${flashcardVo.meanName}';
		i++;
	</script>
</c:forEach>
<script type="text/javascript">
	if (noList.length > 14) {
		for (var k = 0; k < 15; k++) {
			i = Math.floor(Math.random() * noList.length);
			j = Math.floor(Math.random() * 2);
			if (j == 0) {
				quizList[k] = wordList[i];
				answerList[k] = meanList[i];
			} else {
				quizList[k] = meanList[i];
				answerList[k] = wordList[i];
			}
			noList.splice(i, 1);
			wordList.splice(i, 1);
			meanList.splice(i, 1);
		}
	} else {
		for (var k = 0; k < noList.length; k++) {
			i = Math.floor(Math.random() * wordList.length);
			j = Math.floor(Math.random() * 2);
			if (j == 0) {
				quizList[k] = wordList[i];
				answerList[k] = meanList[i];
			} else {
				quizList[k] = meanList[i];
				answerList[k] = wordList[i];
			}
			wordList.splice(i, 1);
			meanList.splice(i, 1);
		}
	}
	console.log(quizList);
	console.log(answerList);
	$(document).ready(function() {
		// 난수 생성
		console.log(quizList[i]);
		console.log(answerList[i]);
		quizTextCheck(quizList[i]);
		$("#answer").text(answerList[i]);

		function quizTextCheck(quizText) {
			var hanText = /^[ㄱ-ㅎ|ㅏ-ㅣ|가-힣|,]/;
			var quizText = quizList[i];
			if (hanText.test(quizText)) {
				$("#quiz").css({
					"font-size" : "30px",
					"padding-top" : "50px"
				});
				$("#quiz").text(quizText);
			} else {
				$("#quiz").css({
					"font-size" : "50px",
					"padding-top" : "30px"
				});
				$("#quiz").text(quizText);
			}
		}

		function quiz() {
			i++;
			quizTextCheck(quizList[i]);
			$("#answer").text(answerList[i]);
			console.log(quizList[i]);
			console.log(answerList[i]);
		}

		function answerCheck() {
			if ($("#flashSubmit").val() == answerList[i]) {
				console.log($("#flashSubmit").val());
				alert("정답입니다.")
				return true;
			} else {
				console.log($("#flashSubmit").val());
				alert("오답입니다.")
				return false;
			}

		}
		$(function() {
			$(document).on("keyup", function(e) {
				switch (e.keyCode) {
				case 13:
					answerCheck();
					if (i < quizList.length - 1) {
						quiz()
						console.log(quizList.length)
						console.log(i)
					}
					break;
				}
			});
		});

	});
</script>
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
<body>
	<!-- width 790px height 450-->
	<div class="quiz-header">다음의 보기에서 알맞은 정답을 적어주세요.</div>
	<div class="time-bar">
		<div class="progress">
			<div class="progress-bar progress-bar-primary progress-bar-striped"
				role="progressbar" aria-valuenow="100" aria-valuemin="0"
				aria-valuemax="100" style="width: 100%">
				<span class="sr-only">40% Complete (success)</span>
			</div>
		</div>
	</div>
	<!-- content box -->
	<div id="wm-over" role="button" class="panel-body flashcardbox">
		<!-- mean -->
		<p id="quiz"></p>
	</div>
	<!-- 		<form action="#" class="flashquiz-container"> -->
	<input class="flashquiz-box text-center" type="text" id="flashSubmit"
		autocomplete="off">
	<!-- word -->
	<input type="hidden" id="answer">
	<!-- 		</form> -->
</body>
</html>