<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel ="stylesheet" href="css/bootstrap.css">
<script src="/resources/js/jquery-3.3.1.min.js.js"></script>
<link rel="stylesheet" href="/resources/css/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>#</title>
</head>
<body>
	
<nav class="navbar navbar-default">
<div class ="navbar-header">
<button type="button" class="navbar-toggle collapsed"
	data-toggle="collapse" data-target="#bbs-example-navbar-collapse-1"
	aria-exapnded="false">
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
	<span class="icon-bar"></span>
	</button>
	<a class="navbar-brand" href="main.jsp">JSP 게시판</a>
</div>

<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	<ul class="nav navbar-nav">
		<li><a href="main.jsp">메인</a></li>
		<li class="active"><a href="bbs.jsp">게시판</a></li>
	</ul>
	
	<ul class="nav navbar- nav navbar-right">
		<li class="dropdown">
			<a href="#" class="dropdown-toggle"
			data-toggle="dropdown" role="button" aria-haspopup="true"
			aria-expanded="false">접속하기<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="login.jsp">로그인</a></li>
				<li><a href="join.jsp">회원가입</a></li>
			</ul>
		</li>	
	</ul>
	
	
	<ul class="nav navbar- nav navbar-right">
		<li class="dropdown">
			<a href="#" class="dropdown-toggle"
			data-toggle="dropdown" role="button" aria-haspopup="true"
			aria-expanded="false">회원관리<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li><a href="logoutAction.jsp">로그아웃</a></li>
			</ul>
		</li>	
	</ul>
	
</div>
</nav>
	<div class="container">
		<div class="row">
		<table class ="table table-striped" style="border:1px solid #dddddd">
			<thead>
				<tr>
					<th colspan="3" style="background-color:#eeeeee; text-align: center;">게시판 글보기</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td style="width: 20%;">글제목</td>
					<td colspan="2">여기 캠핑장이</td>
				</tr>
				<tr>
					<td>작성자</td>
					<td colspan="2">홍길동</td>
				</tr>
				<tr>
					<td>작성일자</td>
					<td colspan="2">2018-05-18</td>
				</tr>
				<tr>
					<td>내용</td>
					<td colspan="2" style="min-height:200px; text-align:left;"> 
					제생각엔 여기보단 저기가 더 시설이 좋더라고요 다들 방선택할때 이걸로하세요
					제생각엔 여기보단 저기가 더 시설이 좋더라고요 다들 방선택할때 이걸로하세요
					제생각엔 여기보단 저기가 더 시설이 좋더라고요 다들 방선택할때 이걸로하세요
					제생각엔 여기보단 저기가 더 시설이 좋더라고요 다들 방선택할때 이걸로하세요
					제생각엔 여기보단 저기가 더 시설이 좋더라고요 다들 방선택할때 이걸로하세요
					제생각엔 여기보단 저기가 더 시설이 좋더라고요 다들 방선택할때 이걸로하세요</td>
				</tr>
			</tbody>
		</table>
			<a href = "bbs.jsp" class="btn btn-primary">목록</a>
			
			<input type= "submit" class="btn btn-primary pull-right" vlaue="글쓰기">
		</div>
	</div>
	
	
	<table  style ="margin:45px;"  >
		<thead>
				<tr>
					<th>아이디</th>
					<th><a href = "bbs.jsp" class="btn">댓글삭제</a></th>
				</tr>
		</thead>
		<tbody>
				<tr>	
					<td>저도 가보고 싶네요
				</tr>
		</tbody>
	</table>
	<br><br><br>
	<form method="post" action="###">
	<table  class ="table table-striped" style="text-align: center; border:1px solid #dddddd; margin:0 auto;">
			<thead>
				<tr>
					<th colspan="2" style="background-color:#eeeeee; text-align: center;">댓글작성</th>
				</tr>
			</thead>
			<tbody>
				<tr>	
					<td><textarea class="form-control" placeholder="댓글내용" name="bbsContent" maxlength="4096"
					style="height: 50px;"></textarea></td>
				</tr>
			</tbody>
			</table>
	<button type="button" class="btn btn-default btn-lg btn-block">댓글 완료</button>
	</form>
	
	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>