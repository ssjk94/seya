<%@page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
.flashcardcontainer {
	width: 790px;
	height: 450px;
	margin-left: 15px;
}

.flashcardbox {
	height: 370px;
	background-color: #fff;
	box-shadow: 1px 1px 1px 1px #ddd;
	border: 2px solid rgba(221, 221, 221, 0.2);
	border-style: ridge;
	font-size: 72px;
	text-align: center;
	padding-top: 150px;
}

.flashcontrolbox {
	height: 85px;
	margin-top: 2px;
	background-color: rgb(229, 85, 67);
	padding-left: 295px;
}

.img-circle-btn {
	border-radius: 50%;
	width: 60px;
	height: 60px;
	background-color: #fff;
}

.gly-size {
	font-size: 55px;
}

.chkbox-size {
	width: 25px;
	height: 25px;
	font-size: 25px;
}

.flashcardattach {
	float: left;
}

.flashcardclear {
	clear: both;
}

.modiandchk {
	margin-left: 30px;
	margin-right: 30px;
}

.flashbtn {
	cursor: pointer;
}

#leftbtn.img-circle-btn:hover {
	background-color: #e7ff09;
}

#rightbtn.img-circle-btn:hover {
	background-color: #e7ff09;
}
</style>

<!-- 테두리 마지막에 없애야함 -->
</head>
<body>

	<!-- width 790px height 450-->
	<div class="panel panel-default flashcardcontainer">
		<!-- content box -->
		<div id="wm-over" role="button" class="panel-body flashcardbox">
			<c:import
				url="/WEB-INF/views/kyunghwan/flashcard/flashcardcontent.jsp"></c:import>
		</div>
		<!-- control box -->
		<div class="panel-footer flashcontrolbox">

			<!-- Left button -->
			<c:import url="/WEB-INF/views/kyunghwan/flashcard/leftbtn.jsp"></c:import>

			<!-- Check and Modify -->
			<div class="flashcardattach modiandchk">
				<!-- Check -->
				<c:import url="/WEB-INF/views/kyunghwan/flashcard/chkbtn.jsp"></c:import>
				<!-- Modify -->
				<c:import url="/WEB-INF/views/kyunghwan/flashcard/modifybtn.jsp"></c:import>
			</div>
			<!-- Right button -->
			<c:import url="/WEB-INF/views/kyunghwan/flashcard/rightbtn.jsp"></c:import>


			<!-- float 제거용 -->
			<div class="flashcardclear"></div>


		</div>
	</div>
</body>
</html>