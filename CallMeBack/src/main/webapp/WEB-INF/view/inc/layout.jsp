<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="EUC-KR">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- <style>
		footer{
			background: #313131;
			height: 100px;
			padding:20px;
		}
	</style> -->
<title><tiles:getAsString name="title" /></title>
</head>

<body>
	<!-- <header>  -->
	<tiles:insertAttribute name="header" />

	<!-- <body>  -->
	<tiles:insertAttribute name="body" />

	<!-- <footer> -->
	<tiles:insertAttribute name="footer" />

</body>

</html>