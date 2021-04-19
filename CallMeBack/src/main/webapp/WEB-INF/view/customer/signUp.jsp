<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Page Content -->
<div class="row">
	<div style="float:none; margin:0 auto; padding-top : 100px;">
		<form style="width : 455px">
			<h1>회원가입</h1>
			<br>
			<div class="form-group">
				<label for="name">이름</label> <input type="text" class="form-control"
					id="name" placeholder="이름을 입력하세요">
			</div>
			<div class="form-group">
				<label for="id">ID</label> <input type="text" class="form-control"
					id="ID" placeholder="아이디를 입력하세요">
				<button type="button" class="btn btn-secondary" id="checkDoubleId">중복확인</button></td>
			</div>
			<div class="form-group">
				<label for="email">E-MAIL</label> <input type="email" class="form-control"
					id="email" placeholder="이메일을 입력하세요">
				<button type="button" class="btn btn-secondary" id="checkDoubleEmail">중복확인</button></td>
			</div>
			<div class="form-group">
				<label for="password">PASSWORD</label> <input type="password"
					class="form-control" id="password" placeholder="비밀번호를 입력하세요">
			</div>
			<div class="form-group">
				<label for="passwordConfirm">PASSWORD CONFIRM</label> <input type="password"
					class="form-control" id="password" placeholder="비밀번호를 다시 입력하세요">
			</div>
			<br>
			<div class="button-group" style="text-align: center; padding-top : 20px;">
				<button type="button" class="btn btn-primary btn-lg" onclick="location.href='/signUp'">회원가입</button>
				<button type="button" class="btn btn-dark btn-lg" onclick="location.href='/login'">로그인</button>
			</div>
		</form>
	</div>
</div>