<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
	span{
		font-weight : bold;
		font-size : 2em;
	}
</style>
<!-- Page Content -->
<div class="jumbotron">
	<h1 class="display-4 text-center">새로운 프로젝트를 시작하세요!</h1>
	<br>
	<p class="lead text-center"><b><em>Call Me Back</em></b> 은 프로젝트의 효율적인 관리 및 업데이트,<br>
	그리고 프로젝트 제작자와의 원활한 소통을 위해 만들어졌습니다.</p>
	<br>
	<hr class="my-4">
	<br>
	<div class="cols-sm-3" style="text-align : center;">
		<p><a class="btn btn-primary btn-lg" href="/addProject/new" role="button">새 프로젝트 시작</a></p>
	</div>
</div>
<br><br>
<div class="alert alert-info" role="alert">
	<a href="/projects" class="alert-link">금일 업데이트된 프로젝트 - 건이 있습니다.</a>
</div>
<br>
<table class="table table-striped">
	<tbody>
		<tr>
			<td><h2><small>나의 프로젝트</small></h2></td>
			<td><span class="text-primary"> 26 건 </span></td>
		</tr>
		<tr>
			<td><h2><small>현재 DB에 등록된 프로젝트</small></h2></td>
			<td><span class="text-primary"> 158 건 </span></td>
		</tr>
		<tr>
			<td><h2><small>오늘 신규 등록된 프로젝트</small></h2></td>
			<td><span class="text-primary"> 7 건 </span></td>
		</tr>
		<tr>
			<td><h2><small>사진 프로젝트</small></h2></td>
			<td><span class="text-muted"> 104 건 </span></td>
		</tr>
		<tr>
			<td><h2><small>영상 프로젝트</small></h2></td>
			<td><span class="text-muted"> 54 건 </span></td>
		</tr>
	</tbody>
</table>