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
	height: 370px;
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

.glyphicon-pencil:hover {
	color: #fff;
}

.flashquiz-container {
	padding-top: 10px;
	margin-top: 20px;
	height: 350px;
}

.flashquiz-box {
	margin-top: 20px;
	height: 100px;
	border: 1px solid black;
}
</style>

<!-- 테두리 마지막에 없애야함 -->

</head>
<script type="text/javascript">
	var wordList = new Array();
	var meanList = new Array();
	var noList = new Array();
	var wordbookNo = '${flashcardVo.wordbookNo}';
	var i = 0;
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
	$(document).ready(function() {
		// 난수 생성
		i = Math.floor(Math.random() * meanList.length);
		console.log(meanList[i]);
		$("#mean").text(meanList[i]);
		$(function() {
			$("#wm-over").click(function() {
				meanList.splice(i, 1);
				i = Math.floor(Math.random() * meanList.length);
				$("#mean").text(meanList[i]);
			});
		});
	});
</script>
<body>
	<!-- width 790px height 450-->
	<div class="panel panel-default flashcardcontainer">
		<!-- content box -->
		<div id="wm-over" role="button" class="panel-body flashcardbox">
			<!-- mean -->
			<div>
				<span id="mean"></span>
			</div>
		</div>
		<form action="#" class="flashquiz-container">
			<div class="flashquiz-box">
				<!-- word -->
				<div>
					<p hidden="word"></p>
				</div>
			</div>
		</form>
	</div>
</body>
</html>