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
	


    
	<a class="navbar-brand" href="####">게시판 홈</a>
	
		<div class="container">
		<div class="row">
		<form method="post" action="writeAction.jsp">
		<table class ="table table-striped" style="text-align: center; border:1px solid #dddddd">
			<thead>
				<tr>
					<th colspan="2" style="background-color:#eeeeee; text-align: center;">1대1 문의하기</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="text" class="form-control" placeholder="글제목" name="bbsTitle" maxlength="50"></td>
				</tr>
				<tr>	
					<td><textarea class="form-control" placeholder="글내용" name="bbsContent" maxlength="2048"
					style="height: 350px;"></textarea></td>
				</tr>
				<tr>
					<td>이메일을 적어주세요</nbsq></nbsq>
					<input type="text" placeholder="이메일" name="CuEmail" maxlength="50"></td>
				</tr>
			</tbody>
			</table>
			<input type= "submit" class="btn btn-primary pull-right" vlaue="글쓰기">
			</form>
		</div>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>