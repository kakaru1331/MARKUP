<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>#</title>
	<link rel="stylesheet" href="/resources/css/bootstrap/css/bootstrap.min.css">
</head>
<body>
	<div class="progress">
		<div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="70"
		aria-valuemin="0" aria-valuemax="100" style="width:100%">
			<span class="sr-only">70% Complete</span>
		</div>
	</div>
		
	<div class="container">
		<div class="contents">
			<h3>캠핑장 등록이 완료되었습니다!</h3>
			<p>준비가 되시면 캠핑 상품도 등록해보세요.</p>
		</div>
		<div class="nav">
			<a href="/">완료</a>
			<a href="/host/roomform">캠핑 상품 등록</a>
		</div>
	</div>
	
	<script src="/resources/js/jquery-3.3.1.min.js.js"></script>
	<script src="/resources/css/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>