<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${ !empty sessionScope.member }">
	<c:remove var="member" scope="session"/>
	<c:remove var="userName" scope="session"/>
	<script>
		alert("로그아웃 되었습니다.");
		location.href = "/main";
	</script>
</c:if>

<c:if test="${ empty sessionScope.member }">
	<script>
		alert("잘못된 접근입니다.");
		history.go(-1);
	</script>
</c:if>