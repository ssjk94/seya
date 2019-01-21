<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
.table-hover>tbody>tr:hover {
	background-color: #f5f5f5;
	color: #dd4b39 !important;
}

.content-header>.breadcrumb {
    position: static;
}

</style>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">

	<!-- Content Header (Page header) -->
	<section class="content-header">
		<!--단어장 경로 -->
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li><a href="#">Tables</a></li>
			<li class="active">Simple</li>
		</ol>
		<!--/단어장 경로 -->
	</section>

	<!-- Main content -->
	<section class="content container">
		<div class="row">
			<div class="col-xs-12">
				<div class="box">
					<!-- .box-header -->
					<div class="box-header">
						<h3 class="box-title">내 단어장</h3>
						<!--갤러리, 리스트 버튼 -->
						<div class="pull-right box-tools">
							<a type="button" class="btn btn-info btn-xs"
								data-toggle="tooltip"
								href="${pageContext.request.contextPath}/main2"><i
								class="fa fa-bars"></i></a> <a type="button"
								class="btn btn-info btn-xs" data-toggle="tooltip"
								href="${pageContext.request.contextPath}/main3"><i
								class="fa fa-th-large"></i></a>
						</div>
						<!--/갤러리, 리스트 버튼 -->
					</div>
					<!-- /.box-header -->
					<div class="box-body no-padding">
						<table class="table table-hover">
							<thead>
								<tr>
									<th>단어장 이름</th>
									<th>만든 이</th>
									<th>만든 날짜</th>
									<th>상태</th>
									<th>설명</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>단어장 1</td>
									<td>Seya</td>
									<td>2019-01-01</td>
									<td><span class="label label-danger">공유불가</span></td>
									<td>토익 단어장 chp.1<a href="${pageContext.request.contextPath}/flashcard" class="pull-right">바로가기</a></td>

								</tr>

								<tr>
									<td>단어장 2</td>
									<td>Seya</td>
									<td>2019-01-02</td>
									<td><span class="label label-warning">선택허용</span></td>
									<td>토익 단어장 chp.2<a href="${pageContext.request.contextPath}/flashcard" class="pull-right">바로가기</a></td>
									
								</tr>

								<tr>
									<td>단어장 3</td>
									<td>Seya</td>
									<td>2019-01-03</td>
									<td><span class="label label-success">공유허용</span></td>
									<td>토익 단어장 chp.3<a href="${pageContext.request.contextPath}/flashcard" class="pull-right">바로가기</a></td>
								</tr>
								<tr>
									<td align="center" colspan="5">새 단어장 추가</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
			</div>
		</div>
	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->