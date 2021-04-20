<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${ member != null }">
	<c:set var="member" value="${ member }" scope="session"/>
	<script>
		location.href = '/main';
	</script>
</c:if>

<c:if test="${ member == null }">
	<script>
		alert("아이디 또는 비밀번호를 확인하세요");
		history.go(-1);
	</script>
</c:if>