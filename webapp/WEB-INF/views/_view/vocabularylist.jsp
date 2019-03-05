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
	margin-left: 15px;
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
	font-size: 22px;
}

.mean-textbox {
	border: 1px solid #ffffff;
	border-bottom: 2px solid lavender;
	width: 100%;
	text-align: center;
	font-size: 22px;
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

.wordbookname {
	margin-bottom: 10px;
	font-size: 25px;
	width: 94%;
}

input:disabled {
	background-color: #ffffff;
}

.vocamodi-btn {
	width: 100px;
	height: 30px;
	margin-left: 10px;
}

.btn-block+.btn-block {
	margin-top: 50px;
}

.btn-padding {
	padding-right: 5px;
}

.deleteWord button{
	visibility: hidden;
}

.deleteWord:hover button {
	font-size: 25px;
	background-color: #fff;
    border: 0;
	visibility: visible;
}
#pagenation{
	margin: 15px 0 0 38%;
}
.wordbook{
	border-top: 3px solid #d2d6de;
	margin: 10px 0 0 0;
	padding: 15px 0 0 0;
}
.wordbook .wordbookname{
	border: none;
	border-bottom: 1px solid darkgray;
}
.wordbook .pull-left{
	margin-left: 0px;
	padding-top: 5px;
}
#btnContent .pull-left{
	margin-left: 0px;
}
.disabled{
	pointer-events: none;
}

/*
아웃라인을 없애면 버튼같은 푸른색 테두리 없앤다
*/
*:focus {
	outline: none;
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
						<li><a href="${pageContext.request.contextPath}/${URLId}"><i class="fa fa-dashboard"></i> Home</a></li>
						<li>VocaList</li>
					</ol>
				</div>
			</section>

			<!-- Main content -->
			<section class="content container">
				<!-- 단어장 수정 버튼 과 페이지 설명-->
				<div id="btnContent">
					<!-- 페이지 설명 -->
					<div class="pull-left fa-key">단어 리스트</div>
					<!-- 단어 수정 버튼 -->
					<c:choose>
						<c:when test="${URLId eq sessionScope.id}">
							<!-- 단어 업데이트 버튼 -->
							<div class="submit">
								<button class="pull-right btn btn-sm bg-navy vocamodi-btn">확인</button>
							</div>
								<!-- 단어 추가 버튼 -->
							<form name="addVoca" action="${pageContext.request.contextPath}/${URLId}/addvocabulary">
							<input name="wordbookName" type="hidden" value="">
							<input name="wordbookNo" type="hidden" value="${wordbookNo}">
								<div>
									<button id="addVoca" type="button" class="pull-right btn btn-sm bg-navy vocamodi-btn">
										단어 추가
									</button>
								</div>
							</form>
						</c:when>
						<c:otherwise>
							
							<!-- 갤러리로 튕기기 -->
							<div>
								<a href="${pageContext.request.contextPath}/${URLId}">
									<button class="pull-right btn btn-sm bg-navy vocamodi-btn">단어장으로</button>
								</a>
							</div>
							<c:if test="${sessionScope.id ne null}">
								<!-- 공유 버튼 -->
								<div class="share">
									<button class="pull-right btn btn-sm bg-navy vocamodi-btn">퍼가기</button>
								</div>
							</c:if>
						</c:otherwise>
					
					
					
					</c:choose>
				</div>
				<!-- 단어장 body -->
				
				<div style="clear: both;"></div>
				
				<form name="updateWord" action="${pageContext.request.contextPath}/${URLId}/wordmodify">
					<input type="hidden" name="wordbookName" value="">
					<input type="hidden" name="wordName" value="">
					<input type="hidden" name="wordbookNo" value="${wordbookNo}">
				</form>

				<div class="wordbook">				
					<!-- 단어장 제목나오는 칸 -->
					<div>
						<div class="pull-left">제목 : &nbsp;&nbsp;</div>
						<c:choose>
							<c:when test="${URLId eq sessionScope.id}">
								<!-- 자기것이면 단어장이름 수정이 가능함 -->
								<div>
									<input type="text" name="wordbookName" class="wordbookname" value="${wordbookName}">
								</div>
							</c:when>
							<c:otherwise>
								<!-- 자기것아니면 오직 읽기만 -->
								<div>
									<input type="text" name="wordbookName" class="wordbookname" value="${wordbookName}" readonly="readonly">
								</div>
							</c:otherwise>
						</c:choose>
						
					</div>

					<c:choose>
						<c:when test="${empty vocaList}">
							<!-- 단어장이 비었을 경우 -->
							<div class="vocaborder">
								<p align="center">"단어장이 비어있습니다."</p>
							</div>
						</c:when>
						
						<c:when test="${URLId eq sessionScope.id}">
							<!-- 단어장안에 단어가 있는데 자기것일 경우 -->
							<c:forEach items="${requestScope.vocaList}" var="vocaList">
								<!-- 실질적으로 반복되는 단어 리스트 칸 -->
								<!-- 복사를 해야하는 div -->
								<div class="vocaborder">
									<!-- word -->
									<div class="vocafloat vocawordsection">
										<!-- 단어 -->
										<div class="vocafloat">
											<p>단어 :</p>
										</div>
										<!-- 텍스트박스 -->
										<div class="vocafloat textgapbox wordClass">
											<input type="hidden" name="wordNo" class="wordNo" value="${vocaList.wordNo}">
											<input type="text" name="wordAName" class="word-textbox" value="${vocaList.wordName}">
										</div>
									</div>
									<!-- mean -->
									<div class="vocafloat wordgapmean vocawordsection">
										<!-- 뜻 -->
										<div class="vocafloat">
											<p>뜻 :</p>
										</div>
										<!-- 민박스 -->
										<div class="vocafloat textgapbox meanClass">		
											<input type="hidden" name="wordNo" class="wordNo" value="${vocaList.wordNo}">			
											<input type="text" name="meanAName" class="mean-textbox"value="${vocaList.meanName}">
										</div>
									</div>
									<!-- 삭제 아이콘이 들어가야할 곳 -->
									<div class="deleteWord">
										<input type="hidden" name="wordNo" class="wordNo" value="${vocaList.wordNo}">
										<button type="button">
											<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
										</button>
									</div>
								</div>
								<!-- 복사를 해야하는 div -->
							</c:forEach>
						</c:when>
						
						<c:otherwise>
							<!-- 단어장에 단어가 있지만 자기것이 아닐경우 -->
							<c:forEach items="${requestScope.vocaList}" var="vocaList">
								<!-- 실질적으로 반복되는 단어 리스트 칸 -->
								<!-- 복사를 해야하는 div -->
								<div class="vocaborder">
									<!-- word -->
									<div class="vocafloat vocawordsection">
										<!-- 단어 -->
										<div class="vocafloat">
											<p>단어 :</p>
										</div>
										<!-- 텍스트박스 -->
										<div class="vocafloat textgapbox wordClass">
											<input type="hidden" name="wordNo" class="wordNo" value="${vocaList.wordNo}">
											<input type="text" name="wordAName" class="word-textbox" value="${vocaList.wordName}" readonly="readonly">
										</div>
									</div>
									<!-- mean -->
									<div class="vocafloat wordgapmean vocawordsection">
										<!-- 뜻 -->
										<div class="vocafloat">
											<p>뜻 :</p>
										</div>
										<!-- 민박스 -->
										<div class="vocafloat textgapbox meanClass">		
											<input type="hidden" name="wordNo" class="wordNo" value="${vocaList.wordNo}">			
											<input type="text" name="meanAName" class="mean-textbox"value="${vocaList.meanName}" readonly="readonly">
										</div>
									</div>
								</div>
								<!-- 복사를 해야하는 div -->
							</c:forEach>
						</c:otherwise>
					</c:choose>
					
					<form action="${pageContext.request.contextPath}/${URLId}/wordmodify">
						
					</form>
					

						

					세션:${ sessionScope.id}
					url:${URLId }
					<!-- 페이지 네이션 -->
					<form name="pagenationForm" action="${pageContext.request.contextPath}/${URLId}/vocabularylist">
						<input type="hidden" name="wordbookNo" value="">
						<input type="hidden" name="wordbookName" value="">
						<input type="hidden" name="index" value="">
					</form>
					<div id="pagenation">
						<ul class="pagination pagination-sm no-margin">
							<li><a href="#">«</a></li>
							<c:forEach var="i" begin="${pagingVo.pageStartNum}" end="${pagingVo.pageLastNum}">
								<li><a href="#"><c:out value="${i}" /></a></li>
							</c:forEach>
							<li><a href="#">»</a></li>
		              </ul>
					</div>
					<!-- 확인 버튼 -->
					<c:choose>
						<c:when test="${URLId eq sessionScope.id}">
							<div class="submit">
								<button class="pull-right btn btn-sm bg-navy vocamodi-btn">확인</button>
							</div>
						</c:when>
						<c:otherwise>
							<div>
							<!-- 메인으로 걸어주기 -->
								<a href="${pageContext.request.contextPath}/${URLId}">
									<button class="pull-right btn btn-sm bg-navy vocamodi-btn">메인으로</button>
								</a>
							</div>
						</c:otherwise>
					</c:choose>					
				</div>
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
var wordNo=5;
var word;


$("#addVoca").on("click",function(){
	//바뀐 제목의 값이 히든값으로 저장하는 문장
	
	var wordbookName=$(".wordbook").find(".wordbookname").val();
	document.addVoca.wordbookName.value = wordbookName;
	document.addVoca.submit();
});

$(".submit>button").on("click",function(){
	
	if(wordAndMean != "" || $(".wordbook").find($('input[name="wordbookName"]')).val() != ""){
		
		document.updateWord.wordName.value = wordAndMean;
		document.updateWord.wordbookName.value = $(".wordbook").find($('input[name="wordbookName"]')).val();
		document.updateWord.submit();
	}
});


$(".wordClass").focusout(function(){
	
	wordNo=$(this).find($('input[name="wordNo"]')).val();
	word = $(this).find($('input[name="wordAName"]')).val();
	var str = wordNo+" "+'0'+" "+word+"\n";
	wordAndMean = wordAndMean + str;
});

$(".meanClass").focusout(function(){
	wordNo=$(this).find($('input[name="wordNo"]')).val();
	word = $(this).find($('input[name="meanAName"]')).val();
	var str = wordNo+" "+'1'+" "+word+"\n";
	wordAndMean = wordAndMean + str;
	console.log(wordAndMean);
});

$(".deleteWord>button").on("click",function(){
	
	wordNo=$(this).prev().val();
	
	 $.ajax({
		    url : "${pageContext.request.contextPath}/${URLId}/deleteWord",
		    type : "post",
//		    contentType : "application/json",
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
});

$(".share").on("click",function(){
	var wordbookNo=${wordbookNo};
	
	$.ajax({
		url : "${pageContext.request.contextPath}/${URLId}/share",
		type : "post",
//			contentType : "application/json",
		data : {wordbookNo: wordbookNo},
		dataType : "html",
		success : function(){
		/*성공시 처리해야될 코드 작성*/
			alert('가져갔어요');
			refreshMemList();
		},
		error : function(XHR, status, error) {
		console.error(status+" : "+error);
		}
	});	
});


function refreshMemList(){

	location.reload();
};

$(document).ready(function() {
	var allPageNum = $(".pagination").find("a").text();
	var nowPageIndex=allPageNum.indexOf("${pagingVo.index}") + 1;
	
	$(".pagination li:nth-child("+nowPageIndex+")").addClass("active");
	
	//몇번째 자식이냐에 포커스만 주면 끝
	
	if(${pagingVo.index}==1){
		$(".pagination>li:first").find("a").addClass("disabled");
	}
	if(${pagingVo.index}==${pagingVo.pageLastNum}){
		$(".pagination>li:last").find("a").addClass("disabled");
	}
});


$(".pagination").on("click","a",function page(){
	var wordbookName='${wordbookName}';
	var wordbookNo = ${wordbookNo};
	if($(this).text()=="≪"){
		document.pagenationForm.wordbookName.value=wordbookName;
		document.pagenationForm.wordbookNo.value=wordbookNo;
		document.pagenationForm.index.value=${pagingVo.index}-1;
	}else if($(this).text()=='≫'){
		document.pagenationForm.wordbookName.value=wordbookName;
		document.pagenationForm.wordbookNo.value=wordbookNo;
		document.pagenationForm.index.value=${pagingVo.index}+1;
	}else{
		nowpageNum=$(this).text();
		document.pagenationForm.wordbookName.value=wordbookName;
		document.pagenationForm.wordbookNo.value=wordbookNo;
		document.pagenationForm.index.value = nowpageNum;
	}
	document.pagenationForm.submit();
	
});


</script>


</html>