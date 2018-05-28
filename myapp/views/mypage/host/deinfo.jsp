<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>host회원 삭제 페이지</title>
	</head>
	<body>
		<c:forEach var="list" items="${list}">
		<c:out value="${list.name}"/>님 정말로 홈페이지를 <span style="color:red">탈퇴</span>하시겠습니까?
		</c:forEach>
		<br><br><br>
		<a href="/host/deleteinfo"><input type="button" value="확인"></a>
		<a href="/host/showinfo"><input type="button" value="취소"></a>
	</body>
</html>