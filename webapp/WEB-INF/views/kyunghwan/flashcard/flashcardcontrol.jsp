<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- control box -->
	<div class="panel-footer flashcontrolbox">

		<!-- Left button -->
		<div id="leftbtn" class="img-circle-btn flashcardattach" role="button">
			<span class="glyphicon glyphicon-chevron-left gly-size"
				aria-hidden="true"></span>
		</div>

		<!-- Check and Modify -->
		<div class="flashcardattach modiandchk">
			<!-- Check -->
			<div>
				<input class="chkbox-size" type="checkbox" id="chkbox"> <label
					for="chkbox"><span></span></label>
			</div>
			<!-- Modify -->
			<div class="chkbox-size" id="chkbox">
				<span class="glyphicon glyphicon glyphicon-pencil"
					aria-hidden="true"></span>
			</div>
		</div>
		<!-- Right button -->
		<div id="rightbtn" class="img-circle-btn flashcardattach flashbtn">
			<span class="glyphicon glyphicon-chevron-right gly-size"
				aria-hidden="true"></span>
		</div>

		<!-- float 제거용 -->
		<div class="flashcardclear"></div>

	</div>
</body>
</html>