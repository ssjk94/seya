<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
						<h2 class="box-title">내 단어장</h2>
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
						<div class="row">
							<div class="col-lg-3 col-xs-6">
								<!-- small box -->
								<div class="small-box">
									<div class="inner">
										<h3>새 단어장</h3>
										<p>&nbsp;</p>
										<p>&nbsp;</p>
										<p>&nbsp;</p>

									</div>
									<div class="icon">
										<i class="fa fa-plus"> </i>
									</div>
									<a href="#" class="small-box-footer bgcolor-default"> More
										<i class="fa fa-arrow-circle-right"></i>
									</a>
								</div>
							</div>
							<!-- ./col -->
							<div class="col-lg-3 col-xs-6">
								<!-- small box -->
								<div class="small-box">
									<div class="inner">
										<h3>단어장 1</h3>
										<p>Seya</p>
										<p>2019-01-01</p>
										<p>
											<span class="label label-danger">공유불가</span>
										</p>

									</div>
									<div class="icon">
										<i class="fa fa-file-text"> </i>
									</div>
									<a href="#" class="small-box-footer bgcolor-default"> More
										<i class="fa fa-arrow-circle-right"></i>
									</a>
								</div>
							</div>
							<!-- ./col -->
							<div class="col-lg-3 col-xs-6">
								<!-- small box -->
								<div class="small-box">
									<div class="inner">
										<h3>단어장 2</h3>
										<p>Seya</p>
										<p>2019-01-02</p>
										<p>
											<span class="label label-warning">선택허용</span>
										</p>

									</div>
									<div class="icon">
										<i class="fa fa-file-text"> </i>
									</div>
									<a href="#" class="small-box-footer bgcolor-default"> More
										<i class="fa fa-arrow-circle-right"></i>
									</a>
								</div>
							</div>
							<!-- ./col -->
							<div class="col-lg-3 col-xs-6">
								<!-- small box -->
								<div class="small-box">
									<div class="inner">
										<h3>단어장 3</h3>
										<p>Seya</p>
										<p>2019-01-03</p>
										<p>
											<span class="label label-success">공유가능</span>
										</p>

									</div>
									<div class="icon">
										<i class="fa fa-file-text"> </i>
									</div>
									<a href="#" class="small-box-footer bgcolor-default"> More
										<i class="fa fa-arrow-circle-right"></i>
									</a>
								</div>
							</div>
							<!-- ./col -->
						</div>
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
