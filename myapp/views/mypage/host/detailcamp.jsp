<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<title>수정</title>
		<link rel="stylesheet" href="/resources/css/bootstrap/css/bootstrap.min.css">
	<style type="text/css">
		table {
			border: 1px solid gray;
			text-align: center;
		}
		
		td {
			padding: 10px;
		}
	</style>
	</head>
	<body>
		<a class="btn btn-primary" href="/">홈</a>
		<form action="/host/updatecamp" method="post">
			<input type="hidden" name="campsite_no" value="${list.campsite_no}"/>
			<table>
				<tr>
					<th>이름</th>
					<td><input type="text" name="campsite_name" value="${list.campsite_name}"></td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type="text" name="phone_num" value="${list.phone_num}"></td>
				</tr>
				<tr>
					<th>분류</th>
					<td><input type="text" name="campsite_group" value="${list.campsite_group}"></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input type="text" name="address" value="${list.address}"></td>
				</tr>
				<tr>
					<th>편의시설</th>
					<td><input type="text" name="comforts" value="${list.comforts}"></td>
				</tr>
				<tr>
					<th>액티비티</th>
					<td><input type="text" name="activity" value="${list.activity}"></td>
				</tr>
				<tr>
					<th>소개</th>
					<td><input type="text" name="explanation" value="${list.explanation}"></td>
				</tr>
				<tr>
					<th>주의사항</th>
					<td><input type="text" name="attension" value="${list.attension}"></td>
				</tr>	
			</table>
			<a class="btn btn-default" href="/host/showcamp">취소</a>		
			<input class="btn btn-primary" type="submit" value="수정">
		</form>
	</body>
</html>