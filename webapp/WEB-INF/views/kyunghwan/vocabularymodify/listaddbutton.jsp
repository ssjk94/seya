<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
		.vocabu{
		
			border: 2px solid #dd4b39;
			padding: 10px 20px 10px 20px;
		}
		
	</style>
	
</head>
<body>

	<!-- 단어 리스트 추가할 버튼  style="margin-top: 50px;margin-left: 20%;margin-right: 20%;" -->
	<div style="width: 200px; margin-left: 550px; padding-top: 20px;">
		<button id="addvocalist" type="button" class="btn btn-warning active" style="width: 200px;background-color: #dd4b39">단어 추추</button>
	</div>
	
	<!-- 단어 리스트 들어가는 div -->

	<section id="vocalist">
	
		<div id="voca2">
		<div>
			<div style="clear: both;margin-left: 30px; padding-top: 20px;">
			
				<div style="float: left;  padding-right: 2%;">
					<h5>단어</h5>
				</div>
				<div style="float: left; width: 20%;">
					<input type="text" class="form-control" name="vo" placeholder="ex) apple" style="width: 100%;">
				</div>
				<div style="float: left; padding-left: 5%;  padding-right: 2%;">
					<h5>뜻</h5>
				</div>
				<div style="float: left; width: 60%;">
					<input type="text" class="form-control" name="ca" placeholder="ex) 사과" style="width: 100%;">
				</div>
				
				</div>
			</div>
		</div>
		
	</section>			
				
</body>

<script type="text/javascript">

	$("#addvocalist").off("click").on("click", function(e){
		
		var div = document.createElement('div');

	    div.innerHTML = document.getElementById('voca2').innerHTML;

	    document.getElementById('vocalist').appendChild(div);

		//추가되는 리스트 확인창	    
	    console.log(document.getElementById('vocalist').innerHTML);
	    
	});
	
	

</script>

<script type="text/javascript">

	

</script>


</html>
	<!-- 
	 	<section id="vocalist" style="margin: auto;">

		<div id="voca2">
			<div style="clear: both; margin-top: 30px; padding-bottom: 30px;">
				<div style="float: left;margin-left: 10%;">
					<h5>단어</h5>
				</div>
				<div style="float: left; width: 15%;">
					<input type="text" class="form-control" placeholder="ex) apple" style="width: 100%;">
				</div>
				<div style="float: left;margin-left: 5%;">
					<h5>뜻</h5>
				</div>
				<div style="float: left;margin-right: 5%; width: 50%;">
					<input type="text" class="form-control" placeholder="ex) 사과" style="width: 100%;">
				</div>
			</div>
		</div>
	 -->