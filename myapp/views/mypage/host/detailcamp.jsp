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
	<style type="text/css">
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
	</style>	
</head>
<body>
<div class="container">
        <h2>마이 호스팅</h2>
        <div class="contents">            
            <ul class="nav nav-tabs">                
                <li class="active"><a data-toggle="tab" href="#menu1">나의 캠핑장</a></li>
                <li><a data-toggle="tab" href="#menu2">등록 상품</a></li>                
            </ul>
            
            <div class="tab-content">
                <div id="menu1" class="tab-pane fade in active">
                	<div class="campsite-img-frame">
	                    <img src="/resources/fileupload/${list[0].saveFileName}" alt="캠핑장 대표 사진" class="campsite-img">
                	</div>
                    <table class="table table-hover">
                        <tbody>
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
                               <td>${list[0].explanation}</td>
                            </tr>
                            <tr>
                                <th>주의사항</th>
                                <td>${list[0].attension}</td>
                        </tbody>
                    </table>
                    <div class="campsite-control">
	                    <a href="/host/auth_decamp?campsite_no=${list[0].campsite_no}" class="btn btn-default">삭제</a>
	                    <a href="/host/auth_upcamp?campsite_no=${list[0].campsite_no}" class="btn btn-success">수정</a>                    
                    </div>
                </div>
                
                <div id="menu2" class="tab-pane fade">
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
                        	<c:if test="${!empty list}">
	                        	<c:forEach var="list" items="${list}">
		                            <tr>
		                                <td class="align-middle">
		                                	<img src="/resources/campingroom/${list.roomSaveFileName}" alt="상품 이미지">		                                	
		                                </td>
		                                <td class="align-middle">${list.room_name}</td>
		                                <td class="align-middle">${list.room_group}</td>
		                                <td class="align-middle">${list.accept_people}</td>
		                                <td class="align-middle">${list.amount}</td>
		                                <td class="align-middle">${list.price}</td>
		                                <td>
		                                    <a href="#" class="btn btn-default">삭제</a>
		                                    <a href="#" class="btn btn-success">수정</a>
		                                </td>
		                            </tr>
                            	</c:forEach>
                            </c:if>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
	<script src="/resources/js/jquery-3.3.1.min.js.js"></script>
	<script src="/resources/css/bootstrap/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>