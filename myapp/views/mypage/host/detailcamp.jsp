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
	<link rel="stylesheet" href="/resources/css/glnav.css">
	<style type="text/css">
		.container {
			margin-top: 50px;
		}
		
		.campsite-control {
			text-align: center;
		}
		
		.campsite-img-frame {
			text-align: center;
			margin: 20px;
		}
		
		.campsite-img {
			max-width: 100%;			
		}
		
		.table > tbody > tr > td {
 		    vertical-align: middle;
 		     		    
		}
		
		.room-row td {
			border-right: 1px solid gray;
		}
		
		.room-row td:last-child {
			border: none;
		}
		
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
        <h2>마이 호스팅</h2>
        <div class="contents">            
            <ul class="nav nav-tabs">                
                <li class="active"><a data-toggle="tab" href="#menu1">나의 캠핑장</a></li>
                <li><a data-toggle="tab" href="#menu2">등록 상품</a></li>                
            </ul>
            
            <div class="tab-content">
                <div id="menu1" class="tab-pane fade in active">
                	<c:if test="${!empty list}">
	                	<div class="campsite-img-frame">
		                    <img src="/resources/fileupload/${list[0].saveFileName}" alt="캠핑장 대표 사진" class="campsite-img">
	                	</div>
	                    <table class="table table-hover">
	                        <tbody>
	                        	<%pageContext.setAttribute("crlf", "\r\n");%>
	                            <tr>
	                                <th class="col-sm-2">캠핑장명</th>
	                                <td>${list[0].campsite_name}</td>
	                            </tr>
	                            <tr>
	                                <th>주소</th>
	                                <td>${list[0].address}</td>
	                            </tr>
	                            <tr>
	                                <th>연락처</th>
	                                <td>${list[0].phone_num}</td>
	                            </tr>
	                            <tr>
	                                <th>편의시설</th>
	                                <td>${list[0].comforts}</td>
	                            </tr>
	                            <tr>
	                                <th>액티비티</th>
	                                <td>${list[0].activity}</td>                                         
	                            </tr>
	                            <tr>
	                               <th>캠핑장 상세설명</th>
	                               <c:set var = "explanation" value = "${list[0].explanation}"/>                               
	                               <td>${fn:replace(explanation, crlf, "</br>")}</td>
	                            </tr>
	                            <tr>                            	                            	                            	
	                                <th>주의사항</th>
	                                <c:set var = "attension" value = "${list[0].attension}"/>
	                                <td>${fn:replace(attension, crlf, "</br>")}</td>
	                            </tr>                                
	                        </tbody>
	                    </table>
	                    <div class="campsite-control">
		                    <a href="/host/auth_decamp?campsite_no=${list[0].campsite_no}" class="btn btn-default">삭제</a>
		                    <a href="/host/auth_upcamp?campsite_no=${list[0].campsite_no}" class="btn btn-success">수정</a>                    
	                    </div>                	
                	</c:if>
                	
                	<c:if test="${empty list}">
                		<h3>캠핑장을 등록해보세요!</h3>                		
                		<a href="/host/addcamp" class="btn btn-primary">캠핑장 등록하기</a>
                	</c:if>
                </div>
                
                <div id="menu2" class="tab-pane fade">
                	<c:if test="${!empty list}">
	                    <table class="table table-hover">
	                        <thead>
	                            <tr>
	                                <th>상품 이미지</th>
	                                <th>상품명</th>
	                                <th>분류</th>
	                                <th>수용인원</th>
	                                <th>수량</th>
	                                <th>가격</th>
	                                <th>메뉴</th>
	                            </tr>                            
	                        </thead>
	                        <tbody>                        	
		                       	<c:forEach var="list" items="${list}">
		                            <tr class="room-row">
		                                <td class="align-middle">
		                                	<img src="/resources/campingroom/${list.roomSaveFileName}" alt="상품 이미지">		                                	
		                                </td>
		                                <td class="align-middle">${list.room_name}</td>
		                                <td class="align-middle">${list.room_group}</td>
		                                <td class="align-middle">${list.accept_people}명</td>
		                                <td class="align-middle">${list.amount}개</td>
		                                <td class="align-middle">${list.price} 포인트</td>
		                                <td>
		                                    <a href="#" class="btn btn-default">삭제</a>
		                                    <a href="#" class="btn btn-success">수정</a>
		                                </td>
		                            </tr>
	                          	</c:forEach>
	                        </tbody>
	                    </table>
                    </c:if>
                    
                    <c:if test="${empty list}">
                    	<h3>캠핑 상품을 등록해보세요!</h3>
                		<a href="/host/roomform" class="btn btn-success">캠핑상품 등록하기</a>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
	<script src="/resources/js/jquery-3.3.1.min.js.js"></script>
	<script src="/resources/css/bootstrap/js/bootstrap.min.js"></script>	
</body>
</html>