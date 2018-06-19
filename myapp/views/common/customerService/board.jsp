<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/resources/css/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>하이캠퍼! | ${boardName}</title>
<style type="text/css">
	.global-nav {
		background-color: orange; 
		width: 100%;
		position: fixed;
		top: 0;
		z-index: 100;
	}
	
	#board-frame {
		margin-top: 100px;
	}
	
	table {
		min-height: 300px;
	}
	
	td, th {
		text-align: center;
	}
	
	.board-name {
		margin: 30px;
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
               	<li><a href="/filter/campsite_group">캠핑장 찾기</a></li>
               	<li class="dropdown">
                	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">호스팅 <span class="caret"></span></a>
                	<ul class="dropdown-menu">
                        <li><a href="/host/showcamp">마이호스팅</a></li>
                        <li><a href="/host/addcamp">캠핑장 등록</a></li>                        
                    </ul>
               	</li>                
              <li class="dropdown">
                	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">커뮤니티 <span class="caret"></span></a>
                	<ul class="dropdown-menu">
                        <li><a href="/board/showlist?board_group=3">캠핑 팁</a></li>
                        <li><a href="/board/showlist?board_group=2">캠핑 후기</a></li>
                        <li><a href="/board/showlist?board_group=1">질문 게시판</a></li>
                    </ul>
               	</li>            	
                <li class="dropdown">
                	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">고객센터 <span class="caret"></span></a>
                	<ul class="dropdown-menu">
                        <li><a href="/board/showlist?board_group=5">FAQ</a></li>
                        <li><a href="/board/showlist?board_group=6">공지사항</a></li>
                        <li><a href="/board/showlist?board_group=7">1:1 문의</a></li>
                    </ul>
               	</li>
                
                <li><a href="#">어바웃</a></li>
            </ul>
            
            <ul class="nav navbar-nav navbar-right">
            	<c:if test="${empty sessionScope.id}">
	            	<li class="dropdown"><a href="/common/login">로그인</a></li>
	          		<li class="dropdown"><a href="/common/signup">회원가입</a></li>            	
            	</c:if>
            	
				<c:if test="${!empty sessionScope.id}">
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
            </ul>      
        </div>
    </nav>	
    
	<div class="container" id="board-frame">
  		<div class="board-name">
	  		<h3>${boardName}</h3>  		
  		</div>
		<table class="table table-board">	
   			<thead>
				<tr>
			    	<th class="col-sm-1">번호</th>
					<th class="col-sm-6">제목</th>
					<th class="col-sm-2">작성자</th>
					<th class="col-sm-2">작성일</th>
					<th class="col-sm-1">조회수</th>
		      	</tr>
   			</thead>   
   			
	    	<c:forEach var="board" items="${board}">
		    	<tbody>
					<tr>
						<td>${board.idx}</td>
						<td>
							<a href="/board/detail?board_group=${board.board_group}&idx=${board.idx}">
								${board.title}
							</a>
						</td> 
						<td>${board.user_id}</td>												
						<c:set var="now" value="<%=new java.util.Date()%>" />						
						<fmt:formatDate value="${now}" var="nowDate" pattern="yyyy-MM-dd"/>
						<fmt:formatDate value="${board.date}" var="regDate" pattern="yyyy-MM-dd"/>
						<td>
							<c:if test="${nowDate > regDate }">
								${regDate}
							</c:if>					
							<c:if test="${nowDate == regDate }">
								<fmt:formatDate value="${board.date}" var="displayHHDD" pattern="HH:MM"/>
								${displayHHDD}
							</c:if>						
						</td>	            
						<td>${board.hit}</td>						
					</tr>	    	
		    	</tbody> 
			</c:forEach>
		</table>
	</div>
	
	<c:if test="${sessionScope.id ne null}">	
		<div class="control" style="text-align: center;">
			<a href="#" class="btn btn-primary" id="btn-post">글쓰기</a>			
		</div>		
	</c:if>
		
	<!-- 페이징  -->
	<c:choose>
		<c:when test="${paging.numberOfRecords ne NULL and paging.numberOfRecords ne '' and paging.numberOfRecords ne 0}">
			<div class="text-center marg-top">
				<ul class="pagination">
					<c:if test="${paging.currentPageNo gt 5}">  											  
						<li><a href="javascript:goPage(${paging.prevPageNo}, ${paging.maxPost})">이전</a></li>
					</c:if>
						<c:forEach var="i" begin="${paging.startPageNo}" end="${paging.endPageNo}" step="1">
			            <c:choose>
			                <c:when test="${i eq paging.currentPageNo}"> 
			                      <li class="active"><a href="javascript:goPage(${i}, ${paging.maxPost})">${i}</a></li>
			                </c:when>
			                	<c:otherwise>
			                    <li><a href="javascript:goPage(${i}, ${paging.maxPost})">${i}</a></li> 
								</c:otherwise>
							</c:choose>
						</c:forEach>
						
					<fmt:parseNumber var="currentPage" integerOnly="true" value="${(paging.currentPageNo-1)/5}"/>
					<fmt:parseNumber var="finalPage" integerOnly="true" value="${(paging.finalPageNo-1)/5}"/>
						
					<c:if test="${currentPage < finalPage}">
						<li><a href="javascript:goPage(${paging.nextPageNo}, ${paging.maxPost})">다음</a></li>
					</c:if> 
				</ul>
			</div>
		</c:when>
	</c:choose>		
		
	<script src="/resources/js/jquery-3.3.1.min.js.js"></script>
	<script src="/resources/css/bootstrap/js/bootstrap.min.js"></script>
	<script>
		function goPage(pages, lines) {
		    location.href = '?' + "pages=" + pages;
		}
		
		var setPostBtnURL = function() {
			var paramIdx = location.href.indexOf('?');
			var param = location.href.slice(paramIdx);
			
			var postBtn = document.querySelector('#btn-post');
			postBtn.setAttribute('href', '/board/addform' + param);
		} 
		
		document.onload = setPostBtnURL();		
	</script>
</body>
</html>