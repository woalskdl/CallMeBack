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
					<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
				</div>
			</td>
		</tr>
		<tr>
			<th>등록일</th>
			<td>2021-03-25</td>
			<th>상태</th>
			<td>
				<button id="del" class="btn btn-sm btn-info">신규</button> <!-- 신규일 경우 진행중으로 표시하도록 -->
			</td>
		</tr>
		<tr>
			<th>마감일</th>
			<td>2021-04-11</td>
			<th>최근 업데이트</th>
			<td>
				2021-03-31&nbsp;
				<button id="update" class="btn btn-sm btn-outline-primary" name="${ item.getItem_number() }" onclick="edit(this)">업데이트</button>
			</td>
		</tr>
		<tr>
			<th colspan="4">프로젝트 상세</th>
		</tr>
		<!-- 상세는 페이지 이동없이 입력하고 버튼 클릭해서 바로 수정가능하도록. -->
		<tr height="200">
			<td colspan="4">
				<textarea class="form-control" rows="5">가나다라마바사</textarea><br>
				<button id="update" class="btn btn-sm btn-outline-primary" name="${ item.getItem_number() }" onclick="edit(this)" style="float:right;">수정</button>
			</td>
		</tr>
	</table>
</div>