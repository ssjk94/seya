<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
h3.gaeyeya {
    font-size: 22px;
    text-align: center
}

p.side-cont {
    padding: 10px;
    text-align: center
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
		
		<!-- 전체 단어장 보여줄꺼 -->
		<ul class="sidebar-menu" data-widget="tree">
			<li class="header">
				<c:choose>
				<c:when test="${listview eq 0}">
				<form action="${pageContext.request.contextPath}/${URLId}/list" method="get">
					<button type="submit" style="background-color:transparent;  border:0px transparent solid ">
						<span>전체 단어장</span>
					</button>
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
		<div class="sidebar-misc">
			<div class="sidebar-header">GUEST LIST</div>
			<ul class="sidebar-menu" data-widget="tree">
				<ul class="sidebar-list ko-12">
					<li class="side-pad"><i class="fa fa-circle-o green"></i> <span
						class="center">다녀간사람</span></li>
					<li class="side-pad"><i class="fa fa-circle-o green"></i> <span
						class="center">다녀간사람</span></li>
					<li class="side-pad"><i class="fa fa-circle-o green"></i> <span
						class="center">다녀간사람</span></li>
					<li class="side-pad"><i class="fa fa-circle-o green"></i> <span
						class="center">다녀간사람</span></li>
					<li class="side-pad"><i class="fa fa-circle-o green"></i> <span
						class="center">다녀간사람</span></li>
				</ul>
			</ul>
		</div>
		<!-- 다녀간사람 목록 띄우기 -->
	</section>
	<!-- /.sidebar -->
</aside>