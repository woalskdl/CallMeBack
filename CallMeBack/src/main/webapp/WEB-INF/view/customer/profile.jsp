<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Page Content -->
<c:if test="${ empty sessionScope.member }">
	<script>
		alert("로그인이 필요합니다.");
		document.location.href="/login";
	</script>
</c:if>
<script src="/js/jquery-3.6.0.min.js"></script>
<script src="/js/profile.js"></script>

<div class="row">
	<div style="float:none; margin:0 auto; padding-top : 100px;">
		<form method="post" action="/updateProfilePro" style="width : 455px">
			<h1>회원가입 정보</h1>
			<br>
			<div class="form-group">
				<label for="id">ID</label> <input type="text" class="form-control"
					id="id" name="id" value="${ member.getId() }" disabled>
			</div>
			<div class="form-group">
				<label for="name">이름</label>
				<font size="2em" color="#fc5858" class="nCk">&nbsp;이름을 공란으로 둘 수 없습니다.</font>
				<font size="2em" color="#fc5858" class="nCk2">&nbsp;이름을 확인해주세요.</font>
				<input type="text" class="form-control" 
					id="name" name="name" value="${ member.getName() }" required>
			</div>
			<div class="form-group">
				<label for="email">E-MAIL</label>
				<font size="2em" color="#fc5858" class="emCk">&nbsp;올바른 이메일 양식을 입력해주세요.</font>
				<font size="2em" color="#fc5858" class="emCk2">&nbsp;이메일이 중복됩니다.</font>
				<input type="text" class="form-control"
					id="email" name="email" value="${ member.getEmail() }" required>
			</div>
			<div class="form-group">
				<label for="password">PASSWORD</label> <input type="password"
					class="form-control" id="password" name="password" value="${ member.getPwd() }" required>
			</div>
			<div class="form-group">
				<label for="passwordConfirm">PASSWORD CONFIRM</label>
				<font size="2em" color="#fc5858" class="pwCk">&nbsp;비밀번호를 확인해주세요.</font>
				<input type="password"
					class="form-control" id="passwordCk" name="passwordCk" value="${ member.getPwd() }" required>
			</div>
			<br>
			<div class="button-group" style="text-align: center; padding-top : 20px;">
				<input type="submit" class="btn btn-primary btn-lg" id="updateProfile" disabled="disabled" value="이메일 / 비밀번호 변경">
			</div>
		</form>
	</div>
</div>