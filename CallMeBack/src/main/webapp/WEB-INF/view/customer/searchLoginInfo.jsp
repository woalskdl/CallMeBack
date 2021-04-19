<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Page Content -->
<div class="row">
	<div style="float:none; margin:0 auto; padding-top : 100px;">
		<form style="width : 455px">
			<h1>아이디 찾기</h1>
			<br>
			<div class="form-group">
				<label for="name">이름</label> <input type="text" class="form-control"
					id="name" placeholder="이름을 입력하세요">
			</div>
			<div class="form-group">
				<label for="email">E-MAIL</label> <input type="email" class="form-control"
					id="email" placeholder="이메일을 입력하세요">
			</div>
			<br>
			<div class="button-group" style="text-align: center; padding-top : 20px;">
				<button type="button" class="btn btn-secondary btn-lg" onclick="#">아이디 찾기</button>
			</div>
		</form>
	</div>
	<div style="float:none; margin:0 auto; padding-top : 100px;">
		<form style="width : 455px">
			<h1>비밀번호 찾기</h1>
			<br>
			<div class="form-group">
				<label for="id">ID</label> <input type="text" class="form-control"
					id="id" placeholder="아이디를 입력하세요">
			</div>
			<div class="form-group">
				<label for="email">E-MAIL</label> <input type="email" class="form-control"
					id="email" placeholder="이메일을 입력하세요">
			</div>
			<br>
			<div class="button-group" style="text-align: center; padding-top : 20px;">
				<button type="button" class="btn btn-secondary btn-lg" onclick="#">비밀번호 찾기</button>
			</div>
		</form>
	</div>
</div>