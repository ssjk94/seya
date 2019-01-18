<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 부트스트랩 css사용 -->
<link
	href="${pageContext.request.contextPath}/bower_components/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- 
	jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다)
	이게 자바스크립트보다 먼저와야함
	 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 부트스트랩의 자바 스크립트를 사용하겠다는 뜻 -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	
</head>
<body>
	<div style="margin-left: 30px;">
		<textarea id="vocaarea" class="form-control" rows="6" placeholder="단어1 뜻1&#13;&#10;단어2 뜻2" style="width: 720px;"></textarea>
	</div>
</body>
	<!-- TextArea Tab키 먹히게하는 함수 -->
	<script type="text/javascript">
	$(function(){
	    $('#vocaarea').keydown(function(e){
	        if(e.keyCode == 9){
	            $(this).val($(this).val()+' ')
	            return false
	        }
	    });
	});
	</script>
</html>
<!-- style="margin-top: 10%; margin-right: 10%; margin-left: 10%;margin-bottom: 30px;" -->