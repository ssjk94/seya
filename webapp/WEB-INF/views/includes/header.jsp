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

.searchform {
	display: inline-block;
}

::-webkit-input-placeholder { /* 크롬 4–56 */
	color: #ffffff;
}

:-moz-placeholder { /* 파이어폭스 4–18 */
	color: #ffffff;
	opacity: 1;
}

::-moz-placeholder { /* 파이어폭스 19–50 */
	color: #ffffff;
	opacity: 1;
}

:-ms-input-placeholder { /* 인터넷 익스플로러 10+ */
	color: #ffffff;
}

::placeholder { /* 파이어폭스 51+, 크롬 57+ */
	color: #ffffff;
	opacity: 1;
}

.formcontroll {input [type="submit"] { font-family:FontAwesome;
	background-color: rgba(255, 255, 255, 0.7);
	font-size: 27px;
	outline: none;
}

}
.input-group .form-control {
	position: relative;
	z-index: 2;
	float: right;
	width: 495px;
	margin-bottom: 0;
}

#search-select {
	height: 35px;
	width: 65px;
	float: left;
	border-radius: 2px;
	border: none;
}

.searchdiv {
	width: 570px;
	float: left;
}

.skin-red-light .sidebar-form {
	border-radius: 3px;
	margin: 6px 10px;
	border: 0px;
}

.main-header .navbar-custom-menu {
	margin-right: 22px;
}

</style>

<script
	src="${pageContext.request.contextPath}/bower_components/jquery/dist/jquery.min.js"></script>
<%-- <script
	src="${pageContext.request.contextPath}/dist/jquery-ui/jquery-ui.js"></script>
 --%>
<script type="text/javascript">

	
</script>


<header class="main-header">

	<!-- Logo -->
	<!-- 로그인한 아이디로 가야함ㅎㅎ by Seo-->
	<a href="${pageContext.request.contextPath}/${sessionScope.id}"
		class="logo"> <!-- mini logo for sidebar mini 50x50 pixels --> <span
		class="logo-lg"><b>Seya</b>Word</span>
	</a>

	<!-- Header Navbar -->
	<nav class="navbar navbar-static-top" role="navigation">

		<!-- 일단 단어장으로만 검색 먼저 할것	<select name="searchCondition" id="search-select">
						<option value="findwordname">단어장</option>
						<option value="findnickname">닉네임</option> 
					</select>  -->
		<!-- Search -->
		<div class="searchdiv">
			<form action="/selectsearch.do" method="get" class="sidebar-form">
				<div class="input-group">
						<input type="text" name="keyword" class="form-control" placeholder="단어장 검색.."> 
					<span class="input-group-btn">
						<button type="submit" id="search-btn" class="btn btn-flat">
							<i class="fa fa-search"></i>
						</button>
					</span>
				</div>
			</form>
		</div>
		<!-- Navbar Right Menu -->
		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav">

				<!-- User Account Menu -->
				<li class="dropdown user user-menu"><c:if
						test="${not empty sessionScope.id}">
						<!-- Menu Toggle Button -->
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"> <!-- The user image in the navbar-->
						 <img src="/upload/profile/${sessionScope.userImage}"
							class="user-image" alt="User Image"> <!--/dist/images/user.png  -->
							<!-- hidden-xs hides the username on small devices so only the image appears. -->
							<span class="hidden-xs">${sessionScope.nickName}</span></a>
					</c:if> <c:if test="${empty sessionScope.id}">
						<!-- Menu Toggle Button -->
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"> <!-- The user image in the navbar-->
							<img src="/upload/profile/usericon.png" class="user-image"
							alt="User Image"> <!--/dist/images/user.png  --> <!-- hidden-xs hides the username on small devices so only the image appears. -->
							<span class="hidden-xs">로그인</span></a>
					</c:if>

					<ul class="dropdown-menu gebyung">
						<!-- The user image in the menu -->
						<!--세션있을때 -->
						<c:if test="${not empty sessionScope.id}">
							<li class="user-header"><img
								src="/upload/profile/${sessionScope.userImage}"
								class="img-circle">

								<p>
									${sessionScope.nickName} <small>${sessionScope.userContent}</small>
								</p></li>
						</c:if>
						<!-- 세션을 가지지 않은 상태 -->
						<c:if test="${empty sessionScope.id }">
							<form action="/headerlogin.do" name="loginform" method="post">
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
								<a href="${pageContext.request.contextPath}/${sessionScope.id}"
									class="btn btn-default btn-flat">내 단어장</a>
							</div>
						</c:if>
					</ul></li>
			</ul>
		</div>
	</nav>
</header>