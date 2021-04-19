<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="/css/project.css" type="text/css" rel="stylesheet" />
<!-- Page Content -->
<div class="help text-center">
	<h5>어떤 작업을 원하시나요?</h5>
</div>
<div class="container text-center" style="float: none; margin: 0 auto;">
	<div class="btnList">
		<ul class="btnGroup">
			<li class="btn">
				<a href="img">
					<div class="screen">
						<div class="top">IMAGE</div>
						<div class="bottom">이미지 프로젝트</div>
						<img src="/image/img.jpg" alt="image">
					</div>
					<div>
						<h3>이미지</h3>
					</div>
				</a>
			</li>
			<li class="btn">
				<a href="video">
					<div class="screen">
						<div class="top">VIDEO</div>
						<div class="bottom">영상 프로젝트</div>
						<img src="/image/video.jpg" alt="video">
					</div>
					<div>
						<h3>영상</h3>
					</div>
				</a>
			</li>
		</ul>
	</div>
</div>