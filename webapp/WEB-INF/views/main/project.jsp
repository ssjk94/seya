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
<link href="${pageContext.request.contextPath}/assets/css/seya.css"
	rel="stylesheet" type="text/css">
<title>MyPage</title>
<style>

.jumbotron {
	background-color: #ff6666;
	background-sizd: cover;
	text-shadown: black 0.2em 0.2em 0.2em;
	color: white;
}

</style>
<script
	src="${pageContext.request.contextPath}/assets/jquery/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">SeyaWord</a>
			</div>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">홈<span class="sr-only"></span></a></li>
					<li><a href="#">마이 페이지</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">게임<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">플래시 카드</a></li>
							<li><a href="#">짝 맞추기</a></li>
							<li><a href="#">랜덤 퀴즈</a></li>
						</ul></li>
				</ul>
				<form class="navbar-form navbar-left">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="기능을 입력하세요.">
					</div>
					<button type="submit" class="btn btn-default">검색</button>
				</form>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">로그인</a></li>
							<li><a href="#">회원가입</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="jumbotron">
			<h1 class="text-left">SeyaWord</h1>
		</div>
	</div>
</body>
</html>