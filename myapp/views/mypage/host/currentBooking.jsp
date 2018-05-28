<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Insert title here</title>
	<link rel="stylesheet" href="/resources/css/bootstrap/css/bootstrap.min.css">
	<style type="text/css">
		.current-booking{
			border: 1px solid gray;
			text-align: center;
		}
		
		dt {
			padding: 10px;	
		}
		
		
	
	</style>
</head>
<body>
	<div class="container camp-form">
 		<h3>현재 예약 내역</h3>
	</div>
	<a class="btn btn-primary" href="/">홈</a>
	<div class="current-booking">
		<dl class="current-booking-form">
			<dt>예약 번호</dt>
			<dd></dd>
			<dt>예약자명</dt>
			<dd></dd>
			<dt>예약자 연락처</dt>
			<dd></dd>
			<dt>입실일</dt>
			<dd></dd>
			<dt>퇴실일</dt>
			<dd></dd>
			<dt>객실 번호</dt>
			<dd></dd>
			<dt>인원 수</dt>
			<dd></dd>
			<dt>가격</dt>
			<dd></dd>
			<dt>예약 상태</dt>
			<dd></dd>
		</dl>
	</div>
	


</body>
</html>