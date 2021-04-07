<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Page Content -->
<div class="row">
	<div style="float:none; margin:0 auto; padding-top : 100px;">
		<h1>프로젝트 등록 완료</h1>
		<hr class="my-4">
		<p>
			<font color="gray"> 
				프로젝트가 등록되었습니다.<br>
				프로젝트 ID는 ------ 입니다.<br>
				<br>
				프로젝트 ID는 비회원으로 프로젝트를 등록했을 경우<br>
				추후 프로젝트를 조회하는데 사용됩니다.
				 
			</font>
		</p>
		<br> <br>
		<form style="width : 455px">
			<div class="button-group" style="text-align: center; padding-top : 20px;">
				<button type="button" class="btn btn-primary btn-lg" onclick="location.href='/projects'">프로젝트 목록</button>
				<button type="button" class="btn btn-dark btn-lg" onclick="location.href='/main'">메인화면</button>
			</div>
		</form>
	</div>
</div>