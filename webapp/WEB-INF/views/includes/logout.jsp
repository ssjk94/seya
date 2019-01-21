
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Main Header -->
<header class="main-header">

	<!-- Logo -->
	<a href="${pageContext.request.contextPath}/main1" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
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
						src="${pageContext.request.contextPath}/dist/images/user.png"
						class="user-image" alt="User Image"> <!-- hidden-xs hides the username on small devices so only the image appears. -->
						<span class="hidden-xs">로그인</span>
				</a>
					<div class="dropdown-menu">
						<!-- The user image in the menu -->
						<div class="user-header">
							<h3 class="text-center">로그인</h3>

							<div class="form-group">
								<input type="text" class="form-control" placeholder="아이디"
									name="userId" maxlength="20">
							</div>
							<div class="form-group">
								<input type="password" class="form-control" placeholder="비밀번호"
									name="userPassword" maxlength="20">
							</div>
							<div>
								<input type="submit"
									class="btn btn-block btn-danger form control" value="로그인">
								<input type="submit"
									class="btn btn-block btn-danger form control" value="회원가입">
								<input type="submit"
									class="btn btn-block btn-danger form control" value="비밀번호찾기">
							</div>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</nav>
</header>