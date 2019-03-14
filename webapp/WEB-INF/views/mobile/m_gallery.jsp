<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="../../bower_components/font-awesome/css/font-awesome.min.css">
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

.wordbookbox {
	background-color: white;
}

.wordbook-content {
	width: 100%;
	display: table;
}

.btn-pure {
	width: 100%;
	display: contents;
}

.btn-enterFlash {
	width: 100%;
	height: 60px;
	border: 1px solid #d2d6de;
	text-align: left;
	background-color: white;
}

form+form {
	margin-top: 5px;
}

.wordbook-wrapper {
	height: 100%;
	width: 100%;
	margin: auto;
	border: 1px solid #d2d6de;
}

.wordbook-image {
	width: 15%;
	height: 100%;
	display: inline-block;
	float: left;
}

.wordbook-info {
	width: 18%;
	height: 50%;
	text-align: center;
	display: inline-block;
	float: left;
	font-size: 10px;
}

.wordbook-maker, .wordbook-num {
	margin-top: 10px;
}

.wordbook-name {
	width: 67%;
	height: 100%;
	text-align: left;
	display: inline-block;
	float: left;
}

.maker-image {
	margin-top: 3px;
	border-radius: 20px;
	block-size: 50px;
	margin-left: 3px;
}

.wordbook-title {
	line-height: 55px;
	font-size: 13px;
}
</style>
<meta charset="utf-8" name="viewport"
	content="width=device-width, user-scalable=no">
<title>SeyaWord</title>
</head>
<body>
	<c:import url="/WEB-INF/views/mobile/m_header.jsp"></c:import>
	<div class="m-wrapper">
		<div class="m-content">
			<form action="/selectsearch.do" method="get">
				<div class="wordbook-content">
					<input type="text" name="keyword" class="form-control"
						placeholder="내 단어장 이름검색"> <span class="btn-search">
						<button type="submit" class="btn-pure">
							<i class="fa fa-search"></i>
						</button>
					</span>
				</div>
			</form>
		</div>
		<div class="m-content">
			<!-- 단어장이 나오는 칸 -->
			<div class="box box-default">
				<c:forEach items="${requestScope.wordbookList}" var="wordbookVo">
					<!-- 플래쉬카드 들어가는 버튼 들어가는 칸 -->
					<form
						action="${pageContext.request.contextPath}/${URLId}/flashcard"
						class="wordbookbox">
						<input type="hidden" name="wordbookNo"
							value="${wordbookVo.wordbookNo }">
						<button type="submit" class="btn-enterFlash">
							<div class="wordbook-wrapper">
								<div class="wordbook-image">
									<img class="maker-image" alt="사진없음"
										src="/upload/profile/${wordbookVo.wordbookMakerImage}">
								</div>
								<div class="wordbook-info">
									<div class="wordbook-maker">
										<span class="maker-name">${wordbookVo.wordbookMaker}</span>
									</div>
									<div class="wordbook-num">
										<span class="wordnum">${wordbookVo.wordNum}단어</span>
									</div>
								</div>
								<div class="wordbook-name">
									<span class="wordbook-title">${wordbookVo.wordbookName}</span>
								</div>
							</div>
						</button>
					</form>
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>