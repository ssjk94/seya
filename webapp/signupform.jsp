<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 부트스트랩 css사용 -->
    <link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- 
	jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다)
	이게 자바스크립트보다 먼저와야함
	 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 부트스트랩의 자바 스크립트를 사용하겠다는 뜻 -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.min.js"></script>
<!-- 이스터에그 -->
	<style type="text/css">
		.signborder{
			border: 2px solid maroon;
			padding: 40px;
			border-radius: 6px;
		}
	</style>

</head>
<body>
	<!-- 고정폭으로 만들기 -->
	<div class="container signborder" style="width: 800px; max-width: none !important;">
	
	<!-- 정보가 들어가는 컨테이너 패딩 40 테두리 라운드 -->
		<div style="float: left;">
			<!-- 기본적인 텍스트 로고 들어가는 div -->
			<div>
				<p>Seya World 계정 만들기</p>
			</div>
			<!-- 실질적인 정보 들어가는창 -->
			<div>
				<!-- 이름 170 20 170 -->
				<div>
					<input type="text" class="form-control" placeholder="Name">
				</div>
				<!-- 별명 or nickname -->
				<div>
					<input type="text" class="form-control" placeholder="Nick name">
				</div>
				<!-- 아이디 or 메일 360 -->
				<div>
					<input type="email" class="form-control" placeholder="E-Mail">
				</div>
				<!-- 아이디 중복일 경우 나오게 만드는 div -->
				<div>
				
				</div>
				<!-- 비밀번호 -->
				<div>
					<input type="password" class="form-control" placeholder="Password">
				</div>
				<!-- 생년월일 -->
				<div>
					<input type="text" class="form-control" placeholder="Year Month Day">
				</div>
				<!-- 확인 누르는 버튼  90-->
				<div>
					<button type="submit" class="btn btn-default">Sign Up</button>
				</div>
				
			</div>
		</div>
	<!-- 이미지, 글 들어가는 컨테이너 -->
		<div style="float: left;">
			<!-- 이미지 -->
			<div>
				<img alt="dkdkk" src="assets/images/account.svg">
			</div>
			<!-- 이미지 글 -->
			<div>
				<p>하나의 계정으로 모든 SeyaWorld 서비스를 이용할 수 있습니다.</p>
			</div>
		</div>
	</div>
	
</body>
</html>