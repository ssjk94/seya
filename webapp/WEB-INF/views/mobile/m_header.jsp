<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.m-header {
	background: #dd4b39;
	height: 3.125rem;
	margin: -8px;
}

.m-header-content {
	padding: 0 1rem;
	clear: both;
	margin-left: auto;
	margin-right: auto;
	height: 100%;
	min-width: 100%;
	font-size: 0.9375rem;
	vertical-align: middle;
	white-space: nowrap;
}

.m-headname {
	color: white;
	font-size: 20px;
	vertical-align: middle;
	height: 100%;
	min-height: 100%;
	line-height: 50px;
}

.head-logo, .logform {
	display: inline-block;
	height: 100%;
}

.pull-right {
	float: right;
}

.btn-logout {
	color: white;
	vertical-align: middle;
	height: 100%;
	min-height: 100%;
	line-height: 50px;
	font-size: 13px;
	float: right;
}

</style>
<div class="m-header-wrapper">
	<header class="m-header">
		<div class="m-header-content">
			<div class="head-logo">
				<a href="/"><span class="m-headname"><strong>Seya</strong>word
				</span></a>
			</div>
			<div class="logform pull-right">
				<a href="/"><span class="btn-logout">로그아웃 </span></a>
			</div>
		</div>
	</header>
</div>