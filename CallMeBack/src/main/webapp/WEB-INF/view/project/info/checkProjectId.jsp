<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Page Content -->
<div class="row">
	<div style="float:none; margin:0 auto; padding-top : 100px;">
		<form style="width : 455px">
			<h1>비회원 프로젝트 조회</h1>
			<br>
			<div class="form-group">
				<label for="projectId">ProjectID</label> <input type="text" class="form-control"
					id="projectId" placeholder="프로젝트 생성시 발급된 아이디를 입력하세요">
			</div>
			<div class="button-group" style="text-align: center; padding-top : 20px;">
				<button type="button" class="btn btn-outline-primary" onclick="#">비회원 프로젝트 조회</button>
				<button type="button" class="btn btn-primary" onclick="location.href='/login'">로그인 하기</button>
			</div>
		</form>
	</div>
</div>