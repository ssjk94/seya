<%@ page language="java" contentType="text/html;"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

	

<meta charset="UTF-8">
<title>SeyYYa</title>

<!-- 부트스트랩 css사용 -->
    <link href="${pageContext.request.contextPath}/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- 
	jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다)
	이게 자바스크립트보다 먼저와야함
	 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 부트스트랩의 자바 스크립트를 사용하겠다는 뜻 -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	
	<style type="text/css">
	
		.vocabularycontainer{
			width: 780px;
			max-width: none !important;
		}			
		
	</style>
    
</head>
<body>

	<!-- 
클릭하는 단어장이 무엇인지 알아야함 
확인버튼 누를시 메인페이지로 이동해야함
-->

	<form action="">
		<div class="vocabularycontainer">
			<c:import
				url="/WEB-INF/views/kyunghwan/vocabularymodify/modifyhead.jsp"></c:import>
			<div>
				<!-- section 1 -->
				<!-- Text area 구역 -->
				<c:import
					url="/WEB-INF/views/kyunghwan/vocabularymodify/vocaeditorarea.jsp"></c:import>

				<!-- section 3 -->
				<!-- 리스트 추가하기 -->
				<c:import
					url="/WEB-INF/views/kyunghwan/vocabularymodify/listaddbutton.jsp"></c:import>

				<!-- section 4 -->
				<!-- submit 구역 -->
				<c:import
					url="/WEB-INF/views/kyunghwan/vocabularymodify/vocalistsubmit.jsp"></c:import>

			</div>
		</div>
	</form>

</body>
</html>