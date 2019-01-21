<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
=======
<%@ page language="java" contentType="text/html;" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
>>>>>>> refs/remotes/origin/master
<head>
<<<<<<< HEAD
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


<!-- favinco오류 제거용 -->
<link rel="shortcut icon" href="">
	<style type="text/css">
	
		.vocabularycontainer{
			width: 780px;
			max-width: none !important;
		}			
		.vocabu{
		
			border: 2px solid #dd4b39;
			padding: 10px 20px 10px 20px;
		}
		.vocamodifybtn{
		width: 100%;
		}
		.page{
			padding-left: 250px;
		}
		#vocaarea{
		border-color: rgba(221, 75, 57,0.5);
		}
	</style>
	
=======
<style type="text/css">
.vocabularycontainer {
	width: 780px;
	max-width: none !important;
	margin: auto
}

.vocabu {
	border: 2px solid #dd4b39;
	padding: 10px 20px 10px 20px;
}

.vocamodifybtn {
	width: 100%;
}
</style>
>>>>>>> refs/remotes/origin/master



<!-- TextArea Tab키 먹히게하는 함수 -->


</head>


<body>

	<!-- 
클릭하는 단어장이 무엇인지 알아야함 
확인버튼 누를시 메인페이지로 이동해야함
-->
<<<<<<< HEAD

	<form action="">
		<div class="vocabularycontainer">
			<div>
=======
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<form action="">
			<div class="vocabularycontainer">
				<c:import
					url="/WEB-INF/views/kyunghwan/vocabularymodify/modifyhead.jsp"></c:import>
>>>>>>> refs/remotes/origin/master
				<div>
					<div>
						<!-- section 1 -->
						<!-- Text area 구역 -->
						<c:import
							url="/WEB-INF/views/kyunghwan/vocabularymodify/vocaeditorarea.jsp"></c:import>
					</div>
					<div>
						<!-- section 3 -->
						<!-- 리스트 추가하기 -->
						<c:import
							url="/WEB-INF/views/kyunghwan/vocabularymodify/listaddbutton.jsp"></c:import>
					</div>
					<div>
						<!-- section 4 -->
						<!-- submit 구역 -->
						<c:import
							url="/WEB-INF/views/kyunghwan/vocabularymodify/vocalistsubmit.jsp"></c:import>
					</div>
				</div>
				<div class="vocabularycontainer page">
					<!-- 페이지 네이션 -->
					<c:import
						url="/WEB-INF/views/kyunghwan/vocabularymodify/pagenation.jsp"></c:import>
				</div>
			</div>
		</form>
	</div>
	<!-- /.content-wrapper -->
</body>

<!-- 단어추가 페이지나오게하는 함수 -->
<script type="text/javascript">

	$("#addvocalist").off("click").on("click", function(e){
		
		var div = document.createElement('div');

	    div.innerHTML = document.getElementById('voca2').innerHTML;

	    document.getElementById('vocalist').appendChild(div);

		//추가되는 리스트 확인창	    
	    console.log(document.getElementById('vocalist').innerHTML);
	    
	});
	
	

</script>
<!-- 탭키 먹히게하는 함수 -->
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
