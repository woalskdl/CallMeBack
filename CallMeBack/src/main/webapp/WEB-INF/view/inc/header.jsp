<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header>
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
		<div class="container">
			<a class="navbar-brand" href="/main"> <img
				src="image/logo.jpg" alt="CallMeBack">
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<c:if test="${ !empty sessionScope.id }">
						<li class="nav-item"><a class="nav-link">--- 님 환영합니다.&nbsp;</a></li>
					</c:if>
					<li class="nav-item active"><a class="nav-link" href="/addProject/new">Add Project</a></li>
					<c:if test="${ empty sessionScope.id }">
						<li class="nav-item"><a class="nav-link" href="/login">Sign in</a></li>
						<li class="nav-item"><a class="nav-link" href="/signUp">Sign up</a></li>
					</c:if>
					<c:if test="${ !empty sessionScope.id }">
						<li class="nav-item"><a class="nav-link" href="/profile">Profile</a></li>
						<li class="nav-item"><a class="nav-link" href="/logout">Sign out</a></li>
					</c:if>
					<li class="nav-item"><a class="nav-link" href="projects">Your Projects</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<br>
</header>