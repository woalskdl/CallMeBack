<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="/css/project.css" type="text/css" rel="stylesheet" />
<!-- Page Content -->
<div class="help text-center">
	<h5>이미지의 대상은 무엇인가요?</h5>
</div>
<div class="container text-center" style="float: none; margin: 0 auto; padding-bottom : 100px;">
	<div class="btnList">
		<ul class="btnGroup">
			<li class="btn">
				<a href="person">
					<div class="screen">
						<div class="top">PERSON</div>
						<div class="bottom">인물 촬영</div>
						<img src="/image/person.jpg" alt="person">
					</div>
					<div>
						<h3>인물</h3>
					</div>
				</a>
			</li>
			<li class="btn">
				<a href="product">
					<div class="screen">
						<div class="top">PRODUCT</div>
						<div class="bottom">제품 촬영</div>
						<img src="/image/product.jpg" alt="product">
					</div>
					<div>
						<h3>제품</h3>
					</div>
				</a>
			</li>
			<li class="btn">
				<a href="panorama">
					<div class="screen">
						<div class="top">PANORAMA</div>
						<div class="bottom">건물이나 인테리어, 야외 전경,<br>대형 구조물 사진</div>
						<img src="/image/panorama.jpg" alt="panorama">
					</div>
					<div>
						<h3>전경</h3>
					</div>
				</a>
			</li>
			<li class="btn">
				<a href="graphic">
					<div class="screen">
						<div class="top">GRAPHIC</div>
						<div class="bottom">3D, 기하학, 패턴 등 그래픽 이미지</div>
						<img src="/image/graphic.jpg" alt="graphic">
					</div>
					<div>
						<h3>그래픽</h3>
					</div>
				</a>
			</li>
		</ul>
	</div>
</div>