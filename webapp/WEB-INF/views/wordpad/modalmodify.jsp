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

<title>Insert title here</title>

<!-- ajax -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- 부트스트랩의 자바 스크립트를 사용하겠다는 뜻 -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>

</head>
<body>
	<!-- 누르면 모달이 실행되는 버튼 -->
	<div class="jumbotron">
		<div class="container">
			<h1>Hello, world!</h1>
			<p>This is a simple hero unit, a simple jumbotron-style component
				for calling extra attention to featured content or information.</p>
			<p>
				<a class="btn btn-warning btn-lg" role="button" data-toggle="modal"
					data-target="#testModal">텍스트로 입력하기</a>
			</p>
		</div>
	</div>

	<!-- 모달 나오기전 값 -->

	<div class="modal" id="testModal" tabindex="-1" role="dialog">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<!-- 모달 헤더 들어갈값 -->
				<div class="modal-body">
					<h3>Editor</h3>
				</div>
				{% endblock %} {% block modal-footer %}
				<!-- placeholder 탈출 ==>&#13;&#10; -->
				<textarea id="textarea" class="form-control" rows="6"
					placeholder="단어1 뜻1&#13;&#10;단어2 뜻2"></textarea>

				<div class="modal-footer">
					<button type="button" class="btn btn-primary save"
						data-dismiss="modal">Save</button>
					<button type="button" class="btn" data-dismiss="modal">Close</button>
				</div>
				{% endblock %} {% block end-footer %}
			</div>
		</div>
	</div>
	{% endblock %}

</body>

<!-- 저장버튼 눌렀을때 값이 나오는지 확인하는 함수 -->
<script type="text/javascript">
	$(".save").on("click", function() {
		console.log($("#textarea").val())
	})
</script>

<!-- TextArea Tab키 먹히게하는 함수 -->
<script type="text/javascript">
	$(function() {
		$('#textarea').keydown(function(e) {
			if (e.keyCode == 9) {
				$(this).val($(this).val() + ' ')
				return false
			}
		});
	});
</script>

</html>