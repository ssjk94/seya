<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Main Header -->
<header class="main-header">

	<!-- Logo -->
	<!-- 로그인한 아이디로 가야함ㅎㅎ by Seo-->
	<a href="${pageContext.request.contextPath}/${sessionScope.id}"
		class="logo"> <!-- mini logo for sidebar mini 50x50 pixels --> <span
		class="logo-lg"><b>Seya</b>Word</span>
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
						src="/dist/images/user.png" class="user-image" alt="User Image">
						<!-- hidden-xs hides the username on small devices so only the image appears. -->
						<span class="hidden-xs">Seya</span>
				</a>
					<ul class="dropdown-menu">
						<!-- The user image in the menu -->
						<li class="user-header"><img
							src="/upload/profile/${userimage}" class="img-circle">

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
							<!-- 세션을 가지고 있지 않은 상태 --> <c:if test="${empty sessionScope.id }">
								<div class="pull-left">
									<a href="${pageContext.request.contextPath}/main1"
										class="btn btn-default btn-flat">로그인</a>
								</div>
								<div class="pull-right">
									<a href="${pageContext.request.contextPath}/main2"
										class="btn btn-default btn-flat">회원가입</a>
								</div>
								<div class="pull-center">
									<a href="${pageContext.request.contextPath}/mypage/gallery"
										class="btn btn-default btn-flat">잠시</a>
								</div>
							</c:if> <!-- 세션을 가지고 있는 상태 --> <c:if
								test="${not empty sessionScope.id }">
								<div class="pull-left">
									<a
										href="${pageContext.request.contextPath}/${sessionScope.id}/profilemodify"
										class="btn btn-default btn-flat">정보수정</a>
								</div>
								<div class="pull-right">
									<a href="${pageContext.request.contextPath}/logout.do"
										class="btn btn-default btn-flat">로그아웃</a>
								</div>
								<div class="pull-center">
									<a href="${pageContext.request.contextPath}/mypage/gallery"
										class="btn btn-default btn-flat">내 단어장</a>
								</div>
							</c:if>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
</header>