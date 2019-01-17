<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" charset=utf-8
	content="width=device-width ,initial-scale=1maximum-scale=1, user-scalable=no">
<link href="${pageContext.request.contextPath}/assets/css/bootstrap.css"
	rel="stylesheet" type="text/css">
<title>MyPage</title>
<style>
.container-fluid {
	padding: 5%;
}

.panel-height {
	height: 400px;
	margin: auto;
}

.panel-card {
	height: 150px;
	width: 150px;
	margin: auto;
}
</style>
</head>
<body>
	<div class="container-fluid clearfix">
		&nbsp;

		<!--단어장 경로 -->
		<div class="row">
			<div class="col-xs-4">
				<div class="panel panel-primary">
					<h5 class="">&nbsp;&nbsp;단어장 입력 :</h5>
				</div>
			</div>
		</div>
		<!--/단어장 경로 -->

		&nbsp;

		<!--플래시카드 -->
		<div class="row">
			<div class="col-xs-8 col-md-12">
				<div class="panel panel-primary panel-height">
					<div class="checkbox" align="right">
						<label> <input type="checkbox" value="">외운
							단어&nbsp;&nbsp;
						</label>
					</div>
				</div>
			</div>

		</div>
		<!--/플래시카드 -->

		&nbsp;

		<!--페이저-->
		<nav>
			<ul class="pager">
				<li><a href="#">이전</a></li> &nbsp;&nbsp;1&nbsp;/&nbsp;50&nbsp;&nbsp;
				<li><a href="#">다음</a></li>
			</ul>
		</nav>
		<!--/페이저-->

		<br>

		<!--수정버튼-->

		<h5 class="text-center">
			<a class="btn btn-primary" href="#" role="button">수정</a>
		</h5>

		<!--/수정버튼-->

		<br> <br> <br>

		<!--게임링크-->
		<div class="row">
			<div class="col-xs-4 col-md-4">
				<div class="panel panel-primary panel-card">
					<a href="#"><img src="#" alt="플래시 카드"> </a>
					<hr>
					<p class="caption text-center">플래시 카드</p>
				</div>
			</div>
			<div class="col-xs-4 col-md-4">
				<div class="panel panel-primary panel-card">
					<a href="#"><img src="#" alt="짝 맞추기"> </a>
					<hr>
					<p class="caption text-center">짝 맞추기</p>
				</div>
			</div>
			<div class="col-xs-4 col-md-4">
				<div class="panel panel-primary panel-card">
					<a href="#"><img src="#" alt="랜덤 퀴즈"> </a>
					<hr>
					<p class="caption text-center">랜덤 퀴즈</p>
				</div>
			</div>
		</div>
		<!--/게임링크-->

	</div>
</body>
</html>