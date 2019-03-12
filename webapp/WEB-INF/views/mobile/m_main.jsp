<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<style>
html, body {
	background-color: #EEE6E1;
}

* {
	box-sizing: border-box;
}

.m-wrapper {
	height: 100%;
}

.m-header {
	margin-top: 30%;
}

.m-headname {
	font-size: 35px;
	color: #dd4b39;
}

.m-name {
	font-size: 35px;
	text-align: center;
}

.m-content {
	margin: auto;
	position: relative;
	width: 80%;
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
	height: 34px;
	padding: 6px 12px;
	font-size: 14px;
	line-height: 1.42857143;
	color: #555;
	background-color: #fff;
	background-image: none;
	border: 1px solid #ccc;
	height: 40px;
	padding: 6px 12px;
	font-size: 14px;
	line-height: 1.42857143;
	color: #555;
	background-color: #fff;
	background-image: none;
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

.btn-login {
	margin-top: 10px;
	height: 50px;
	font-size: 18px;
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

.mar-top-15 {
	margin-top: 20px;
}
</style>
<meta charset="utf-8" name="viewport"
	content="width=device-width, user-scalable=no">
<title>SeyaWord</title>
</head>
<body>
	<div class="m-wrapper">
		<div class="m-header">
			<h1 class="m-name">
				<span class="m-headname">Seya</span>word
			</h1>
		</div>
		<div class="m-content">
			<div class="user-header">
				<h2 class="text-center">로그인</h2>
			</div>
			<form action="userlogin.do" name="loginform" method="post">
				<div class="user-body">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" id="id"
							name="id" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호"
							id="password" name="password" maxlength="20">
					</div>
					<div class="form-group mar-top-15">
						<input type="submit" class="btn btn-block btn-danger btn-login"
							value="로그인">
					</div>
				</div>
			</form>
		</div>
	</div>
	<!-- jQuery 3 -->
	<script
		src="${pageContext.request.contextPath}/bower_components/jquery/dist/jquery.min.js"></script>
</body>
<script type="text/javascript">
	$('[name="loginform"]').on('submit', function() {
		//밸류 함수
		var id = $('#id').val();
		var password = $('#password').val();
		// 아이디 체크
		if (id == "" || id == null) {
			alert("아이디를 입력하지 않았습니다.")
			$('#id').focus();
			return false;
		}
		if (id.search(/\s/) != -1) {
			alert("아이디에 공백을 사용할 수 없습니다.");
			$('#id').focus();
			return false;
		}
		//아이디체크 끝
		//비밀번호 입력여부 체크
		if (password == "" || password == null) {
			alert("비밀번호를 입력하지 않았습니다.")
			$('#password').focus();
			return false;
		}
	});
</script>
</html>