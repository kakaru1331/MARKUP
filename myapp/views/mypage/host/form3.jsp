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
		aria-valuemin="0" aria-valuemax="100" style="width:30%">
			<span class="sr-only">70% Complete</span>
		</div>
	</div>

	<div class="container">
		<div class="contents">
			<h3>회원님의 캠핑장은 어떤 유형인가요?</h3>
			<span>(복수선택 가능)</span>
			<form action="/host/addcamp_3" method="post">
				<label for="cg1">
					<input type="checkbox" name="campsite_group" value="오토캠핑" id="cg1"> 오토캠핑
				</label>			
				<label for="cg2">
					<input type="checkbox" name="campsite_group" value="백팩킹" id="cg2"> 백팩킹
				</label>
				<label for="cg3">
					<input type="checkbox" name="campsite_group" value="글램핑" id="cg3"> 글램핑
				</label>
				<label for="cg4">
					<input type="checkbox" name="campsite_group" value="카라반" id="cg4"> 카라반
				</label>
				<a href="#" class="btn btn-default">이전</a>
				<input type="submit" value="다음">	
			</form>
		</div>
	</div>
	
	<script src="/resources/js/jquery-3.3.1.min.js.js"></script>
	<script src="/resources/css/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>