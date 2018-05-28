<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>호스트 수정 페이지</title>
		<script src="/resources/js/jquery-3.3.1.min.js.js"></script>
		<script>
			function pwcheck() {
	        	var pw = document.getElementById("pw").value;
	        	var checkpw = document.getElementById("checkpw").value;
	        	
	        	if(checkpw == ""){
	        		document.getElementById("checkpwtext").innerHTML="<font color=red >재확인 패스워드를 입력하세요.<span>"
	        	} else if(pw != checkpw){
	        		document.getElementById("checkpwtext").innerHTML="<font color=red >패스워드가 일치하지 않습니다.<span>"
	        	} else {
	        		document.getElementById("checkpwtext").innerHTML="<font color=blue >패스워드가 일치합니다.<span>"
	        	} 
			}
			
			function check() {
				var pw = document.getElementById("pw").value;
	        	var checkpw = document.getElementById("checkpw").value;
	        	
	        	if(checkpw == ""){
	        		alert("재확인 패스워드를 입력하세요.");
	        	} else if(pw != checkpw){
	        		alert("패스워드가 일치하지 않습니다.");
	        	} else {
	        		var form = $('#form');
					form.attr('action','/host/updateinfo');
					form.attr('method','post');
					form.submit();
	        	} 
			}
		</script>
	</head>
	<body>
		<form id = "form">
			<table border="1" style="border:  1px solid gray;">
			 	<c:forEach var="list" items="${list}">
				 	<tr>
						<th>이름</th>
						<td colspan="4"><c:out value="${list.name}"/></td> 
					</tr>
					<tr>
						<th>생년월일</th>
						<td colspan="4"><c:out value="${list.birth}"/></td> 
					</tr>
					<tr>
						<th>아이디</th>
						<td colspan="4"><c:out value="${list.id}"/></td> 
					</tr>
					<tr>
						<th>비밀번호</th>
						<td colspan="3"><input type="password" id="pw" name="password"></td>
						<td><p id="checkpwtext"></p></td> 
					</tr>
					<tr>
						<th>비밀번호 재확인</th>
						<td colspan="3"><input type="password" id="checkpw"></td>
						<td><input type="button" value="중복확인" onClick="pwcheck()"></td> 
					</tr>
					<tr>
						<th>전화번호</th>
						<td colspan="4"><input type="tel" name="phone_num" value="<c:out value="${list.phone_num}"/>"></td> 
					</tr>
					<tr>
						<th>E-mail</th>
						<td colspan="4"><input type="email" name="email" value="<c:out value="${list.email}"/>"></td> 
					</tr>
					<tr>
						<th>가입일자</th>
						<td colspan="4"><c:out value="${list.reg_date}"/></td> 
					</tr>
					<tr>
						<th>대표자명</th>
						<td colspan="4"><input type="text" name="representative" value="<c:out value="${list.representative}"/>"></td> 
					</tr>
					<tr>
						<th>사업자등록번호</th>
						<td colspan="4"><input type="text" name="corporate_num" value="<c:out value="${list.corporate_num}"/>"></td> 
					</tr>
				</c:forEach>
			</table>
		<br>
		<input type="button" value="수정하기" onClick="check()">
		<a href="/host/showinfo"><input type="button" value="취소"></a>
		</form>
	</body>
</html>