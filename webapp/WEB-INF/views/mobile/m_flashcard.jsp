<%@ page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" name="viewport"
	content="width=device-width, user-scalable=no">
<title>SeyaWord</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/bower_components/bootstrap/dist/css/revise.css">
<style>
html, body {
	background-color: #EEE6E1;
}

* {
	box-sizing: border-box;
}

.m-wrapper {
	height: 100%;
	margin-top: 25px;
}

.m-content {
	margin: auto;
	margin-top: 15px;
	position: relative;
	width: 100%;
	padding: 10px;
	background-color: rgba(255, 255, 255, 0.4);
	border-radius: 10px;
}

.user-header {
	color: #dd4b39;
}

.text-center {
	text-align: center;
}

.form-group {
	margin-bottom: 15px;
}

.form-control {
	border-radius: 0;
	box-shadow: none;
	border-color: #d2d6de;
	display: block;
	width: 100%;
	border: 1px solid #ccc;
	padding: 6px 12px;
	font-size: 14px;
	line-height: 1.42857143;
	color: #555;
	background-color: #fff;
	background-image: none;
	height: 40px;
}

input[type=button].btn-block, input[type=reset].btn-block, input[type=submit].btn-block
	{
	width: 100%;
}

button, html input[type=button], input[type=reset], input[type=submit] {
	-webkit-appearance: button;
	cursor: pointer;
}

.btn {
	display: inline-block;
	padding: 6px 12px;
	margin-bottom: 0;
	font-size: 15px;
	font-weight: 400;
	line-height: 1.42857143;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	background-image: none;
	border: 1px solid transparent;
	border-radius: 4px;
	box-shadow: none;
}

.btn-block {
	display: block;
	width: 100%;
}

.btn-danger {
	color: #fff;
	background-color: #d9534f;
	border-color: #d43f3a;
}

.btn-search {
	border-radius: 0;
	box-shadow: none;
	border-color: #d2d6de;
	width: 10%;
	padding: 6px 12px;
	border: 1px solid #ccc;
	font-size: 14px;
	line-height: 1.42857143;
	color: #555;
	background-color: #fff;
	background-image: none;
	display: table-cell;
}

button, input, select, textarea {
	font-family: inherit;
	font-size: inherit;
	line-height: inherit;
}

input {
	line-height: normal;
}

button, input, optgroup, select, textarea {
	margin: 0;
	font: inherit;
	color: inherit;
}

a:-webkit-any-link {
	color: black;
	text-decoration: none;
}

.btn-pure {
	width: 100%;
	display: contents;
}

form+form {
	margin-top: 5px;
}

.flashcardcontainer {
	margin-top: 10px;
	margin-bottom: 10px;
	width: 100%;
	height: 200px;
}

.flashcardbox {
	height: 200px;
	background-color: #fff;
	box-shadow: 1px 1px 1px 1px #ddd;
	border: 2px solid rgba(221, 221, 221, 0.2);
	border-style: ridge;
	text-align: center;
}

.btn-left {
	min-height: 100%;
	display: inline-block;
	float: left;
	width: 20%;
}

.btn-word {
	min-height: 100%;
	height: 10px;
	display: inline-block;
	width: 60%;
	overflow: hidden;
}

p#word {
	font-size: 25px;
	line-height: 148px;
}

p#mean {
	font-size: 15px;
	line-height: 168px;
}

.btn-right {
	min-height: 100%;
	display: inline-block;
	float: right;
	width: 20%;
}

.glyphicon-chevron-left, .glyphicon-chevron-right {
	position: relative;
	top: 88px;
	display: inline-block;
	font-family: 'Glyphicons Halflings';
	font-style: normal;
	font-weight: normal;
	line-height: 1;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
	font-size: 25px;
}

.btn-full {
	width: 30px;
	height: 30px;
	float: right;
	margin-right: 0px;
	margin-top: -8px;
}
</style>
</head>
<body>
	<c:import url="/WEB-INF/views/mobile/m_header.jsp"></c:import>
	<div class="m-wrapper">
		<div class="m-content">
			<div class="flashcardcontainer">
				<!-- content box -->
				<div id="wm-over" class="flashcardbox">
					<!-- word -->
					<div id="leftbtn" class="btn-left" role="button">
						<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					</div>
					<div id="flashShow" class="btn-word">
						<p id="word"></p>
						<p id="mean"></p>
					</div>
					<div id="rightbtn" class="btn-right" role="button">
						<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					</div>
				</div>
			</div>
		</div>
		<div class="m-content">
			<div class="m-gamerow">
				<div class="flashquiz"></div>
				
			</div>
		</div>
	</div>
</body>
<!-- jQuery 3 -->
<script
	src="${pageContext.request.contextPath}/bower_components/jquery/dist/jquery.min.js"></script>
<script type="text/javascript">
	var wordList = new Array();
	var meanList = new Array();
	var noList = new Array();
	var wordbookNo = '${flashcardVo.wordbookNo}';
	var i = 0;
	var j = 0;
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
	$(document).ready(function() {
		i = 0;
		j = 0;
		$("#word").text(wordList[i]);
		$("#mean").text(meanList[i]);
		$("#mean").hide();

		function clickWm() {
			if (j == 0) {
				j = 1;
				$("#flashShow").fadeOut(100, "swing", function() {
					$("#word").hide();
					$("#mean").show();
					$("#flashShow").fadeIn(100, "swing")
				});
			} else {
				j = 0;
				$("#flashShow").fadeOut(100, "swing", function() {
					$("#mean").hide();
					$("#word").show();
					$("#flashShow").fadeIn(100, "swing")
				});
			}
		}
		function btnRight() {
			if (i != wordList.length - 1) {
				i++;
				$("#flashShow").fadeOut(100, "swing", function() {
					if (j != 0) {
						j = 0;
						$("#mean").hide();
						$("#word").show();
					}
					$("#word").text(wordList[i]);
					$("#mean").text(meanList[i]);
					$("#flashShow").fadeIn(100, "swing");
				});
			}
		}
		function btnLeft() {
			if (i != 0) {
				i--;
				$("#flashShow").fadeOut(100, "swing", function() {
					if (j != 0) {
						j = 0;
						$("#mean").hide();
						$("#word").show();
					}
					$("#word").text(wordList[i]);
					$("#mean").text(meanList[i]);
					$("#flashShow").fadeIn(100, "swing");
				});
			}
		}
		$(function() {
			$("#flashShow").click(function() {
				clickWm()
			});
		});
		$(function() {
			$("#rightbtn").click(function() {
				btnRight()
			});
		});
		$(function() {
			$("#leftbtn").click(function() {
				btnLeft()
			});
		});
	});
</script>
</html>