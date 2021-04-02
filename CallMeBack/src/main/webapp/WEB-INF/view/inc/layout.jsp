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
<style>
	@media ( min-width : 768px) {
		.container {
			width: 750px;
		}
	}
	
	@media ( min-width : 992px) {
		.container {
			width: 1200px;
		}
	}
	a{
		color : black;
	}
</style>

<title><tiles:getAsString name="title" /></title>
</head>

<body>
	<!-- <header>  -->
	<tiles:insertAttribute name="header" />

	<!-- <body>  -->
	<div class="container">
		<tiles:insertAttribute name="body" />
	</div>

	<!-- <footer> -->
	<tiles:insertAttribute name="footer" />

</body>

</html>