<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="/css/project.css" type="text/css" rel="stylesheet" />
<!-- Page Content -->
<div class="help text-center">
	<h5>로그인 하시겠습니까?</h5>
</div>
<div class="container text-center" style="float: none; margin: 0 auto; padding-bottom : 100px;">
	<div class="btnList">
		<ul class="btnGroup">
			<li class="btn">
				<a href="/login">
					<div class="screen">
						<img src="/image/login.png" alt="login">
					</div>
					<div>
						<h3>로그인</h3>
					</div>
				</a>
			</li>
			<li class="btn">
				<a href="#">	<!-- jQuery로 만들어야함 -->
					<div class="screen">
						<img src="/image/non-member.png" alt="non-member">
					</div>
					<div>
						<h3>비회원으로 등록</h3>
					</div>
				</a>
			</li>
		</ul>
	</div>
	<div class="help text-center">
		<h5>로그인 후 프로젝트를 등록하실 경우 데이터 저장 및 추후 관리가 더욱 쉽습니다.</h5>
	</div>
</div>