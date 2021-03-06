<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>#</title>
	<link rel="stylesheet" href="/resources/css/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Jua|Nanum+Gothic" rel="stylesheet">
	<link href="/resources/css/glnav.css" rel="stylesheet">
	<style type="text/css">
		h3 {
			font-family: 'Jua', sans-serif;			
		}		

		p {
			font-family: 'Nanum Gothic', sans-serif;
			font-size: 1.6rem;
		}
		
		.legacy {
			text-align: center;
			margin-top: 50px;
			/* margin-bottom: 50px; */
			height: 100vh;			
			/* display: none; */
		}
				
		section {
			background-attachment: fixed;
			height: 100vh;
			background-size: cover;
		}

		.search {
			margin-top: 50px;
			background-image: url('/resources/img/search-bg.jpg');
		}		

		.search-content {
			width: 50%;
			position: relative;
			left: 50%;
			top: 30%;
			transform: translateX(-50%) translateY(-50%);
			text-align: center;			
		}

		.search-info {
			margin-bottom: 24px;
		}
		
		.input-search {
			display: inline-block;
			width: 50%;			
			padding: 1.2rem;			
			border-top-right-radius: 0;
			border-bottom-right-radius: 0;
			border: 1px solid rgba(128, 128, 128, 0.5);			
		}

		.btn-search {
			background-color: rgba(235, 229, 229, 0.918);
			border: none;
			padding: 1.25rem;
			border-top-right-radius: 1rem;
			border-bottom-right-radius: 1rem;
		}

		.fa-search {
			padding: 0 2rem;
		}				
		
		.quick-search {
			background-image: url('/resources/img/sky.jpg');
			color: white;
			opacity: 0.9;
			overflow: auto;			
		}

		.img-frame {
			height: 100vh;			
		}

		.quick-search figure {
			margin-top: 22vh;			
		}

		.quick-search img {
			height: 50vh;
			border-top-left-radius: 1rem;
			border-top-right-radius: 1rem;
			width: 100%;			
		}		
		
		.quick-search figcaption {
			text-align: center;
			border-right: 1px solid white;
			border-bottom: 1px solid white;
			border-left: 1px solid white;
			border-bottom-left-radius: 1rem;
			border-bottom-right-radius: 1rem;
			padding: 1.1rem;
		}

		.quick-search figcaption h3 {
			margin-top: 0;
		}

		.quick-search h3:after {
			content: '';
			display: block;
			width: 30%;
			margin: 1rem auto;						
			border-bottom: 1px solid white;
		}

		.hosting {
			background-image: url('https://images.unsplash.com/photo-1501950952862-f7f6f7c2ee33?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=2cbd13895964dccfebb0633af3b5e597&auto=format&fit=crop&w=1349&q=80');			
		}

		.hosting-content {
			width: 50%;
			position: relative;
			left: 50%;
			top: 40%;
			transform: translateX(-50%) translateY(-50%);
			text-align: center;
			color: white;
		}		

		.btn-camp {
			padding: 1.3rem;
			margin: 1.5rem;
		}

		.hosting-content h3 {
			width: fit-content;							
			margin: 0 auto;	
			padding: 1rem;
			background: rgba(218, 182, 182, 0.8);
			color: black;
		}

		.hosting-content p {			
			max-width: 30%;
			margin: 1rem auto;
			line-height: 3rem;
			background: rgba(255, 255, 255, 0.8);
			color: black;
			font-weight: bolder;
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

	<section class="legacy">
		<div class="container">
			<ul>
			
				<li>
					<a href="/host/currentbooking_host">현재 예약내역</a>
				</li>
				
				<li>
					<a href="/host/currentbookingdetail_host">현재 예약내역 상세보기</a>
				
				<li>
					<a href="/host/currentbooking_host">현재 예약내역</a>
				</li>
				<li>
					<a href="/host/currentbookingdetail_host">현재 예약내역 상세보기</a>				
				</li>
				<li>
					<a href="/common/hostfind_id_form">호스트 아이디 찾기</a>
				</li>
				<li>
					<a href="/common/userfind_id_form">사용자 아이디 찾기</a>	
				</li>
				<li>
					<a href="/etc/chat/enterChat">웹소켓채팅</a>	
				</li>
				<li>
					<a href="/host/showinfo">호스트정보</a>
				</li>
				<li>
					<a href="/host/showinfo">호스트정보</a>

				</li>

				<li>
					<a href="/board/showcomment">댓글 작성폼</a>

				</li>
				<li>

					<a href="/filter/filterlist">필터검색</a>

				</li>
				<li>
					<a href="/user/testUserBooking">테스트</a>
				</li>
				<li>
					<a href="/thumbupform">좋아요</a>
				</li>
				<li>아이디: <%= session.getAttribute("id") %></li>				
				<li>유저 넘버: <%= session.getAttribute("user_no") %></li>
				<li>호스트 넘버: <%= session.getAttribute("host_no") %></li>
			</ul>
	</section>
		
	<section class="search">
		<div class="search-content">
			<div class="search-info">
				<h3>원하는 캠핑장을 검색해보세요!</h3>
				<p>(지역 또는 캠핑 종류로 검색)</p>
			</div>
			<form action="/lookup" method="get" id="form_search">
				<input type="text" id="search" name="search" class="btn input-search"><button type="submit" class="btn-search"><i class="fa fa-search"></i></button>
			</form>
		</div>
	</section>
	
	<section class="quick-search">
		<div class="quick-search-content">
			<div class="col-sm-3 img-frame">
				<figure>
					<a href="#">
						<img src="/resources/img/autocamping.jpg" alt="오토캠핑">
					</a>
				</figure>
				<figcaption>
					<h3>오토캠핑</h3>
					<p>캠핑카를 타고 야영!</p>
				</figcaption>
			</div>

			<div class="col-sm-3 img-frame">
				<figure>
					<a href="#">
						<img src="/resources/img/glamping.jpg" alt="글램핑">
					</a>
				</figure>
				<figcaption>
					<h3>글램핑</h3>
					<p>럭셔리하게 즐기는 캠핑!</p>
				</figcaption>				
			</div>

			<div class="col-sm-3 img-frame">
				<figure>
					<a href="#">
						<img src="/resources/img/backpacking.jpg" alt="백패킹">
					</a>
				</figure>
				<figcaption>
					<h3>백패킹</h3>
					<p>가방 하나 들고 떠나는 낭만 캠핑!</p>
				</figcaption>
			</div>

			<div class="col-sm-3 img-frame">
				<figure>
					<a href="#">
						<img src="/resources/img/trailer.jpg" alt="카라반">
					</a>
				</figure>
				<figcaption>
					<h3>카라반</h3>
					<p>만능 카라반과 함께 즐거운 캠핑!</p>
				</figcaption>
			</div>
		</div>
	</section>

	<section class="hosting">
		<div class="hosting-content">
			<h3>호스트가 되어보세요!</h3>
			<p>간단한 캠핑장 등록 과정을 체험해보세요. 등록은 쉽지만 <strong style="color: rgb(255, 166, 0);">홍보 효과</strong>는 강력합니다!</p>
			<a href="/host/addcamp" class="btn btn-primary btn-camp">캠핑장 등록하기</a>
		</div>
	</section>

	<script src="/resources/js/jquery-3.3.1.min.js.js"></script>
	<script src="/resources/css/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
