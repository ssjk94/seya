<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
h3.gaeyeya {
    font-size: 22px;
    text-align: center;
    margin-top : 0px;
    margin-bottom: 15px;
}

p.side-cont {
    padding: 10px;
    text-align: center;
}

.direcIcon {
	color: #fff;
	font-size: 20px;
}

.user-panel>.img-circle {
	
    border: 1px solid white;
    width: 160px;
    height: 160px;
}
</style>

<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">

	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">

		<!-- Sidebar user panel (optional) -->
		<div class="user-panel">
			<img
				src="/upload/profile/${urlPathVo.userImage}"
				class="img-circle" alt="User Image">
		</div>

		<div class="sidebar-content">
			<h3 class="gaeyeya">${urlPathVo.nickName}</h3>
			<div class="profile-content">
				<p class="side-cont">${urlPathVo.userContent}</p>

			</div>
		</div>
		<!-- search form (Optional) -->
		<!-- <form action="#" method="get" class="sidebar-form">
					<div class="input-group">
						<input type="text" name="q" class="form-control"
							placeholder="Search..."> <span class="input-group-btn">
							<button type="submit" name="search" id="search-btn"
								class="btn btn-flat">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
				</form> -->
		<!-- /.search form -->
		
		<script type="text/javascript">
		
			function refreshMemList(){

				location.reload();
			};
		
			function directoryInsert(sessionId) {
				console.log(sessionId);	
				
				var directoryName = prompt("폴더이름을 설정해주세요","")
				
				//프롬프트 확인 눌렀을때
				if(directoryName!=null){
					
					$.ajax({
						url : "${pageContext.request.contextPath}/${URLId}/directoryinsert",
						type : "post",
			 //			contentType : "application/json",
						data : {URLId: sessionId,directoryName: directoryName},
						dataType : "html",
						success : function(){
						/*성공시 처리해야될 코드 작성*/
							refreshMemList();
						},
						error : function(XHR, status, error) {
						console.error(status+" : "+error);
						}
					});
					
				}
				
			}
			
			function directoryDelete(directoryNo) {
				console.log(directoryNo);
				
				$.ajax({
					url : "${pageContext.request.contextPath}/${URLId}/directorydelete",
					type : "post",
		 //			contentType : "application/json",
					data : {directoryNo: directoryNo},
					dataType : "html",
					success : function(){
					/*성공시 처리해야될 코드 작성*/
						refreshMemList();
					},
					error : function(XHR, status, error) {
					console.error(status+" : "+error);
					}
				});
				
			}
			
			function directoryUpdate(directoryNo,beforeDirectoryName) {
				console.log(directoryNo,beforeDirectoryName);
				var directoryName = prompt("수정할 폴더명을 입력해주세요",beforeDirectoryName);
				
				//프롬프트 확인 눌렀을때
				if(directoryName!=null){
					
					$.ajax({
						url : "${pageContext.request.contextPath}/${URLId}/directoryupdate",
						type : "post",
			 //			contentType : "application/json",
						data : {directoryNo: directoryNo,directoryName: directoryName},
						dataType : "html",
						success : function(){
						/*성공시 처리해야될 코드 작성*/
							refreshMemList();
						},
						error : function(XHR, status, error) {
						console.error(status+" : "+error);
						}
					});
					
				}
				
			}
		
		</script>
		
		<!-- 전체 단어장 보여줄꺼 -->
		<ul class="sidebar-menu" data-widget="tree">
			<li class="header">
				<c:choose>
				<c:when test="${listview eq 0}">
				<form action="${pageContext.request.contextPath}/${URLId}/list" method="get">
					<button type="submit" style="background-color:transparent;  border:0px transparent solid ">
						<span>전체 단어장</span>
					</button>
				
				
				<span class="glyphicon glyphicon-plus direcIcon" aria-hidden="true" 
				onclick="directoryInsert('${sessionScope.id}')"></span>
				
				<span class="glyphicon glyphicon-remove direcIcon" aria-hidden="true" 
				onclick="directoryDelete(55)"></span>
				
				<span class="glyphicon glyphicon-pencil direcIcon" aria-hidden="true" 
				onclick="directoryUpdate(55,'수정전 디렉')"></span>
				
				</form>
				</c:when>
				<c:otherwise>
				<form action="${pageContext.request.contextPath}/${URLId}" method="get">
					<button type="submit" style="background-color:transparent;  border:0px transparent solid ">
						<span>전체 단어장</span>
					</button>
				</form>
				</c:otherwise>
				</c:choose>
			</li>
		</ul>
		
		
		<!-- Sidebar Menu -->
		<c:forEach items="${requestScope.directoryList}" var="wordbookVo">
		<ul class="sidebar-menu" data-widget="tree">
			<li class="header">
			
				<!-- 디렉토리 번호를 넘기려고함 -->
				<c:choose>
				<c:when test="${listview eq 0}">
				<form action="${pageContext.request.contextPath}/${URLId}/list" method="get">
					<input name="directoryNo" type="hidden" value="${wordbookVo.directoryNo}">
					<button type="submit" style="background-color:transparent;  border:0px transparent solid ">
						<span>${wordbookVo.directoryName}</span>
					</button>
				</form>
				</c:when>
				<c:otherwise>
				<form action="${pageContext.request.contextPath}/${URLId}" method="get">
					<input name="directoryNo" type="hidden" value="${wordbookVo.directoryNo}">
					<button type="submit" style="background-color:transparent;  border:0px transparent solid ">
						<span>${wordbookVo.directoryName}</span>
					</button>
				</form>
				</c:otherwise>
				</c:choose>
			</li>
		</ul>
		</c:forEach>
		
			<!-- 	<li class="treeview"><a href="#"><i class="fa fa-fw fa-book"></i>
							<span>Multilevel</span> <span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
						</span> </a>
						<ul class="treeview-menu">
							<li><a href="#">Link in level 2</a></li>
							<li><a href="#">Link in level 2</a></li>
						</ul></li>  네비게이션 열고 닫으면서 이용할수있는것 일단 주석-->
		
		<%-- <ul class="sidebar-menu" data-widget="tree">
			<li class="header">랭킹</li>
			<!-- Optionally, you can add icons to the links -->
			<li class="active"><a href="${pageContext.request.contextPath}/rankpage"><i class="fa fa-fw fa-book"></i>
					<span>플래시 카드</span></a></li>
					<li><a href="#"><i class="fa fa-fw fa-book"></i> <span>랜덤 게임</span></a></li>
					<li><a href="#"><i class="fa fa-fw fa-book"></i> <span>짝 맞추기</span></a></li>
			
			<!-- 	<li class="treeview"><a href="#"><i class="fa fa-fw fa-book"></i>
							<span>Multilevel</span> <span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
						</span> </a>
						<ul class="treeview-menu">
							<li><a href="#">Link in level 2</a></li>
							<li><a href="#">Link in level 2</a></li>
						</ul></li>  네비게이션 열고 닫으면서 이용할수있는것 일단 주석-->
		</ul>
		<!-- /.sidebar-menu -->
		<!-- 다녀간사람 목록 띄우기 --> --%>
	
		<!-- 다녀간사람 목록 띄우기 -->
	</section>
	<!-- /.sidebar -->
</aside>