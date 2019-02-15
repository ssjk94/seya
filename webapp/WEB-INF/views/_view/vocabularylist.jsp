<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport">
<title>SeyaWord</title>
<!-- Tell the browser to be responsive to screen width -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/bower_components/Ionicons/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect. -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/dist/css/skins/skin-red-light.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
<style>
.ko-12 {
	font-family: Nanum Gothic, dotum, sans-serif;
	font-size: 12px;
}

.sidebar-list {
	list-style: none;
	margin: 0;
}

.sidebar-header, .sidebar-list li {
	white-space: nowrap;
}

.sidebar-box, .sidebar-list {
	overflow: hidden;
	padding: 10px 15px;
	line-height: 20px;
}

.sidebar-list .fa, .sidebar-list .glyphicon, .sidebar-list .ion {
	width: 20px;
}

.skin-blue .sidebar-menu>li.header {
	color: #4b646f;
	background: #1a2226;
}

.sidebar-box, .sidebar-list {
	overflow: hidden;
	padding: 10px 15px;
	line-height: 20px;
}

.sidebar-header {
	padding: 10px 25px 10px 15px;
	font-size: 12px;
	color: #ffffff;
	background: #1a2226;
}

.side-pad {
	pading: 10px;
	margin-bottom: 10px;
}

.sidebar-list .ko-12 {
	display: block;
}

.pull-center {
	margin-left: 62px;
}

.dropdown-menu .user-footer .pull-center {
	padding-left: 20px;
}

.gaeyeya {
	font-size: 22px;
	text-align: center;
}

.profile-content {
	text-align: center;
}

.side-cont {
	padding: 10px;
	text-align: center;
}

.btn-block {
	display: block;
	width: 50%;
	margin: auto;
}

.sidebar-content {
	padding: 10px;
}

.box-header>.box-tools {
	position: absolute;
	right: 20px;
	top: 10px;
}

.small-box .icon {
	-webkit-transition: all .3s linear;
	-o-transition: all .3s linear;
	transition: all .3s linear;
	position: absolute;
	top: -10px;
	right: 30px;
	z-index: 0;
	font-size: 90px;
	color: rgba(0, 0, 0, 0.15);
}

.small-box:hover {
	text-decoration: none;
	color: #dd4b39 !important
}

.fixed .content-wrapper, .fixed .right-side {
	padding-top: 85px;
}

.panel-primary {
	border-color: #000000;
	margin-top: 35px;
}

.content-header>.breadcrumb {
	position: static;
}

.panel-height {
	height: 400px
}

.modal-notline {
	border-top: 0px;
}

.gli-left {
	
}

.gli-right {
	
}

.gli-left .glyphicon-chevron-left {
	font-size: 80px;
	float: left;
	display: block;
	color: white
}

.gli-right .glyphicon-chevron-right {
	font-size: 80px;
	float: right;
	display: block;
	color: white
}

.gli-left:hover .glyphicon-chevron-left {
	font-size: 80px;
	float: left;
	display: block;
	color: black
}

.gli-right:hover .glyphicon-chevron-right {
	font-size: 80px;
	float: right;
	display: block;
	color: black
}

.fc-wrapper {
	margin-top: 110px;
}

p.flashcard-font {
	font-size: 80px;
	margin-top: -18px;
}

.breadcrumb {
	background-color: #ffffff;
	margin-top: -35px;
}

.vocalistbox {
	padding-top: 20px;
	padding-bottom: 30px;
	/* border: 5px double darkgray; */
	border-top: 5px double darkgray;
	width: 790px;
	border-bottom: 5px double darkgray;
	margin-left:15px;
}

.vocafloat {
	float: left;
}

.vocaclear {
	clear: both;
}

.word-textbox {
	border: 1px solid #ffffff;
	border-bottom: 2px solid lavender;
	width: 100%;
	text-align: center;
}
.mean-textbox {
	border: 1px solid #ffffff;
	border-bottom: 2px solid lavender;
	width: 100%;
	text-align: center;
}

input:disabled {
	background-color: #ffffff;
}

.textgapbox {
	margin-left: 5px;
}

p {
	padding-top: 5px;
}

.wordgapmean {
	margin-left: 20px;
}

.vocaborder {
	border: 5px double #ddd;
	width: 100%;
	height: 70px;
	border-radius: 10px;
	padding-top: 18px;
	padding-left: 15px;
	margin-top: 5px;
}

.vocawordsection {
	width: 350px;
	float: left;
}

.vocafloat .textgapbox {
	width: 88%;
}

.wordpadname {
	width: 300px;
	height: 50px;
	border: 2px #ffffff;
	border-bottom: solid 1.5px #dd4b39;
	margin-left: 15px;
	font-size: 25px;
	margin-bottom: 20px;
	margin-top: 10px;
	padding-left: 20px;
}

input:disabled {
	background-color: #ffffff;
}

.vocamodi-btn {
	width: 100px;
	height: 40px;
	float: right;
	margin-left: 10px;
	margin-top: 50px;
	margin-right: 12px;
}

.btn-block+.btn-block {
	margin-top: 50px;
}

.btn-padding{
	padding-right: 5px;
}
.deleteWord{
	
}
.deleteWord:hover{
	font-size: 25px;
	visibility: visible;
}
</style>

</head>

<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to get the
desired effect
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
<body class="hold-transition skin-red-light fixed">
	<div class="wrapper">

		<!-- header -->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
		<!-- /header -->

		<!-- navigation -->
		<c:import url="/WEB-INF/views/includes/navigation.jsp"></c:import>
		<!-- /navigation -->

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">

			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="path-name btn-padding">
					<!--단어장 경로 -->
					<ol class="breadcrumb">
						<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
						<li><a href="#">Tables</a></li>
						<li class="active">Simple</li>
					</ol>
					
					<form name="header" action="${pageContext.request.contextPath}/${URLId}/addvocabulary" method="get">
					<!--/단어장 경로 -->
					<input type="text" class="wordpadname" name="wordbookName"
						value="${wordbookName}">
						
					<button type="button"
						class="btn btn-danger btn-block btn-sm vocamodi-btn" onclick="updateSubmit();">확인</button>
					
					<input name="wordbookNo" type="hidden" value="${wordbookNo}">

						<button type="submit" class="btn btn-danger btn-block btn-sm vocamodi-btn">단어
							추가</button>
					</form>

				</div>
			</section>

			<!-- Main content -->
			<section class="content container">
				<form name="updateWM" action="${pageContext.request.contextPath}/${URLId}/wordmodify">
				<input type="hidden" name="wordbookNo" value="${wordbookNo}">
				<input type="hidden" name="wordName" value="">
				<input type="hidden" name="wordbookName" value="">
				
					<!-- 단어장 리스트 가장 바깥 상자 -->
					<div id="vocalistbox">
					<c:forEach items="${requestScope.vocaList}" var="vocaList">
						<!-- 복사를 해야하는 div -->
						<div class="vocaborder">
							<!-- word -->
							<div class="vocafloat vocawordsection">
								<!-- 단어 -->
								<div class="vocafloat">
									<p>단어 :</p>
								</div>
								<!-- 텍스트박스 -->
								<div class="vocafloat textgapbox">
									<input type="text" name="wordAName" class="word-textbox" value="${vocaList.wordName}"
									onblur="focusout(${vocaList.wordNo}, 0, this.value);">
								</div>
							</div>
							<!-- mean -->
							<div class="vocafloat wordgapmean vocawordsection">
								<!-- 뜻 -->
								<div class="vocafloat">
									<p>뜻 :</p>
								</div>
								<!-- 텍스트박스 -->
								<div class="vocafloat textgapbox">
									<input type="text" name="meanAName" class="mean-textbox" value="${vocaList.meanName}"
									onblur="focusout(${vocaList.wordNo}, 1, this.value);">
								</div>
							</div>
							<!-- 삭제 아이콘이 들어가야할 곳 -->
							<button type="button" class="deleteWord">
								<span class="glyphicon glyphicon-remove" aria-hidden="true" onclick="deleteWord(${vocaList.wordNo})"></span>
							</button>
						</div>
						<!-- 복사를 해야하는 div -->
					</c:forEach>


					</div>
					<button type="button"
						class="btn btn-danger btn-block btn-sm vocamodi-btn" onclick="updateSubmit();">확인</button>
					</form>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		<!-- footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		<!-- /footer -->

	</div>
	<!-- ./wrapper -->



	<!-- REQUIRED JS SCRIPTS -->

	<!-- jQuery 3 -->
	<script
		src="${pageContext.request.contextPath}/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script
		src="${pageContext.request.contextPath}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- AdminLTE App -->
	<script
		src="${pageContext.request.contextPath}/dist/js/adminlte.min.js"></script>

	<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>

<script type="text/javascript">
//새로고침

var wordAndMean="";

function refreshMemList(){

	location.reload();
};

	function updateSubmit() {
		//제목 밸류 받고
		//컨텐츠 밸류 받고
		//섭밋 실행문 실행
		if(wordAndMean != "" || document.header.wordbookName.value != ""){
			//워드와 민의 일정한 값
			document.updateWM.wordName.value = wordAndMean;
			//바뀐 제목의 값이 히든값으로 저장하는 문장
			document.updateWM.wordbookName.value = document.header.wordbookName.value;
			document.updateWM.submit();
		}else{
			location.href = "/${URLId}";
		}
	}
		function focusout(wordNo,seperator,word) {
	
			var arr = wordNo+" "+seperator+" "+word+"\n";
			
			wordAndMean = wordAndMean + arr;
			console.log(arr);
			console.log(wordAndMean)
			
			
		}

	function deleteWord(wordNo) {
		console.log(wordNo);
		
		$.ajax({
			url : "${pageContext.request.contextPath}/${URLId}/deleteWord",
			type : "post",
 //			contentType : "application/json",
			data : {wordNo: wordNo},
			dataType : "html",
			success : function(){
			/*성공시 처리해야될 코드 작성*/
				refreshMemList();
			},
			error : function(XHR, status, error) {
			console.error(status+" : "+error);
			}
		});
	};
</script>


</html>