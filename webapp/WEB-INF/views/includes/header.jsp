<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Main Header -->
<style>
.pull-left, .thismargin {
	margin-right: 6px;
	margin-left: 6px;
}

.headerlogindiv {
	width: 276px;
	height: 175px;
	padding-top: 20px;
	background-color: #dd4b39;
	/* padding-left: 10px; */
	margin-bottom: 3px;
}

.headerlogo {
	font-size: 26px;
	color: white;
}

.gegegeya {
	padding-left: 10px;
	padding-right: 10px;
	margin-top: 15px;
}

.gebyung {
	text-align: center;
}
</style>

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
						src="/upload/profile/${sessionScope.userimage}" class="user-image"
						alt="User Image"> <!--/dist/images/user.png  --> <!-- hidden-xs hides the username on small devices so only the image appears. -->
						<span class="hidden-xs">${sessionScope.nickname}</span>
				</a>

					<ul class="dropdown-menu gebyung">
						<!-- The user image in the menu -->
						<!--세션있을때 -->
						<c:if test="${not empty sessionScope.id}">
							<li class="user-header"><img
								src="/upload/profile/${sessionScope.userimage}" class="img-circle">

								<p>
									${sessionScope.nickname} <small>${sessionScope.usercontent}</small>
								</p></li>
						</c:if>
						<!-- 세션을 가지지 않은 상태 -->
						<c:if test="${empty sessionScope.id }">
							<form action="headerlogin.do" name="loginform" method="post">
								<%-- <input type="hidden" name="refPage" value="<?php echo $_SERVER['HTTP_REFERER']; ?>"> --%>
								<div class="headerlogindiv">
									<span class="headerlogo">SeyaWord</span>

									<div class="form-group gegegeya">
										<input type="text" class="form-control" placeholder="아이디"
											id="id" name="id" maxlength="20">
									</div>
									<div class="form-group gegegeya">
										<input type="password" class="form-control" placeholder="비밀번호"
											id="password" name="password" maxlength="20">
									</div>
								</div>
								<div class="user-footer">
									<div class="pull-left thismargin">
										<input type="submit" value="로그인" 
											class="btn btn-default btn-flat btnmargin">
									</div>
									<div class="pull-left thismargin">
										<a href="${pageContext.request.contextPath}/main2"
											class="btn btn-default btn-flat btnmargin">회원가입</a>
									</div>
									<div class="pull-left thismargin">
										<a href="${pageContext.request.contextPath}/mypage/gallery"
											class="btn btn-default btn-flat btnmargin">ID/PW찾기</a>
									</div>
								</div>
							</form>
							<!-- </div> -->
						</c:if>
						<!-- Menu Footer-->
						<!-- 세션을 가지고 있는 상태 -->
						<c:if test="${not empty sessionScope.id }">
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
					</ul>
				</li>
			</ul>
		</div>
	</nav>
</header>