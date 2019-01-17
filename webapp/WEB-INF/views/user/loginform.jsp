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
<title>로그인</title>
<style>
.form-signin {
	max-width: 330px;
	padding: 15px;
	margin: 0 auto;
}

.form-signin .form-signin-heading, .form-signin .checkbox {
	margin-bottom: 10px;
}

h2, .h2 {
	font-size: 22px;
}

.btn-primary {
	color: #000000;
	background-color: #ffffff;
	border-color: #dadce0;
}

.btn-primary:hover {
	color: #000000;
	background-color: #ffffff;
	border-color: #ff6666;
}

.panel {
	box-shadow: 0 5px 5px rgba(0, 0, 0, .5);
}

.panel-primary {
	max-width: 350px;
	margin: 0 auto;
	border-color: #ffffff;
}

a {
	color: #000000;
	text-decoration: none;
}

a:hover, a:focus {
	color: #ff6666;
	text-decoration: underline;
}

.form-control:focus {
	border-color: #ff6666;
	outline: 0;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px
		rgba(102, 175, 233, .6);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px
		rgba(255, 102, 102, .6);
}
</style>
</head>
<script
	src="${pageContext.request.contextPath}/assets/jquery/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>
<body>
	<div class="container">
		<div class="panel panel-primary">
			<form class="form-signin">
				<h2 class="form-signin-heading">로그인</h2>
				<label for="inputEmail" class="sr-only">이메일 아이디</label> <input
					type="email" id="inputEmail" class="form-control"
					placeholder="이메일 주소" required="" autofocus=""> <label
					for="inputPassword" class="sr-only">Password</label> <input
					type="password" id="inputPassword" class="form-control"
					placeholder="비밀번호" required=""> <br>
				<button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
				<button class="btn btn-lg btn-primary btn-block" type="submit">간편로그인</button>
			</form>
			<ul class="list-inline text-center">
				<li><a href="#">회원가입</a></li>
				<li><a href="#">비밀번호 찾기</a></li>
			</ul>
		</div>
	</div>
</body>
</html>