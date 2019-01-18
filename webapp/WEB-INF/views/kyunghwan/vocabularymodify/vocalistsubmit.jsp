<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 부트스트랩 css사용 -->
    <link href="${pageContext.request.contextPath}/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- 
	jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다)
	이게 자바스크립트보다 먼저와야함
	 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 부트스트랩의 자바 스크립트를 사용하겠다는 뜻 -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

</head>
<body>
	
	<div>
		<input type="submit" class="btn btn-warning active btn-sm" style="margin-left: 700px; margin-top: 20px; background-color: #dd4b39;">
	</div>
</body>
</html>
<!--  style="float: right; margin-right: 10%; margin-top: 20px;margin-bottom: 10%;"  -->