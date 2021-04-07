<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Page Content -->
<c:if test="${ !empty sessionScope.id }">
	<script>
		document.location.href="/login";
	</script>
</c:if>

<style>
	.selfLayer{ display : none; }
	.requestLayer{ display : none; }
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<script src="/js/jquery-3.6.0.min.js"></script>
<script src="/js/projectDetail.js"></script>

<div class="container" id="newProject">
	<h2>프로젝트 상세 <small><font color="gray" size="4">기타 프로젝트 상세 정보를 입력하세요.</font></small></h2>
	<!-- 수정가능한 요소에 a태그 달아서 editProject 으로 보내기 -->
	<table class="table table-hover">
		<tr>
			<th>제목</th>
			<td><input type="text" class="form-control" id="projectTitle" placeholder="프로젝트 제목"></td>
			<th>구분</th>
			<td>
				<select id="whoProduce" class="form-control">
					<option selected>프로젝트 성격을 선택하세요.</option>
					<option value="self">셀프 프로젝트</option>
					<option value="request">의뢰 프로젝트</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>사진-인물-화보-의류 및 잡화-의류</td> <!-- session에 저장된 내용들 출력하기 -->
			<th>제작자</th>
			<td>
				<div class="selfLayer">
					<input class="form-control" id="myName" type="text" placeholder="myName" disabled>
				</div>
				<div class="requestLayer">
					<input class="form-control" id="producerName" type="text" placeholder="제작자의 ID를 입력하세요.">
					<a href="#" role="button" id="searchId">
						<i class="fas fa-search fa-pull-right fa-border fa-lg" aria-hidden="true" style="margin : 3px;"></i>
					</a>
				</div>
			</td>
		</tr>
		<tr>
			<th>마감일</th>
			<td>
				<select id="year" title="년" class="col-xs-4"></select>
				<select id="month" title="월" class="col-xs-4"></select>
				<select id="day" title="일" class="col-xs-4"></select>
			</td>
			<th>연락 가능 시간</th>
			<td>
				<select id="hourStart" title="부터" class="col-xs-4"></select>
				&nbsp;~&nbsp;
				<select id="hourEnd" title="까지" class="col-xs-4"></select>
			</td>
		</tr>
		<tr>
			<th>프로젝트 상세</th>
			<td colspan="4">
				<font color="gray"><small>프로젝트에 관한 기타 상세 설명을 기입해주세요.</small></font>
			</td>
		</tr>
		<!-- 상세는 페이지 이동없이 입력하고 버튼 클릭해서 바로 수정가능하도록. -->
		<tr height="200">
			<td colspan="4">
				<textarea class="form-control" id="projectDesc" rows="20" placeholder="프로젝트 상세 설명"></textarea><br>
				<button id="confirm" class="btn btn-lg btn-primary" name="${ item.getItem_number() }" onclick="edit(this)" style="float:right;">등록</button>
			</td>
		</tr>
	</table>
</div>