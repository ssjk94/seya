<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	var time;
	var t;
	var quizList = new Array();
	var answerList = new Array();
	var a = 0;
	var b = 0;
	var count = 0;
	if (noList.length > 14) {
		for (var k = 0; k < 15; k++) {
			a = Math.floor(Math.random() * noList.length);
			b = Math.floor(Math.random() * 2);
			if (b == 0) {
				quizList[k] = wordList[a];
				answerList[k] = meanList[a];
			} else {
				quizList[k] = meanList[a];
				answerList[k] = wordList[a];
			}
			noList.splice(a, 1);
			wordList.splice(a, 1);
			meanList.splice(a, 1);
		}
	} else {
		for (var k = 0; k < noList.length; k++) {
			a = Math.floor(Math.random() * wordList.length);
			b = Math.floor(Math.random() * 2);
			if (b == 0) {
				quizList[k] = wordList[a];
				answerList[k] = meanList[a];
			} else {
				quizList[k] = meanList[a];
				answerList[k] = wordList[a];
			}
			wordList.splice(a, 1);
			meanList.splice(a, 1);
		}
	}
	console.log(quizList);
	console.log(answerList);
	$(document).ready(function() {
		// 난수 생성
		console.log(quizList[a]);
		console.log(answerList[a]);
		quizTextCheck(quizList[a]);
		$("#answer").text(answerList[a]);

		function quizTextCheck(quizText) {
			var hanText = /^[ㄱ-ㅎ|ㅏ-ㅣ|가-힣|,]/;
			var quizText = quizList[a];
			if (hanText.test(quizText)) {
				$("#quiz").css({
					"font-size" : "30px",
					"padding-top" : "165px"
				});
				$("#quiz").text(quizText);
			} else {
				$("#quiz").css({
					"font-size" : "50px",
					"padding-top" : "150px"
				});
				$("#quiz").text(quizText);
			}
		}

		function quiz() {
			a++;
			quizTextCheck(quizList[a]);
			$("#answer").text(answerList[a]);
			console.log(quizList[a]);
			console.log(answerList[a]);
		}

		function answerCheck() {
			if ($("#flashSubmit").val() == answerList[a]) {
				console.log($("#flashSubmit").val());
				$("#flashSubmit").val("");
				alert("정답입니다.")
				return true;
			} else {
				console.log($("#flashSubmit").val());
				$("#flashSubmit").val("");
				alert("오답입니다.")
				return false;
			}
			
		}
		$(function() {
			$(document).on("keyup", function(e) {
				switch (e.keyCode) {
				case 13:
					answerCheck();
					if (a < quizList.length - 1) {
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
<body>
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
	<div id="wm-over" role="button" class="quiz-OX">
		<!-- mean -->
		<p id="quiz"></p>
	</div>
	<!-- 		<form action="#" class="flashquiz-container"> -->
	<input class="quiz-answer text-center" type="text" id="flashSubmit"
		autocomplete="off">
	<!-- word -->
	<input type="hidden" id="answer">
	<!-- 		</form> -->
</body>
</html>