<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>



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


.vocalistbox{
	padding-left: 20px;
	padding-right: 20px;
	padding-top: 20px;
	padding-bottom: 30px;
	border: 5px double burlywood;
	width:820px;
}
.vocafloat{
	float: left;
}
.vocaclear{
	clear: both;
}
.voca-textbox{
	border: 1px solid #ffffff;
    border-bottom: 2px solid #dd4b39;
    width: 100%;
    text-align: center;
}
input:disabled {
    background-color: #ffffff;
}
.textgapbox{
margin-left: 5px;
}
p{
	padding-top: 5px;
}
.wordgapmean{
	margin-left: 20px;
}
.vocaborder{
	border: 5px double #ddd;
    width: 100%;
    height: 70px;
    border-radius: 10px;
    padding-top: 18px;
    padding-left: 15px;
	margin-top: 5px;
}
.vocawordsection{
	width:360px;
	float:left;
}
.vocafloat .textgapbox{
	width: 88%;
}

</style>
</head>


	<!-- 단어장 리스트 가장 바깥 상자 -->
	<div class="vocalistbox">
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
					<input type="text" class="voca-textbox">
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
					<input type="text" class="voca-textbox">
				</div>
			</div>
		</div>




		<!-- 단어장 리스트 가장 바깥 상자 -->
		<div class="vocaborder">
			<!-- word -->
			<div class="vocafloat vocawordsection">
				<!-- 단어 -->
				<div class="vocafloat">
					<p>단어 :</p>
				</div>
				<!-- 텍스트박스 -->
				<div class="vocafloat textgapbox">
					<input type="text" class="voca-textbox">
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
					<input type="text" class="voca-textbox">
				</div>
			</div>
		</div>







	</div>

<!-- 더블클릭시 수정이 가능하게끔 변경 -->
<script type="text/javascript">
</script>
<!-- text 감지 스크립트-->
