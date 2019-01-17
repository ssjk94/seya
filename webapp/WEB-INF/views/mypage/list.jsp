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
		&nbsp;
		<div class="row">
			<div class="col-xs-4">
				<div class="panel panel-primary">
					<h5 class="">&nbsp;&nbsp;단어장 입력 :</h5>
				</div>
			</div>
		</div>

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

		&nbsp;
		<div class="row">
			<div class="col-xs-12">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th class="col-xs-3 col-md-1">
								<p class="text-center">단어장 이름</p>
							</th>
							<th class="col-xs-3 col-md-1">
								<p class="text-center">만든 이</p>
							</th>
							<th class="col-xs-3 col-md-1">
								<p class="text-center">만든 날짜</p>
							</th>
							<th class="col-xs-3 col-md-1">
								<p class="text-center">수정</p>
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th class="text-center">단어장 1</th>
							<th class="text-center">seya</th>
							<th class="text-center">19-01-01</th>
							<th class="text-center">
								<button type="button" class="btn-xs btn-default">
									<a href="#"> <span class="glyphicon glyphicon-pencil"
										aria-hidden="true"></span>
									</a>
								</button>
							</th>
						</tr>
						<tr>
							<th class="text-center">단어장 2</th>
							<th class="text-center">seya</th>
							<th class="text-center">19-01-02</th>
							<th class="text-center"><button type="button"
									class="btn-xs btn-default">
									<a href="#"> <span class="glyphicon glyphicon-pencil"
										aria-hidden="true"></span>
									</a>
								</button></th>
						</tr>
						<tr>
							<th class="text-center">단어장 3</th>
							<th class="text-center">seya</th>
							<th class="text-center">19-01-03</th>
							<th class="text-center"><button type="button"
									class="btn-xs btn-default">
									<a href="#"> <span class="glyphicon glyphicon-pencil"
										aria-hidden="true"></span>
									</a>
								</button></th>
						</tr>
						<tr>
							<th class="text-center">단어장 4</th>
							<th class="text-center">seya</th>
							<th class="text-center">19-01-04</th>
							<th class="text-center"><button type="button"
									class="btn-xs btn-default">
									<a href="#"> <span class="glyphicon glyphicon-pencil"
										aria-hidden="true"></span>
									</a>
								</button></th>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>