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
	height: 450px;
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
	padding-top: 150px;
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

#mean {
	font-size: 30px;
}
</style>

<!-- 테두리 마지막에 없애야함 -->

</head>
<script type="text/javascript">
	var wordList = new Array();
	var meanList = new Array();
	var i = 0;
	var j = 0;
</script>
<c:forEach items="${requestScope.selectFlashcardList}" var="flashcardVo">
	<script type="text/javascript">
		wordList[i] = '${flashcardVo.wordName}';
		meanList[i] = '${flashcardVo.meanName}';
		i++;
	</script>
</c:forEach>
<script type="text/javascript">
	$(document).ready(function() {
		i = 0;
		j = 0;
		if (j % 2 == 0) {
			$("#word").text(wordList[i]);
		} else {
			$("#mean").text(meanList[i]);
		}

		$(function() {
			$("#rightbtn").click(function() {
				i++;
				if (j % 2 == 0) {
					$("#word").text(wordList[i]);
				} else {
					$("#mean").text(meanList[i]);
				}
			});
			$("#leftbtn").click(function() {
				i--;
				if (j % 2 == 0) {
					$("#word").text(wordList[i]);
				} else {
					$("#mean").text(meanList[i]);
				}
			});

		});
	});
</script>
<body>

	<!-- width 790px height 450-->
	<div class="panel panel-default flashcardcontainer">
		<!-- content box -->
		<div id="wm-over" role="button" class="panel-body flashcardbox">

			<div>
				<!-- word -->
				<div>
					<p id="word"></p>
				</div>
			</div>

			<div>
				<!-- mean -->
				<div>
					<span id="mean"></span>
				</div>
			</div>

		</div>
		<!-- control box -->
		<div class="panel-footer flashcontrolbox">

			<!-- Left button -->
			<div id="leftbtn" class="img-circle-btn flashcardattach"
				role="button">
				<span class="glyphicon glyphicon-chevron-left gly-size"
					aria-hidden="true"></span>
			</div>

			<!-- Check and Modify -->
			<div class="flashcardattach modiandchk">
				<!-- Check -->
				<div>
					<input class="chkbox-size" type="checkbox" id="chkbox"> <label
						for="chkbox"><span></span></label>
				</div>
				<!-- Modify -->
				<div class="chkbox-size">
					<span class="glyphicon glyphicon glyphicon-pencil"
						aria-hidden="true"></span>
				</div>
			</div>
			<!-- Right button -->
			<div id="rightbtn" class="img-circle-btn flashcardattach flashbtn">
				<span class="glyphicon glyphicon-chevron-right gly-size"
					aria-hidden="true"></span>
			</div>

			<!-- float 제거용 -->
			<div class="flashcardclear"></div>

		</div>
	</div>
</body>

</html>