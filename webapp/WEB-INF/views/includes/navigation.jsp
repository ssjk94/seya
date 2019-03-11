<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
h3.gaeyeya {
	font-size: 22px;
	text-align: center;
	margin-top: 0px;
	margin-bottom: 15px;
}

.side-cont {
	display: block;
	padding: 0px;
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

.box.box-primary {
	margin-top: 5px;
}

.skin-red-light .sidebar-menu > li.header {
    color: #ffffff;
    background: #7c8ba8;
}

</style>

<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">

	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">

		<!-- Sidebar user panel (optional) -->
		<div class="box box-primary">
			<div class="box-body box-profile">
				<img class="profile-user-img img-responsive img-circle"
					src="/upload/profile/${urlPathVo.userImage}"
					alt="User profile picture">

				<h3 class="profile-username text-center">${urlPathVo.nickName}</h3>
				<p class="text-muted side-cont">${urlPathVo.userContent}</p>
			</div>
			<!-- /.box-body -->
			<!-- 전체 단어장 보여줄꺼 -->
			<ul class="sidebar-menu" data-widget="tree">
				<li class="header"><c:choose>
						<c:when test="${listview eq 0}">
							<form action="${pageContext.request.contextPath}/${URLId}/list"
								method="get">
								<button type="submit"
									style="background-color: transparent; border: 0px transparent solid">
									<span>전체 단어장</span>
								</button>
								<span class="glyphicon glyphicon-plus direcIcon"
									aria-hidden="true"
									onclick="directoryInsert('${sessionScope.id}')"></span> <span
									class="glyphicon glyphicon-remove direcIcon" aria-hidden="true"
									onclick="directoryDelete(55)"></span> <span
									class="glyphicon glyphicon-pencil direcIcon" aria-hidden="true"
									onclick="directoryUpdate(55,'수정전 디렉')"></span>
							</form>
						</c:when>
						<c:otherwise>
							<form action="${pageContext.request.contextPath}/${URLId}"
								method="get">
								<button type="submit"
									style="background-color: transparent; border: 0px transparent solid">
									<span>전체 단어장</span>
								</button>
							</form>
						</c:otherwise>
					</c:choose></li>
			</ul>

			<ul class="sidebar-menu" data-widget="tree">
				<!-- Sidebar Menu -->
				<c:forEach items="${requestScope.directoryList}" var="wordbookVo">
					<li class="header">
						<!-- 디렉토리 번호를 넘기려고함 --> <c:choose>
							<c:when test="${listview eq 0}">
								<form action="${pageContext.request.contextPath}/${URLId}/list"
									method="get">
									<input name="directoryNo" type="hidden"
										value="${wordbookVo.directoryNo}">
									<button type="submit"
										style="background-color: transparent; border: 0px transparent solid">
										<span>${wordbookVo.directoryName}</span>
									</button>
								</form>
							</c:when>
							<c:otherwise>
								<form action="${pageContext.request.contextPath}/${URLId}"
									method="get">
									<input name="directoryNo" type="hidden"
										value="${wordbookVo.directoryNo}">
									<button type="submit"
										style="background-color: transparent; border: 0px transparent solid">
										<span>${wordbookVo.directoryName}</span>
									</button>
								</form>
							</c:otherwise>
						</c:choose>
					</li>
				</c:forEach>
			</ul>
		</div>
		<!-- 다녀간사람 목록 띄우기 -->
	</section>
	<!-- /.sidebar -->
</aside>
<script type="text/javascript">
	function refreshMemList() {
		location.reload();
	};

	function directoryInsert(sessionId) {
		console.log(sessionId);

		var directoryName = prompt("폴더이름을 설정해주세요", "")

		//프롬프트 확인 눌렀을때
		if (directoryName != null) {

			$
					.ajax({
						url : "${pageContext.request.contextPath}/${URLId}/directoryinsert",
						type : "post",
						//			contentType : "application/json",
						data : {
							URLId : sessionId,
							directoryName : directoryName
						},
						dataType : "html",
						success : function() {
							/*성공시 처리해야될 코드 작성*/
							refreshMemList();
						},
						error : function(XHR, status, error) {
							console.error(status + " : " + error);
						}
					});

		}

	}

	function directoryDelete(directoryNo) {
		console.log(directoryNo);

		$
				.ajax({
					url : "${pageContext.request.contextPath}/${URLId}/directorydelete",
					type : "post",
					//			contentType : "application/json",
					data : {
						directoryNo : directoryNo
					},
					dataType : "html",
					success : function() {
						/*성공시 처리해야될 코드 작성*/
						refreshMemList();
					},
					error : function(XHR, status, error) {
						console.error(status + " : " + error);
					}
				});

	}

	function directoryUpdate(directoryNo, beforeDirectoryName) {
		console.log(directoryNo, beforeDirectoryName);
		var directoryName = prompt("수정할 폴더명을 입력해주세요", beforeDirectoryName);

		//프롬프트 확인 눌렀을때
		if (directoryName != null) {

			$
					.ajax({
						url : "${pageContext.request.contextPath}/${URLId}/directoryupdate",
						type : "post",
						//			contentType : "application/json",
						data : {
							directoryNo : directoryNo,
							directoryName : directoryName
						},
						dataType : "html",
						success : function() {
							/*성공시 처리해야될 코드 작성*/
							refreshMemList();
						},
						error : function(XHR, status, error) {
							console.error(status + " : " + error);
						}
					});

		}

	}
</script>