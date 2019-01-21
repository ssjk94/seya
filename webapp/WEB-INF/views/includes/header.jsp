<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Main Header -->
<header class="main-header">

	<!-- Logo -->
	<a href="/seya/main2" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
		<span class="logo-lg"><b>Seya</b>Word</span>
	</a>

	<!-- Header Navbar -->
	<nav class="navbar navbar-static-top" role="navigation">
		<!-- Navbar Right Menu -->
		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav">
				<!-- User Account Menu -->
				<li class="dropdown user user-menu">
					<!-- Menu Toggle Button --> <a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> <!-- The user image in the navbar--> <img
						src="/seya/dist/images/profile1.png" class="user-image"
						alt="User Image"> <!-- hidden-xs hides the username on small devices so only the image appears. -->
						<span class="hidden-xs">Seya</span>
				</a>
					<ul class="dropdown-menu">
						<!-- The user image in the menu -->
						<li class="user-header"><img
							src="/seya/dist/images/profile1.png" class="img-circle"
							alt="User Image">

							<p>
								Seya <small>여기에 자기소개를 적어주세요</small>
							</p></li>
						<!-- Menu Body -->
						<!-- 	<li class="user-body">
									<div class="row">
										<div class="col-xs-4 text-center">
											<a href="#">Followers</a>
										</div>
										<div class="col-xs-4 text-center">
											<a href="#">Sales</a>
										</div>
										<div class="col-xs-4 text-center">
											<a href="#">Friends</a>
										</div>
									</div> /.row
								</li> -->
						<!-- Menu Footer-->
						<li class="user-footer">
							<div class="pull-left">
								<a href="#" class="btn btn-default btn-flat">프로필</a>
							</div>
							<div class="pull-right">
								<a href="${pageContext.request.contextPath}/main1" class="btn btn-default btn-flat">로그아웃</a>
							</div>
							<div class="pull-center">
								<a href="#" class="btn btn-default btn-flat">내블로그</a>
							</div>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
</header>