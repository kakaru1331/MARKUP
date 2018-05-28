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
		table {
			border: 1px solid gray;
			text-align: center;
		}
		
		td {
			padding: 10px;	
		}
		
		.camp-form {
			text-align: center;
		}
	
	</style>
</head>
<body>
	
	<div class="container camp-form">
 		<h3>캠핑장 등록</h3>
	</div>
	<a class="btn btn-primary" href="/">홈</a>
	<h2>캠핑장 등록</h2>	
	
	<form action="/host/addcamp" method="post">
		<table>
			<tr>
				<td>이름 </td>
				<td><input type="text" name="campsite_name"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="phone_num"></td>
			</tr>
			<tr>
				<td>분류</td>
				<td><input type="text" name="campsite_group"></td>
			</tr>		
			<tr>
				<td>주소</td>
				<td><input type="text" name="address"></td>
			</tr>
			<tr>
				<td>편의시설</td>
				<td><input type="text" name="comforts"></td>
			</tr>
			<tr>
				<td>액티비티</td>
				<td><input type="text" name="activity"></td>
			</tr>
			<tr>
				<td>소개</td>
				<td><input type="text" name="explanation"></td>
			</tr>
			<tr>
				<td>주의사항</td>
				<td><input type="text" name="attension"></td>
			</tr>		
		</table>		
		<input class="btn btn-primary" type="submit" value="등록">	
	</form>
</body>
</html>