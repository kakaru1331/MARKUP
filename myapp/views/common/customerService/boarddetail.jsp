<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>${title} | 하이캠퍼!</title>
	<link rel="stylesheet" href="/resources/css/bootstrap/css/bootstrap.min.css">
	<link href="/resources/css/glnav.css" rel="stylesheet">
	<style>
		#content-wrap {
			margin-top: 50px;
		}
		
		.post-header {
			font-size: 1.2rem;
			color: gray;
			display: inline-block;
		}
		
		.post-control {
			display: inline-block;					
		}
		
		.post-edit, .post-delete {
			text-decoration: none;
			cursor: pointer;
			font-size: 1.2rem;
			color: gray;
		}
		
		.post-content {
			min-height: 200px;
		}
		
		.title {
			font-size: 2rem;
		}
		
		.post-frame {
			margin-bottom: 20px;
		}
		
		.table-post {
			border-bottom: 1px solid gray;
		} 
		
		.control {
			min-height: 50px;
		}
		
		.comment-frame {
			margin-top: 20px;
		}
		
		.comment-form-frame {
			margin-top: 50px;
		}
		
		.btn-submit-comment {
			width: 100%;
			line-height: 94px;
			padding: 0;
		}
		
		.comment-edit, .comment-delete {
			text-decoration: none;
			cursor: pointer;
			font-size: 1.2rem;
			color: gray;
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
               	<li><a href="/filter/showlist">캠핑장 찾기</a></li>
               	<c:if test="${empty sessionScope.user_no}">
	               	<li class="dropdown">
	                	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">호스팅 <span class="caret"></span></a>
	                	<ul class="dropdown-menu">
	                        <li><a href="/host/showcamp">마이호스팅</a></li>
	                        <li><a href="/host/addcamp">캠핑장 등록</a></li>   
							<li><a href="/host/roomform">캠핑상품 등록</a></li>                                             
	                    </ul>
	               	</li>
               	</c:if>
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
	                        <li><a href="/user/showinfo">개인정보 수정</a></li>
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
	                        <li><a href="/host/currentbooking_host">예약 내역</a></li>	                        
	                        <li><a href="/common/logout">로그아웃</a></li>
	                    </ul>
	                </li>
				</c:if>
            </ul>      
        </div>
    </nav>
		
	<div id="content-wrap" class="container">
		<div class="post-frame">
			<table class="table table-post">			
				<thead>
					<tr>
						<td>
							<input type="hidden" id="board_group" name="board_group" value="${board_group.board_group}"/>
						</td>
					</tr> 
					<tr class="title">
						<th>${board_group.title}</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<c:set var="date" value="${board_group.date}"/>					
						<td>
							<div class="post-header">
								<fmt:formatDate value="${board_group.date}" var="regDate" pattern="yyyy-MM-dd hh:mm"/>
								${board_group.user_id} | ${regDate} | 조회 ${board_group.hit}
							</div>
							
							<c:if test="${board_group.user_id eq sessionScope.id}">
								<div class="post-control pull-right">								
									<a class="post-edit" onclick="location.href='/board/modifyform?board_group=${board_group.board_group}&idx=${board_group.idx}'">
										수정
									</a> |
									<a class="post-delete" onclick="fn_del()">삭제</a>
								</div>							
							</c:if>
						</td>
					</tr>
					<tr>
						<td>
							<div class="post-content">
								${board_group.content}							
							</div>
						</td>
					</tr>
					
					<!-- 이전글 & 다음글  -->
					<c:choose>
						<c:when test="${fn:length(list) == 2 and page.idx == list[0].idx }"> 
							<tr>
								<td><span class="prev">이전</span>이전글이 없습니다.</td>
							</tr>
							<tr>
								<td><span class="next">다음</span><a href="/board/detail?idx=${list[1].idx}">${list[1].title}</a></td> 
							</tr>
						</c:when>
						
						<c:when test="${fn:length(list) == 2 and page.idx < list[0].idx }"> 
							<tr>									 
								<td><span class="prev">이전</span><a href="/board/detail?idx=${list[0].idx}">${list[0].title}</a></td> 
							</tr>																			
							<tr>
								<td><span class="next">다음</span>다음글이 없습니다.</td>
							</tr>
						</c:when>
						<c:when test="${fn:length(list) == 3 and page.idx < list[0].idx}">
							<tr>
								<td><span class="prev">이전</span><a href="/board/detail?idx=${list[0].idx}">${list[0].title}</a></td>
							</tr>
							<tr>
								<td><span class="next">다음</span><a href="/board/detail?idx=${list[2].idx}">${list[2].title}</a></td>
							</tr>
						</c:when>
					</c:choose>
				</tbody>
			</table>				
			
			<div class="control">							 
				<button class="btn btn-default pull-right" 
					onclick="location.href='/board/showlist?board_group=${board_group.board_group}'">
					목록
				</button>
			</div>
		</div>
			
		<div class="comment-frame">
			<c:if test="${sessionScope.board_group != 5 && sessionScope.board_group != 6}">
				<table class="table table-striped">
					<c:if test="${!empty comlist}">
						<tbody>
							<%pageContext.setAttribute("crlf", "\r\n");%>							
							<c:forEach var="comlist" items="${comlist}">
								<tr>
									<td>
										<span class="comment-id">
											${comlist.comment_id}										
										</span>
																				
										<span class="pull-right">
											<fmt:formatDate value="${comlist.reg_date}" var="regDate" pattern="yyyy-MM-dd"/>
											${regDate}
											<c:if test="${sessionScope.id == comlist.comment_id}">
												<a class="comment-edit" onClick="up(${comlist.comment_no});">
													| 수정
												</a> |
												<a class="comment-delete" onClick="de(${comlist.comment_no});">
													삭제
												</a>										
												
												<form id="de">
													<input type="hidden" name="comment_no" id="comment_no">
												</form>
											</c:if>
										</span>
									</td>
								</tr>
								<tr>									
									<c:set var = "contents" value = "${comlist.contents}"/>			                        
			                        <td>${fn:replace(contents, crlf, "</br>")}</td>									
								</tr>
							</c:forEach>
						</tbody>
					</c:if>
				</table>
				
				<div class="comment-form-frame" style="width: 100%;">
					<form action="/board/writecomment" method="post">
						<table class="table">
							<c:if test="${!empty sessionScope.id}">
								<tr>
									<td class="col-sm-10 textarea-comment">
										<textarea class="form-control textarea-comment" 
										name="contents" placeholder="댓글 내용을 입력해주세요" rows="4" required></textarea>
									</td>
									<td class="col-sm-2 submit-comment">
										<input type="submit" class="btn btn-primary btn-submit-comment" value="댓글 쓰기">
									</td>
								</tr>					
							</c:if>
						</table>
					</form>
									
					<c:if test="${empty sessionScope.id}">
						<table class="table">								
							<tr>
								<td class="col-sm-10 textarea-comment">
									<textarea class="form-control textarea-comment" 
									name="contents" placeholder="비회원은 댓글을 작성할 수 없습니다" rows="4" required></textarea>
								</td>
								<td class="col-sm-2 submit-comment">
									<a href="/common/login">
										<input type="button" class="btn btn-primary btn-submit-comment" value="로그인">
									</a>									
								</td>
							</tr>
						</table>						
					</c:if>
				</div>				
			</c:if>	
		</div>
	</div>
			
	<script src="/resources/js/jquery-3.3.1.min.js.js"></script>
	<script src="/resources/css/bootstrap/js/bootstrap.min.js"></script>		
	<script type="text/javascript">
		function fn_del(){
			if (confirm("정말 삭제하시겠습니까?") == true) {
				location.href="/board/delete?idx="+${board_group.idx}+"&board_group="+${board_group.board_group};
			} else {				
				return false;
			}	
		}
		
		var	url = "/board/showcomment";	
		
		function de(no) {
			var conf = confirm("정말 삭제하시겠습니까?");
			
	        if (true == conf){
	    		var form = $('#de');
	    		$('#comment_no').val(no);
	   			form.attr('action','/board/deletecomment');
	    		form.attr('method','post');
	    		form.submit()
	        } else if(false == conf) {
	        	document.location.href = url;
	        }
		};
		
		function up(comment_no) {
			window.name = "parentForm"
			window.open("/board/showupdate_form?comment_no="+comment_no, "updateform", "width=600, height=400, resizable = no, scrollbars = 1");
		};		
	</script>
</body>
</html>