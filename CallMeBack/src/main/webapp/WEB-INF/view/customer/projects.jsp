<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Page Content -->
<c:if test="${ empty sessionScope.id }">
	<script>
		<meta http-equiv="Refresh" content="0;url=/login">
	</script>
</c:if>
<div class="container">
	<h2>프로젝트 목록</h2>
	<table class="table table-hover">
		<thead>
			<tr>
				<th width="80">번호</th>
				<th width="250">이름</th>
				<th width="800">내용</th>
				<th width="200">등록일</th>
				<th width="200">마감일</th>
				<th width="300">구분</th>
				<th width="200">제작자</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td width="80">1</th>
				<td width="250">21SS 룩북</th>
				<td width="800">사진-인물-화보-의류 및 잡화-의류</th>
				<td width="200">2021-03-26</th>
				<td width="200">2021-04-11</th>
				<td width="300">셀프 프로젝트</th>
				<td width="200">남재민</th>
			</tr>
			<tr>
				<td width="80">2</th>
				<td width="250">21SS 제품누끼</th>
				<td width="800">사진-제품-의류 및 잡화-제품 누끼</th>
				<td width="200">2021-03-26</th>
				<td width="200">2021-04-11</th>
				<td width="300">의뢰한 프로젝트</th>
				<td width="200">백승길</th>
			</tr>
			<tr>
				<td width="80">3</th>
				<td width="250">21SS 착장</th>
				<td width="800">사진-인물-착장-누끼</th>
				<td width="200">2021-03-26</th>
				<td width="200">2021-04-11</th>
				<td width="300">의뢰한 프로젝트</th>
				<td width="200">백승길</th>
			</tr>
			<tr>
				<td width="80">4</th>
				<td width="250">21SS 컨셉</th>
				<td width="800">사진-제품-의류 및 잡화-컨셉 사진</th>
				<td width="200">2021-03-26</th>
				<td width="200">2021-04-7</th>
				<td width="300">의뢰한 프로젝트</th>
				<td width="200">백승길</th>
			</tr>
		</tbody>
	</table>
</div>