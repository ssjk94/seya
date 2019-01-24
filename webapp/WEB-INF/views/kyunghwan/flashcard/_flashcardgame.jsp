<%@page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<style type="text/css">

.flashcardcontainer{
width: 820px;
height: 450px;
}

.flashcardbox{
	height: 370px;
	background-color: #fff;
    box-shadow: 1px 1px 1px 1px #ddd;
    border: 2px solid rgba(221, 221, 221, 0.2);
    border-style: ridge;
    font-size: 72px;
	text-align: center;
	padding-top: 150px;    
}

.flashcontrolbox{
height: 85px;
margin-top:2px;
background-color: #ffdfdf;
padding-left: 310px;
}
.img-circle {
  border-radius: 50%;
  width: 60px;
  height: 60px;
  background-color: #fff;
}
.gly-size{
	font-size: 55px;
}
.chkbox-size{
	width: 25px;
	height: 25px;
	font-size: 25px;
}
.flashcardattach{
float: left;
}
.flashcardclear{
clear: both;
}
.modiandchk{
margin-left: 30px;
margin-right: 30px;
}
.flashbtn{
cursor: pointer;
}

#leftbtn.img-circle:hover{
	background-color: #e7ff09;
}

#rightbtn.img-circle:hover{
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
		<c:import url="/WEB-INF/views/kyunghwan/flashcard/flashcardcontent.jsp"></c:import>
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


<script type="text/javascript">

var prev = 'prev';
var pre = 'pre';

	$("#wm-over").on("click", function(e) {

		location.href="flashcard?param="+'even';
	});
	
	$("chkbox").on("click",function(e){
		
	})
	
	$("#leftbtn").on("click",function(e){

		location.href = 'flashcard?param='+prev;
	})
	
	$("#rightbtn").on("click",function(e){
		
		location.href = 'flashcard?param='+pre;

	})
		
</script>





</html>