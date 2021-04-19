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
</style>
<div class="container" id="ongoingProjects">
	<h2>프로젝트 상세 <small><font color="gray" size="4">수정하려면 항목을 클릭하세요.</font></small></h2>
	<!-- 수정가능한 요소에 a태그 달아서 editProject 으로 보내기 -->
	<table class="table table-hover">
		<tr>
			<th>번호</th>
			<td>1</td>
			<th>구분</th>
			<td>셀프 프로젝트</td>
		</tr>
		<tr>
			<th>제목</th>
			<td>21SS 룩북</td>
			<th>등록자</th>
			<td>남재민</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>사진-인물-화보-의류 및 잡화-의류</a></td>
			<th>제작자</th>
			<td>남재민</td>
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
<br><br>
<div class="container" id="projectInfo">
	<h4>업데이트 내역</h4>
	<table class="table table-hover">
		<tr>
			<th>#</th>
			<th>제목</th>
			<th>COMMENT</th>
			<th>등록일</th>
			<th>등록자</th>
			<th>구분</th>
			<th>상태</th>
		</tr>
		<tr>
			<td>4</td>
			<td>색감보정</td>
			<td>색감 채도 낮추고 블루톤 높이는 쪽으로</td>
			<td>2021-04-01</td>
			<td>남재민</td>
			<td>
				<button id="update" class="btn btn-sm btn-primary">업데이트</button>
			</td>
			<td>
				<button id="del" class="btn btn-sm btn-outline-primary">진행중</button>
			</td>
		</tr>
		<tr>
			<td>3</td>
			<td>제작자 수정</td>
			<td>백승길 > 남재민 (촬영 및 기본 보정 완료)</td>
			<td>2021-03-29</td>
			<td>남재민</td>
			<td>
				<button id="update" class="btn btn-sm btn-info">수정</button>
			</td>
			<td>
				<button id="del" class="btn btn-sm btn-secondary" disabled>완료</button>
			</td>
		</tr>
		<tr>
			<td>2</td>
			<td>촬영</td>
			<td>누끼컷 촬영 시작</td>
			<td>2021-03-27</td>
			<td>백승길</td>
			<td>
				<button id="update" class="btn btn-sm btn-primary">업데이트</button>
			</td>
			<td>
				<button id="del" class="btn btn-sm btn-secondary" disabled>완료</button>
			</td>
		</tr>
		<tr>
			<td>1</td>
			<td>촬영 제품 전달</td>
			<td>촬영 제품 전달드릴게요. 연락부탁드립니다!</td>
			<td>2021-03-26</td>
			<td>남재민</td>
			<td>
				<button id="del" class="btn btn-sm btn-primary">CallMe!</button>
			</td>
			<td>
				<button id="del" class="btn btn-sm btn-secondary" disabled>완료</button>
			</td>
		</tr>
	</table>
</div>