<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Page Content -->
<div class="row">
	<div style="float:none; margin:0 auto; padding-top : 100px;">
		<form style="width : 455px">
			<h1>로그인</h1>
			<br>
			<div class="form-group">
				<label for="id">ID</label> <input type="text" class="form-control"
					id="id" placeholder="아이디를 입력하세요">
			</div>
			<div class="form-group">
				<label for="password">PASSWORD</label> <input type="password"
					class="form-control" id="password" placeholder="비밀번호를 입력하세요">
			</div>
			<div class="checkbox">
				<label> <input type="checkbox"> 로그인 정보를 기억합니다
				</label>
			</div>
			<br>
			<div class="button-group" style="text-align: center; padding-top : 20px;">
				<button type="button" class="btn btn-primary btn-lg" onclick="location.href='/loginPro'">로그인</button>
				<button type="button" class="btn btn-dark btn-lg" onclick="location.href='/signUp'">회원가입</button>
				<button type="button" class="btn btn-secondary btn-lg" onclick="location.href='/searchLoginInfo'">아이디 / 비밀번호 찾기</button>
			</div>
			<br>
			<button type="button" class="btn btn-outline-secondary btn-block" onclick="location.href='/info/checkProjectId'">비회원 프로젝트 조회</button>
		</form>
	</div>
</div>