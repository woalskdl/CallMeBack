<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Page Content -->
<c:if test="${ !empty sessionScope.id }">
	<script>
		document.location.href="/login";
	</script>
</c:if>
<div class="container">
	<h2>프로젝트 목록</h2>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>#</th>
				<th>이름</th>
				<th>내용</th>
				<th>마감일</th>
				<th>구분</th>
				<th>제작자</th>
				<th>업데이트</th>
				<th>수정</th>
				<th>상태</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>21SS 룩북</td>
				<td>사진-인물-화보-의류 및 잡화-의류</td>
				<td>2021-04-11</td>
				<td>셀프 프로젝트</td>
				<td>남재민</td>
				<td>
					<button id="update" class="btn btn-sm btn-outline-primary" name="${ item.getItem_number() }" onclick="edit(this)">업데이트</button>
				</td>
				<td>
					<button id="edit" class="btn btn-sm btn-outline-dark" name="${ item.getItem_number() }" onclick="edit(this)">수정</button>
				</td>
				<td>
					<button id="del" class="btn btn-sm btn-outline-info" disalbed>신규</button>
				</td>
			</tr>
			<tr>
				<td>2</td>
				<td>21SS 제품누끼</td>
				<td>사진-제품-의류 및 잡화-제품 누끼</td>
				<td>2021-04-11</td>
				<td>의뢰한 프로젝트</td>
				<td>백승길</td>
				<td>
					<button id="update" class="btn btn-sm btn-outline-primary" name="${ item.getItem_number() }" onclick="edit(this)">업데이트</button>
				</td>
				<td>
					<button id="edit" class="btn btn-sm btn-outline-dark" name="${ item.getItem_number() }" onclick="edit(this)">수정</button>
				</td>
				<td>
					<button id="del" class="btn btn-sm btn-primary">CallMe!</button>
				</td>
			</tr>
			<tr>
				<td>3</td>
				<td>21SS 착장</td>
				<td>사진-인물-착장-누끼</td>
				<td>2021-04-11</td>
				<td>의뢰한 프로젝트</td>
				<td>백승길</td>
				<td>
					<button id="update" class="btn btn-sm btn-outline-primary" name="${ item.getItem_number() }" onclick="edit(this)">업데이트</button>
				</td>
				<td>
					<button id="edit" class="btn btn-sm btn-outline-dark" name="${ item.getItem_number() }" onclick="edit(this)">수정</button>
				</td>
				<td>
					<button id="del" class="btn btn-sm btn-primary">CallMe!</button>
				</td>
			</tr>
			<tr>
				<td>4</td>
				<td>21SS 컨셉</td>
				<td>사진-제품-의류 및 잡화-컨셉 사진</td>
				<td>2021-04-7</td>
				<td>의뢰한 프로젝트</td>
				<td>백승길</td>
				<td>
					<button id="update" class="btn btn-sm btn-outline-primary" name="${ item.getItem_number() }" onclick="edit(this)">업데이트</button>
				</td>
				<td>
					<button id="edit" class="btn btn-sm btn-outline-dark" name="${ item.getItem_number() }" onclick="edit(this)">수정</button>
				</td>
				<td>
					<button id="del" class="btn btn-sm btn-primary">CallMe!</button>
				</td>
			</tr>
		</tbody>
	</table>
</div>