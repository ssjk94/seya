<%@page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/dist/jquery/jquery-1.12.4.js"></script>
<title>Insert title here</title>

<style type="text/css">
.flashcardcontainer {
	width: 790px;
	min-height: 940px;
	margin-left: 15px;
}

.flashcardbox {
	height: 370px;
	background-color: #fff;
	box-shadow: 1px 1px 1px 1px #ddd;
	border: 2px solid rgba(221, 221, 221, 0.2);
	border-style: ridge;
	font-size: 72px;
	text-align: center;
	padding-top: 130px;
}

.flashcontrolbox {
	height: 85px;
	margin-top: 2px;
	background-color: rgb(229, 85, 67);
	padding-left: 295px;
}

.img-circle-btn {
	border-radius: 50%;
	width: 60px;
	height: 60px;
	background-color: #fff;
}

.gly-size {
	font-size: 55px;
}

.chkbox-size {
	width: 25px;
	height: 25px;
	font-size: 25px;
}

.flashcardattach {
	float: left;
}

.flashcardclear {
	clear: both;
}

.modiandchk {
	margin-left: 30px;
	margin-right: 30px;
}

.flashbtn {
	cursor: pointer;
}

#leftbtn.img-circle-btn:hover {
	background-color: #e7ff09;
}

#rightbtn.img-circle-btn:hover {
	background-color: #e7ff09;
}

.glyphicon-pencil:hover {
	color: #fff;
}

.flashquiz-container {
	padding-top: 10px;
	margin-top: 20px;
	height: 350px;
}

.flashquiz-box {
	margin-top: 90px;
	height: 100px;
	border: 1px solid black;
	width: -webkit-fill-available;
	font-size: 30px;
}

#flashSubmit {
	font-size: 30px;
}

#wm-over {
	margin-top: 155px;
}

</style>

<!-- 테두리 마지막에 없애야함 -->

</head>
<script type="text/javascript">
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
<c:forEach items="${requestScope.wordbookList}" var="flashcardVo">
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
<body>
		<!-- content box -->
		<div id="wm-over" role="button" class="panel-body flashcardbox">
			<!-- mean -->

			<p id="quiz"></p>

		</div>
		<!-- 		<form action="#" class="flashquiz-container"> -->
		<input class="flashquiz-box text-center" type="text" id="flashSubmit" autocomplete="off">
		<!-- word -->
		<input type="hidden" id="answer">
		<!-- 		</form> -->
</body>
</html>