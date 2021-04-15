<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Page Content -->
<c:if test="${ empty sessionScope.id }">
	<script>
		alert("로그인이 필요합니다.");
		document.location.href="/login";
	</script>
</c:if>
<c:if test="${ !empty sessionScope.id }">
<div class="row">
	<div style="float:none; margin:0 auto; padding-top : 100px;">
		<form style="width : 455px">
			<h1>회원가입 정보</h1>
			<br>
			<div class="form-group">
				<label for="name">이름</label> <input type="text" class="form-control"
					id="name" placeholder="---이름---" disabled>
			</div>
			<div class="form-group">
				<label for="id">ID</label> <input type="text" class="form-control"
					id="ID" placeholder="---아이디---" disabled>
			</div>
			<div class="form-group">
				<label for="email">E-MAIL</label> <input type="email" class="form-control"
					id="email" placeholder="---이메일---">
				<button type="button" class="btn btn-secondary" id="checkDoubleEmail">중복확인</button></td>
			</div>
			<div class="form-group">
				<label for="password">PASSWORD</label> <input type="password"
					class="form-control" id="password" placeholder="---비밀번호---">
			</div>
			<div class="form-group">
				<label for="passwordConfirm">PASSWORD CONFIRM</label> <input type="password"
					class="form-control" id="password" placeholder="---re비밀번호---">
			</div>
			<br>
			<div class="button-group" style="text-align: center; padding-top : 20px;">
				<button type="button" class="btn btn-dark btn-lg" onclick="location.href='/updateProfilePro'">이메일 / 비밀번호 변경</button>
			</div>
		</form>
	</div>
</div>
</c:if>