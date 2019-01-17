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
</style>
</head>
<body>
	<div class="container-fluid clearfix">
	
		<!--단어장 경로 -->
		&nbsp;
		<div class="row">
			<div class="col-xs-4">
				<div class="panel panel-primary">
					<h5 class="">&nbsp;&nbsp;단어장 입력 :</h5>
				</div>
			</div>
		</div>
		<!--/단어장 경로 -->
		
		<!--갤러리, 리스트 버튼 -->
		<div class="row">
			<div class="btn-group pull-right" role="group">
				<button type="button" class="btn btn-default">
					<a href="${pageContext.request.contextPath}/mypage/gallery"><span class="glyphicon glyphicon-th-large"
						aria-hidden="true"></span></a>
				</button>
				<button type="button" class="btn btn-default">
					<a href="${pageContext.request.contextPath}/mypage/list"><span class="glyphicon glyphicon-list"
						aria-hidden="true"></span></a>
				</button>
			</div>
		</div>
		<!--/갤러리, 리스트 버튼 -->
		
		<!--썸네일-->
		&nbsp;
		<div class="row">
			<div class="col-xs-3 col-md-3 thumbnail">
				<a href="#"><img src="/seya/assets/images/guestbook.png"
					alt="새 단어장"> </a>
				<hr>
				<p class="caption text-center">새 단어장</p>
			</div>
			<div class="col-xs-3 col-md-3 thumbnail">
				<a href="#"><img src="/seya/dist/images/guestbook.png"
					alt="단어장1"> </a>
				<hr>
				<p class="caption text-center">단어장 1</p>
			</div>
			<div class="col-xs-3 col-md-3 thumbnail">
				<a href="#"><img src="/seya/assets/images/guestbook.png"
					alt="단어장2"> </a>
				<hr>
				<p class="caption text-center">단어장 2</p>
			</div>
			<div class="col-xs-3 col-md-3 thumbnail">
				<a href="#"><img src="/seya/assets/images/guestbook.png"
					alt="단어장3"> </a>
				<hr>
				<p class="caption text-center">단어장 3</p>
			</div>
			<div class="col-xs-3 col-md-3 thumbnail">
				<a href="#"><img src="/seya/assets/images/guestbook.png"
					alt="단어장3"> </a>
				<hr>
				<p class="caption text-center">단어장 4</p>
			</div>
		</div>
		<!--/썸네일-->
	</div>
</body>
</html>