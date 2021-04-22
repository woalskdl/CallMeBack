<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Page Content -->
<c:if test="${ !empty sessionScope.member }">
	<script>
		alert("이미 로그인되어 있습니다.");
		history.go(-1);
	</script>
</c:if>
<script src="/js/jquery-3.6.0.min.js"></script>
<script src="/js/signUp.js"></script>

<div class="row">
	<div style="float:none; margin:0 auto; padding-top : 100px;">
		<form method="post" action="/signUpPro" style="width : 455px">
			<h1>회원가입</h1>
			<br>
			<div class="form-group">
				<label for="id">ID</label>
				<font size="2em" color="#fc5858" class="idCk">&nbsp;아이디를 공란으로 둘 수 없습니다.</font>
				<font size="2em" color="#fc5858" class="idCk2">&nbsp;아이디는 영문자, 숫자의 조합으로 4~12자리로 작성해주세요.</font>
				<font size="2em" color="#fc5858" class="idCk3">&nbsp;아이디가 중복됩니다.</font>
				<input type="text" class="form-control"
					id="id" name="id" placeholder="아이디를 입력하세요" required>
			</div>
			<div class="form-group">
				<label for="name">이름</label>
				<font size="2em" color="#fc5858" class="nCk">&nbsp;이름을 공란으로 둘 수 없습니다.</font>
				<font size="2em" color="#fc5858" class="nCk2">&nbsp;이름을 확인해주세요.</font>
				<input type="text" class="form-control"
					id="name" name="name" placeholder="이름을 입력하세요" required>
			</div>
			<div class="form-group">
				<label for="email">E-MAIL</label>
				<font size="2em" color="#fc5858" class="emCk">&nbsp;올바른 이메일 양식을 입력해주세요.</font>
				<font size="2em" color="#fc5858" class="emCk2">&nbsp;이메일이 중복됩니다.</font>
				<input type="email" class="form-control"
					id="email" name="email" placeholder="이메일을 입력하세요" required>
			</div>
			<div class="form-group">
				<label for="password">PASSWORD</label> <input type="password"
					class="form-control" id="password" name="password" placeholder="비밀번호를 입력하세요" required>
			</div>
			<div class="form-group">
				<label for="passwordConfirm">PASSWORD CONFIRM</label> <input type="password"
					class="form-control" id="passwordCk" name="passwordCk" placeholder="비밀번호를 다시 입력하세요" required>
			</div>
			<br>
			<div class="button-group" style="text-align: center; padding-top : 20px;">
				<input type="submit" class="btn btn-primary btn-lg" id="signUp" disabled="disabled" value="회원가입">
				<button type="button" class="btn btn-dark btn-lg" onclick="location.href='/login'">로그인</button>
			</div>
		</form>
	</div>
</div>