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
		aria-valuemin="0" aria-valuemax="100" style="width:60%">
			<span class="sr-only">70% Complete</span>
		</div>
	</div>

	<div class="container">
		<div class="contents">
			<h3>게스트가 어떤 활동을 할 수 있나요?</h3>			
            <form action="/host/addcamp_6" method="post">
	            <label for="activity1">
					<input type="checkbox" name="activity" value="" id="activity1"> 낚시
				</label>			
				<label for="activity2">
					<input type="checkbox" name="activity" value="" id="activity2"> 등산
				</label>
				<label for="activity3">
					<input type="checkbox" name="activity" value="" id="activity3"> 스키
				</label>
				<label for="activity4">
					<input type="checkbox" name="activity" value="" id="activity4"> 계곡
				</label>
				<label for="activity5">
					<input type="checkbox" name="activity" value="" id="activity5"> 해수욕
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