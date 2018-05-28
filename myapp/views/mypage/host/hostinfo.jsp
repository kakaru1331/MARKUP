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
		<script src="/resources/js/jquery-3.3.1.min.js.js"></script>
		<title>호스트 Mypage</title>
		<link rel="stylesheet" href="/resources/css/bootstrap/css/bootstrap.min.css">
		
		<script type="text/javascript">      
		     
		        function close_pop(flag) {
		        	$('#popup').hide();
		        };
		        
		        function updatehost(flag) {
		        	$('#popup').show();   
					var form = $('#form');
					form.attr('action','/host/auth_up');
					form.attr('method','post');		
				};
				
				function deletehost(flag) {
					$('#popup').show();
					var form = $('#form');
					form.attr('action','/host/auth_de');
					form.attr('method','post');
				};
		</script>
			
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
				    
			.out {
		        display: none;
		        position: fixed; 
		        z-index: 1; 
		        left: 0;
		        top: 0;
		        width: 100%; 
		        height: 100%; 
		        overflow: auto; 
		        background-color: rgb(0,0,0); 
		        background-color: rgba(0,0,0,0.4); 
		        }
		    .in {
		        background-color: #fefefe;
		        margin: 15% auto; 
		        padding: 20px;
		        border: 1px solid #888;
		        width: 30%;
		        }
		    a:link { color: black; text-decoration: none;}
	 		a:visited { color: black; text-decoration: none;}
	 		a:hover { color: black; text-decoration: underline;}
	 		a:hover { text-decoration:none !important}
		</style>
		
	</head>
	<body>
		<a class="btn btn-primary" href="/">홈</a>
	
		<table border="1" style="border: 1px solid gray; text-align: center;">
			<c:forEach var="list" items="${list}">
				<tr>
					<th>아이디</th>
					<td>${list.id}</td>
				</tr>
				<tr>
					<th>이름</th>
					<td>${list.name}</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td>${list.phone_num}</td>			
				</tr>
				<tr>
					<th>이메일</th>
					<td>${list.email}</td>
				</tr>
				<tr>
					<th>생년월일</th>
					<td>${list.birth}</td>
				</tr>
				<tr>
					<th>성별</th>
					<td>${list.gender}</td>
				</tr>
				<tr>
					<th>포인트</th>
					<td>${list.point}</td>
				</tr>
				<tr>
					<th>대표자 성명</th>
					<td>${list.representative}</td>
				</tr>
				<tr>
					<th>사업자번호</th>
					<td>${list.corporate_num}</td>
				</tr>
				<tr>
					<th>등록일시</th>
					<td>${list.reg_date}</td>
				</tr>
			</c:forEach>
		</table>	
<!--- ---------------------------------------------------------------->		
		<div id="popup" class="out">
      		<div class="in">
                <p style="text-align: left;"><span style="font-size: 14pt;"><b><span style="font-size: 18pt;">비밀번호 확인</span></b></span></p>
                <p style="text-align: left; line-height: 1.5;"><b>고객님의 개인정보를 안전하게 보호하기 위해 <span style=" color:blue;">비밀번호</span>를
                <br>다시 한번 입력해주세요.</b></p>
                <hr><br>
                
                <c:forEach var="list" items="${list}">
               		<p style="text-align: left; line-height: 1.5;"><b><span>아이디 : <c:out value="${list.id }"/></span></b></p>
                </c:forEach>
                <br>
      
                <form id="form">
                	<input type="hidden" name="staus" value="update">
                	<p style="text-align: letf; line-height: 1.5;"><b><span>비밀번호 : 
                	<input type="password" name="authpw" size=25 placeholder="비밀번호를 입력하세요."></span></b></p>
                	<br><br><br><br>
                
           			<div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px;">    
            			<span class="pop_bt" style="font-size: 13pt;">
            			<b><input type="submit" value="확인"></b>
               			</span>
            		</div>
            	</form>
            	
	            <div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px;" onClick="close_pop();">
	                <span class="pop_bt" style="font-size: 13pt;" ><b>
	                		닫기
	                </b></span>
	            </div>
      		</div>
   		</div>
   		
   		<a href="/"><input type="button" value="Home"></a>
		<input type="button" value="회원 수정하기" onClick="updatehost();">
		<input type="button" value="회원 탈퇴하기" onClick="deletehost();">
	</body>
</html>