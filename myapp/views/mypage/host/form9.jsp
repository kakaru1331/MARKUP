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
		aria-valuemin="0" aria-valuemax="100" style="width:90%">
			<span class="sr-only">70% Complete</span>
		</div>
	</div>

	<div class="container">
		<div class="contents">
			<h3>캠핑장의 대표 사진을 등록해주세요</h3>			

            <form action="/host/addcamp_9" method="post" enctype="multipart/form-data">
            	<input type="file" id="imgInput" name="campsite_thumbnail">
            	<img id="thumbnail" alt="캠핑장 대표 사진" src="">
            	<a href="#" class="btn btn-default">이전</a>
				<input type="submit" value="다음">
            </form>            
		</div>		
	</div>
	
	<script src="/resources/js/jquery-3.3.1.min.js.js"></script>
	<script src="/resources/css/bootstrap/js/bootstrap.min.js"></script>	
	<script type="text/javascript">
		function readURL(input) {
	
	        if (input.files && input.files[0]) {
	            var reader = new FileReader();
	
	            reader.onload = function(e) {
	                $('#thumbnail').attr('src', e.target.result);
	            }
	
	            reader.readAsDataURL(input.files[0]);
	        }
	    }
	
	    $("#imgInput").change(function() {
	        readURL(this);
	    });
	</script>
	
</body>
</html>