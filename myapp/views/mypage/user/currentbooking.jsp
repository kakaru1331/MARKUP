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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/bootstrap/css/bootstrap.min.css">
    <link href="/resources/css/glnav.css" rel="stylesheet">
    <style>
             
    </style>
</head>
<body>
	<nav class="navbar navbar-default global-nav">          
        <a href="/" class="navbar-brand">
        	<div>
        		<img height="20px" alt="로고" src="/resources/img/logo2.png">	
        	</div>
        </a>        
        <div class="collapse navbar-collapse" id="nav-collapse">
            <ul class="nav navbar-nav">
               	<li><a href="/filter/filterlist">캠핑장 찾기</a></li>
               	<li class="dropdown">
                	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">호스팅 <span class="caret"></span></a>
                	<ul class="dropdown-menu">
                        <li><a href="/host/showcamp">마이호스팅</a></li>
                        <li><a href="/host/addcamp">캠핑장 등록</a></li>   
						<li><a href="/host/roomform">캠핑상품 등록</a></li>                                             
                    </ul>
               	</li>                
                <!-- <li class="dropdown">
                	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">커뮤니티 <span class="caret"></span></a>
                	<ul class="dropdown-menu">
                        <li><a href="#">캠핑 팁</a></li>
                        <li><a href="#">캠핑 후기</a></li>
                        <li><a href="#">질문 게시판</a></li>
                    </ul>
               	</li> -->               	
                <li class="dropdown">
                	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">고객센터 <span class="caret"></span></a>
                	<ul class="dropdown-menu">
                        <li><a href="#">FAQ</a></li>
                        <li><a href="/board/shownotice">공지사항</a></li>
                        <li><a href="#">1:1 문의</a></li>
                        <li><a href="#">나의 문의 내역</a></li>
                    </ul>
               	</li>
                
                <li><a href="#">어바웃</a></li>
            </ul>
            
            <ul class="nav navbar-nav navbar-right">
            	<c:if test="${empty sessionScope.id}">
	            	<li class="dropdown"><a href="/common/login">로그인</a></li>
	          		<li class="dropdown"><a href="/common/signup">회원가입</a></li>            	
            	</c:if>
            	
				<c:if test="${!empty sessionScope.user_no}">
	                <li class="dropdown">
	                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">마이 페이지 <span class="caret"></span></a>
	                    <ul class="dropdown-menu">
	                        <li><a href="#">개인정보 수정</a></li>
	                        <li><a href="/user/currentbooking_user">예약 내역</a></li>
	                        <li><a href="/user/showbasket">장바구니</a></li>
	                        <li><a href="/common/logout">로그아웃</a></li>
	                    </ul>
	                </li>
				</c:if>
				
				<c:if test="${!empty sessionScope.host_no}">
					<li class="dropdown">
	                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">마이 페이지 <span class="caret"></span></a>
	                    <ul class="dropdown-menu">
	                        <li><a href="/host/showinfo">개인정보 수정</a></li>
	                        <li><a href="/user/currentbooking_user">예약 내역</a></li>	                        
	                        <li><a href="/common/logout">로그아웃</a></li>
	                    </ul>
	                </li>
				</c:if>
            </ul>      
        </div>
    </nav>
    
    <div class="container">
        <div class="booking">
            <h3>나의 예약 내역</h3>
            <ul class="nav nav-tabs">                
                <li class="active"><a data-toggle="tab" href="#menu1">예약</a></li>
                <li><a data-toggle="tab" href="#menu2">완료</a></li>
                <li><a data-toggle="tab" href="#menu3">취소</a></li>
            </ul>
            
            <div class="tab-content">
                <div id="menu1" class="tab-pane fade in active">
                    <table class="table">
                        <thead>
                            <tr>
                            	<th>No.</th>
                                <th>캠핑장명</th>
                                <th>상품명</th>
                                <th>날짜</th>
                                <th>결제일</th>
                                <th colspan="2">메뉴</th>
                            </tr>
                        </thead>
	                      <c:if test="${!empty result }">
		                      <c:forEach var="result" items="${result}" varStatus="status">
				                  <tbody>
				                      <tr class="info">
				                      	<td>${status.count}</td>
				                          <td>${result.campsite_name}</td>
				                          <td>${result.room_name}</td>
				                          <td>${result.check_in} ~ ${result.check_out}</td>
				                          <td>${result.reg_date}</td>
				                          <td><a href="#">문의하기</a></td>
				                          <td><a href="/user/cancelbooking_user?book_no=${result.book_no}">예약취소</a></td>
				                      </tr>
				                  </tbody>
		                  	</c:forEach>
	                  	</c:if>
                    </table>
                </div>
                
                <div id="menu2" class="tab-pane fade">
                        <table class="table">
                            <thead>
                                <tr>
                                	<th>No.</th>
                                    <th>캠핑장명</th>
                                    <th>상품명</th>
                                    <th>날짜</th>
                                    <th>결제일</th>                                    
                                </tr>
                            </thead>
                            <c:if test="${!empty done }"></c:if>
                            <c:forEach var="done" items="${done}" varStatus="status">
	                            <tbody>
	                                <tr class="success">
	                               		<td>${status.count}</td>
	                                    <td>${done.campsite_name}</td>
	                                    <td>${done.room_name}</td>
	                                    <td>${done.check_in} ~ ${done.check_out}</td>
                                		<td>${done.reg_date}</td>                                 
	                                </tr>
	                            </tbody>
                            </c:forEach>
                        </table>
                    </div>
                       
                <div id="menu3" class="tab-pane fade">
                    <table class="table">
                        <thead>
                            <tr>
                            	<th>No.</th>
                                <th>캠핑장명</th>
                                <th>상품명</th>
                                <th>날짜</th>
                                <th>결제일</th>                                    
                            </tr>
                        </thead>
                        <c:if test="${!empty cancelresult }"></c:if>
                         <c:forEach var="cancelresult" items="${cancelresult}" varStatus="status">
                         <tbody>
                             <tr class="danger">
                                 <td>${status.count}</td>
                                 <td>${cancelresult.campsite_name}</td>
                                 <td>${cancelresult.room_name}</td>
                                 <td>${cancelresult.check_in} ~ ${cancelresult.check_out}</td>
                            		<td>${cancelresult.reg_date}</td>                                
                             </tr>
                         </tbody>
                        </c:forEach>
                    </table>
                </div>                                    
            </div>
        </div>
        
        <a href="/" class="btn btn-default">홈으로</a>
    </div>
    

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>