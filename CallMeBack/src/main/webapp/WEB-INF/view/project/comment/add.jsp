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
	#finishedProjects td{
		color : gray;
	}
	
	#addComment{
		font-size : 14px;
		position : relative;
		left : 2%;
	}
</style>
<div class="container" id="ongoingProjects">
	<h2>프로젝트 목록</h2>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>#</th>
				<th>제목</th>
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
				<td><a href="/project/info?num=1">21SS 룩북</a></td>
				<td><a href="/project/info?num=1">사진-인물-화보-의류 및 잡화-의류</a></td>
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
					<button id="del" class="btn btn-sm btn-info">신규</button>
				</td>
			</tr>
			<tr>
				<td colspan="9" style="text-align:center;">
					<div id="addComment">
						<form class="form-inline">
							<div class="form-group">
								<label for="commentTitle">제목</label>
								&nbsp;
								<input type="text" class="form-control" id="commentTitle" placeholder="title">
							</div>
							&emsp;
							<div class="form-group ">
								<label for="commentContent">내용</label>
								&nbsp;
								<input type="text" class="form-control" id="commentContent" placeholder="comment" style="width:600px">
							</div>
							&emsp;
							<div class="checkbox">
								<label>
									<input type="checkbox">&nbsp;CallMe!
								</label>
							</div>
							&emsp;
							<button id="update" class="btn btn-sm btn-outline-primary" name="${ item.getItem_number() }" onclick="edit(this)">업데이트</button>
						</form>
					</div>
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
					<button id="del" class="btn btn-sm btn-outline-primary">진행중</button>
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
<div class="container" id="finishedProjects">
	<h2>완료된 프로젝트</h2>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>#</th>
				<th>제목</th>
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
				</td>
				<td>
					<button id="del" class="btn btn-sm btn-secondary" disabled>완료</button>
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
				</td>
				<td>
					<button id="del" class="btn btn-sm btn-secondary" disabled>완료</button>
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
				</td>
				<td>
					<button id="del" class="btn btn-sm btn-secondary" disabled>완료</button>
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
				</td>
				<td>
					<button id="del" class="btn btn-sm btn-secondary" disabled>완료</button>
				</td>
			</tr>
		</tbody>
	</table>
</div>