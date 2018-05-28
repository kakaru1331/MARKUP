<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="/resources/js/jquery-3.3.1.min.js.js"></script>
<link rel="stylesheet" href="/resources/css/bootstrap/css/bootstrap.min.css">
<link rel ="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>#</title>
<style type="text/css">
	body {
		height: 10000px;
	}
	.global-nav {
		background-color: orange; 
		width: 100%;
		position: fixed;
		top: 0;
		z-index: 100;
	}
	
	section {
		text-align: center;
		margin-top: 200px;
	}
	
	#promotion {
		width: 50%;
		margin: 30px auto;
	}
	
	#promotion img {
		width: 100%;
		height: 300px;
	}
	
	.quick-search img {
		width: 100%;
		height: 200px;
	}
	.boardShow{
	margin: 30px;
	padding: 100px;
	}
	
	#etcphone1{
	text-align: "center";
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
                <li class="dropdown">
                	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">캠핑장 찾기 <span class="caret"></span></a>
                	<ul class="dropdown-menu">
                		<li><a href="#">서울,경기,인천</a></li>
                		<li><a href="#">강원,대전,세종</a></li>                		
                	</ul>
                </li>                
                <li class="dropdown">
                	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">커뮤니티 <span class="caret"></span></a>
                	<ul class="dropdown-menu">
                        <li><a href="#">캠핑 팁</a></li>
                        <li><a href="#">캠핑 후기</a></li>
                        <li><a href="#">질문 게시판</a></li>
                    </ul>
               	</li>               	
                <li class="dropdown">
                	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">고객센터 <span class="caret"></span></a>
                	<ul class="dropdown-menu">
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">공지사항</a></li>
                        <li><a href="#">1:1 문의</a></li>
                        <li><a href="#">나의 문의 내역</a></li>
                    </ul>
               	</li>
                <li class="dropdown">
                	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">호스팅 <span class="caret"></span></a>
                	<ul class="dropdown-menu">
                        <li><a href="#">호스팅 안내</a></li>
                        <li><a href="/host/addcamp">캠핑장 등록</a></li>                        
                    </ul>
               	</li>
                <li><a href="#" class="btn btn-primary">어바웃</a></li>
            </ul>
            
            <ul class="nav navbar-nav navbar-right">
            	<li class="dropdown"><a href="/common/user/userlogin">로그인</a></li>
          		<li class="dropdown"><a href="/common/user/usersignup">회원가입</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">마이 페이지 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">개인정보 수정</a></li>
                        <li><a href="#">예약 내역</a></li>
                        <li><a href="#">장바구니</a></li>
                        <li><a href="#">로그아웃</a></li>
                    </ul>
                </li>                
            </ul>      
        </div>
    </nav>	
    
	<div class="col-lg-4"></div>
	<div class="col-lg-4"></div>
	<div style="padding-top: 20px;">
	<div class="boardShow">
	<div class="row">
    <div class ="header">
	<a class="navbar-brand" href="####">FAQ</a>
	</div>
		<table class ="table table-striped" style="text-align: center; border:1px solid #dddddd">
			<thead>
				<tr>
					<th style="background-color:#eeeeee; text-align: center;">번호</th>
					<th style="background-color:#eeeeee; text-align: center;">Q</th>
					<th style="background-color:#eeeeee; text-align: center;">A</th>
					
				</tr>
			</thead>
			<tbody>
			
				<tr>
				<td>1</td>
				<td>환불규정</td>
				<td>
				  <div class="form-row">
                  <a href="#menu1" class="a-row default">환불을 원하시면 --</a>
                  </div>
				</td>
				</tr>
				
				<tr>
				<td>2</td>
				<td>안전규정</td>
				<td>
				  <div class="form-row">
                  <a href="#menu1" class="a-row default">안전에 관하여 --</a>
                  </div>
				</td>
				</tr>
				
			
			</tbody>
		</table>
			<br>
			<br>
			<br>
			 <strong>찾기</strong>
    	<select name="etcphone1" id="etcphone1" form="join_form" class="MS_select MS_tel">
    	<option value="">선택</option>            <option value="제목">제목</option>            <option value="내용">내용</option>            <option value="아이디">아이디</option>          
		</select>
		<input type="text" placeholder="검색" name="search">
		<button type="submit"><i class="fa fa-search"></i></button>
		<a href="######" class="btn btn-primary pull-right">1대1문의하러가기</a>
		</div>
	</div>
	</div>
	<div class="pagenation-controls" align="center">                        
     	<ul class="pagination" >                            
                            <li class="disable"><a href="#">이전</a></li>
                            <li class="active"><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">다음</a></li>
                        </ul>                        
                    </div>
	
	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>