<%@ page language="java" contentType="text/html;" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
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



<!-- TextArea Tab키 먹히게하는 함수 -->


</head>


<body>

	<!-- 
클릭하는 단어장이 무엇인지 알아야함 
확인버튼 누를시 메인페이지로 이동해야함
-->
	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<form action="">
			<div class="vocabularycontainer">
				<c:import
					url="/WEB-INF/views/kyunghwan/vocabularymodify/modifyhead.jsp"></c:import>
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
			</div>
		</form>
	</div>
	<!-- /.content-wrapper -->
</body>
