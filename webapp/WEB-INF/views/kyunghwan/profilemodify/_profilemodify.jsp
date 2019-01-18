<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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


<!-- favinco오류 제거용 -->
<link rel="shortcut icon" href="">

<style type="text/css">
.profileborder{
	top:2px;
	left:2px;
	bottom:2px;
	right:2px;
	border:2px solid #ff6666;
	border-radius: 6px;
}

.lev1{
	border-bottom: 2px solid #ff6666;
}


</style>

</head>
<body>

	<!-- 기본 사항 -->
	<div style="margin-top: 35px; text-align: center;">
		<c:import url="/WEB-INF/views/kyunghwan/profilemodify/profileheadernotice.jsp"></c:import>
	</div>
	
	
	<!-- 전체 테두리 들어갈 div -->
	<div class="container profileborder"
		style="width: 800px; max-width: none !important; margin-top: 35px;">
		<!-- 컨테이너 -->

		<div class="lev1"
			style="padding-top: 15px; padding-bottom: 15px;clear: both;">

			<!-- 프로필 공지사항 변경칸 -->
			<c:import url="/WEB-INF/views/kyunghwan/profilemodify/profilenotice.jsp"></c:import>

		</div>

		<div class="lev1"
			style="padding-top: 15px; padding-bottom: 15px;clear: both;">

			<!-- 프로필 사진 변경하는 칸 -->
			<c:import url="/WEB-INF/views/kyunghwan/profilemodify/profilepicture.jsp"></c:import>

		</div>

		<div class="lev1"
			style="padding-top: 15px; padding-bottom: 15px;clear: both;">

			<!-- 프로필 별명 변경칸 -->
			<c:import url="/WEB-INF/views/kyunghwan/profilemodify/profilenickname.jsp"></c:import>


		</div>

		<div class=""
			style="padding-top: 15px; padding-bottom: 15px;clear: both;">

			<!--  프로필 내용 변경하는 칸 -->
			<c:import url="/WEB-INF/views/kyunghwan/profilemodify/profilecontent.jsp"></c:import>

		</div>

	</div>

</body>
</html>