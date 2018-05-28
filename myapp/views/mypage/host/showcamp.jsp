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
		<title>캠핑장 정보</title>
		<link rel="stylesheet" href="/resources/css/bootstrap/css/bootstrap.min.css">
					
		<style type="text/css">
			table {
				border: 1px solid gray;
				text-align: center;
			}
			th {
				text-align: center;
			}
			td {
				padding: 10px;
			}
		</style>
	</head>
	
	<body>	
		<a class="btn btn-primary" href="/">홈</a>
		<table border="1" style="border: 1px solid gray; text-align: center;">	
			<thead>
				<tr>
					<th>이름</th>
					<th>전화번호</th>
					<th>분류</th>
					<th>주소</th>
					<th>편의시설</th>
					<th>액티비티</th>
					<th>소개</th>
					<th>주의사항</th>
					<th colspan="2">메뉴</th>
				</tr>
			</thead>
			
			<c:if test="${!empty list }">
				<c:forEach var="list" items="${list}">
					<tr>
						<td>${list.campsite_name}</td>
						<td>${list.phone_num}</td>			
						<td>${list.campsite_group}</td>
						<td>${list.address}</td>
						<td>${list.comforts}</td>
						<td>${list.activity}</td>
						<td>${list.explanation}</td>
						<td>${list.attension}</td>					
		 				<td>
		 					<a href="/host/auth_upcamp?campsite_no=${list.campsite_no}">
		 						<button class="btn btn-primary">수정</button>
		 					</a>
		 				</td>
						<td>
							<a href="/host/auth_decamp?campsite_no=${list.campsite_no}">
								<button class="btn btn-default">삭제</button>
							</a>
						</td>					
					</tr>
				</c:forEach>
			</c:if>
		</table>	
	</body>
</html>