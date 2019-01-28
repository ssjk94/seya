<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
				src="${pageContext.request.contextPath}/dist/images/profile1.png"
				class="img-circle" alt="User Image">
		</div>

		<div class="sidebar-content">
			<h3 class="gaeyeya">NickName</h3>
			<div class="profile-content">
				<p class="side-cont">여기에 자기소개를 적어주세요</p>

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

		<!-- Sidebar Menu -->
		<ul class="sidebar-menu" data-widget="tree">
			<li class="header">단 어 장</li>
			<!-- Optionally, you can add icons to the links -->
			<li class="active"><a href="${pageContext.request.contextPath}/flashcard"><i class="fa fa-fw fa-book"></i>
					<span>단어장 1</span></a></li>
					<li><a href="#"><i class="fa fa-fw fa-book"></i> <span>단어장 2</span></a></li>
					<li><a href="#"><i class="fa fa-fw fa-book"></i> <span>단어장 3</span></a></li>
			
			<!-- 	<li class="treeview"><a href="#"><i class="fa fa-fw fa-book"></i>
							<span>Multilevel</span> <span class="pull-right-container">
								<i class="fa fa-angle-left pull-right"></i>
						</span> </a>
						<ul class="treeview-menu">
							<li><a href="#">Link in level 2</a></li>
							<li><a href="#">Link in level 2</a></li>
						</ul></li>  네비게이션 열고 닫으면서 이용할수있는것 일단 주석-->
		</ul>
		<ul class="sidebar-menu" data-widget="tree">
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
		<!-- 다녀간사람 목록 띄우기 -->
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