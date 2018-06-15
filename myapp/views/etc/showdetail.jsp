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
	<title>#</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="/resources/css/glnav.css" rel="stylesheet">
    <style>
    	.container {
    		margin-top: 100px;	
    	}   
    	     
        .top-contents {
            margin-bottom: 50px;
        }

        .top-contents .star {
            text-align: center;
        }
        
        .frame {
            width: 500px;
            height: 300px;
            margin: 0 auto 50px;
            border-radius: 50%;
            /* overflow: hidden; */
        }
        .camp-img {
            width: 100%;
            height: 100%;
        }
        
        .hz-line {
            background-color: gray;
            width: 8    0%;
            height: 1px;
            margin: 50px auto;
        }

        .campsite-desc {
            width: 50%;
            margin: 0 auto;
        }
        
        #map {
            margin: 0 auto;
        }
        
        .room-list {
            width: 100%;
            /* border: 1px solid gray; */
            text-align: center;
        }

        .room-list td {
            border: 1px solid rgba(221, 217, 217, 0.5);
            padding: 20px;
        }

        .review-frame, .inquiry-frame {
            border-top: 1px solid gray;
            border-bottom: 1px solid gray;
        }
       
        .user-id {
            margin-bottom: 5px; 
        }

        .star {
            margin-bottom: 5px;
        }

        .date {
            margin-bottom: 10px;
        }
        
        #menu1, #menu2 {
            margin-top: 10px;
        }

        .reply {
            margin-left: 20px;
            background-color: gainsboro;
        }
        
        .glyphicon-star {
        	color: orange;
        }
        
        .glyphicon-star-empty {
        	color: gray;
        }
        
        .glyphicon-star {
        	color: orange;
        }
        
        .glyphicon-star-empty {
        	color: gray;
        }
        
        .bottom-contents {
        	min-height: 200px;
        	margin-bottom: 50px;
        }
        
        .review-list {
        	border-bottom: 1px solid gray;
        	margin-bottom: 10px;
        }
        
        .review-list:last-child {
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
                        <li><a href="/board/showlist_camptip">캠핑 팁</a></li>
                        <li><a href="/board/showlist_campreview">캠핑 후기</a></li>
                        <li><a href="/board/showlist_ask">질문 게시판</a></li>
                    </ul>
               	</li> -->               	
                <li class="dropdown">
                	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">고객센터 <span class="caret"></span></a>
                	<ul class="dropdown-menu">
                        <li><a href="/board/showlist_faq">FAQ</a></li>
                        <li><a href="/board/showlist_notice">공지사항</a></li>
                        <li><a href="/board/showlist_one2one">1:1 문의</a></li>
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
	
    <div class="container">
        <div class="top-contents">
            <div class="frame"> 
                <img src="/resources/fileupload/${list[0].saveFileName}" alt="캠핑장 이미지" class="camp-img">
            </div>
            <h2 align="center" class="campsite-name">${list[0].campsite_name}</h2>
            <div class="star">
            	<c:if test="${list[0].score le 0}">
              		<c:forEach varStatus="status" begin="1" end="5">
              			<span class="glyphicon glyphicon-star glyphicon-star-empty"></span>
              		</c:forEach>
              	</c:if>
              	
              	<c:if test="${list[0].score gt 0}">
	               	<c:forEach varStatus="status" begin="1" end="5">		                                		
	               		<c:if test="${list[0].score ge status.current}">
	               			<span class="glyphicon glyphicon-star"></span>
	               		</c:if>
	               		<c:if test="${list[0].score lt status.current}">
	               			<span class="glyphicon glyphicon-star glyphicon-star-empty"></span>
	               		</c:if>			                                		
	               	</c:forEach>		                                	
	               	(<fmt:formatNumber value="${list[0].score}" pattern=".0"/>)
              	</c:if>        
            </div>
        </div>

        <div class="campsite-desc">
            <table class="table table-striped">
                <tr>
                    <th>위치</th>
                    <td class="address">${list[0].address}</td>
                </tr>
                <tr>
                    <th>연락처</th>
                    <td>${list[0].phone_num}</td>
                </tr>
                <tr>
                    <th>캠핑 분류</th>
                    <td>${list[0].campsite_group}</td>
                </tr>
                <tr>
                    <th>편의시설</th>
                    <td>${list[0].comforts}</td>
                </tr>
                <tr>
                    <th>액티비티</th>
                    <td>${list[0].activity}</td>
                </tr>
            </table>       
        </div>                    
            
        <div id="map" style="width: 50%; height: 250px;"></div>
         
        <div class="hz-line"></div>
               
        <form action="/user/bookinginprogress_1" method="post" > 
        <div class="room-frame">                            
            <div class="form-group col-sm-6">
                <div class='input-group date' id='datetimepicker1'>
                    <input type='text' class="form-control" name="checkin" placeholder="체크인" required />
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
            </div>               
        	<input hidden="${list[0].campsite_no}" name="campsite_no" value="${list[0].campsite_no}">
      		<input hidden="${list[0].room_no}" name="room_no" value="${list[0].room_no}">
            <div class="form-group col-sm-6">
                <div class='input-group date' id='datetimepicker2'>
                    <input type='text' class="form-control" name="checkout" placeholder="체크아웃" required />
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
            </div>
            
			<%pageContext.setAttribute("crlf", "\r\n");%>
            <div class="room-contents">
                <table class="room-list">
                	
	                	<c:forEach var="list" items="${list}">
		                    <tr>
		                        <td class="col-sm-3" rowspan="3">
		                            <img src="/resources/campingroom/${list.roomSaveFileName}" alt="${list.roomFilename}">
		                        </td>
		                        <td class="col-sm-6">
		                            <strong>${list.room_name}</strong>
		                        </td>
		                        <td class="col-sm-2" rowspan="3" style="color: red">
		                            <strong><fmt:formatNumber value="${list.price}" pattern="#,###"/></strong> 원		                            		                             
		                        </td>		                        
		                        <td class="col-sm-1" rowspan="3">
		                            <input type="submit" class="btn btn-primary" value="예약하기">
		                        </td>
		                    </tr>	 
		                    <tr>
		                    	<c:set var = "explanation" value = "${list.explanation}"/>		                    	
		                        <td>${fn:replace(explanation, crlf, "</br>")}</td>
		                    </tr>
		                    <tr>
		                    	<c:set var = "attension" value = "${list.attension}"/>		                    	
		                        <td>${fn:replace(attension, crlf, "</br>")}</td>		                        
		                    </tr>
	                    </c:forEach>
                    
                </table>
            </div>
            
            <div class="hz-line"></div>
            
            <div class="bottom-contents">
                <ul class="nav nav-tabs">                
                    <li class="active"><a data-toggle="tab" href="#menu1">리뷰</a></li>
                    <li><a data-toggle="tab" href="#menu2">문의</a></li>                
                </ul>            
                <div class="tab-content">
                    <div id="menu1" class="tab-pane fade in active">                    
                        <div class="review-frame">
                        	<c:forEach var="review" items="${review}">
                        		<div class="review-list">
		                            <div class="user-id">
		                                <strong>${review.user_id}</strong> 
		                            </div>
		                            
		                            <div class="review">
		                                <p>${review.content}</p>
		                            </div>
		                       
		                            <div>
		                            	<c:forEach varStatus="status" begin="1" end="5">		                                		
	                                		<c:if test="${review.score ge status.current}">
	                                			<span class="glyphicon glyphicon-star"></span>
	                                		</c:if>
	                                		<c:if test="${review.score lt status.current}">
	                                			<span class="glyphicon glyphicon-star glyphicon-star-empty"></span>
	                                		</c:if>			                                		
	                                	</c:forEach>
	                                	
	                                	<c:set var = "date" value = "${review.reg_date}"/>
			                          	${fn:substring(date, 0, 10)}	                                
		                            </div>
                        		</div>
                            </c:forEach>
                        </div>               
                    </div>
                    
                    <div id="menu2" class="tab-pane fade">
                        <div class="inquiry-frame">
                            <div class="user">
                                <strong>son</strong>
                                <span>2018-03-01</span>
                                <p>밤에 춥지 않을까요?</p>
                            </div>
                            <div class="reply">
                                <strong>판매자</strong>
                                <span>2018-03-02</span>
                                <p>물 좋고 공기 맑아서 괜찮습니다. 고객님.</p>
                            </div>
                        </div>
                    </div>
                </div>           
            </div>
        </div>
       </form>
        
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.1/moment.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>
    <script src="/js/ko.js"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=33ce5896736377936ebe7d42238ed01f&libraries=services"></script>    

    <script type="text/javascript">       
        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
            mapOption = {
                center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
                level: 8 // 지도의 확대 레벨
            };  

        // 지도를 생성합니다    
        var map = new daum.maps.Map(mapContainer, mapOption); 
        // 지도에 확대 축소 컨트롤을 생성한다
		var zoomControl = new daum.maps.ZoomControl();

		// 지도의 우측에 확대 축소 컨트롤을 추가한다
		map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);
        
        var campsite_name;
        var address;

        var tmp = document.getElementsByClassName('campsite-name');
        tmp = tmp.item(0);
        campsite_name = tmp.firstChild.nodeValue;
        
        tmp = document.getElementsByClassName('address');   
        tmp = tmp.item(0);
        address = tmp.firstChild.nodeValue;

        // 주소-좌표 변환 객체를 생성합니다        
        var geocoder = new daum.maps.services.Geocoder();
        geocoder.addressSearch(address, function(result, status) {            
            if (status === daum.maps.services.Status.OK) {
                var coords = new daum.maps.LatLng(result[0].y, result[0].x);

                // 결과값으로 받은 위치를 마커로 표시합니다
                var marker = new daum.maps.Marker({
                    map: map,
                    position: coords
                });

                // 인포윈도우로 장소에 대한 설명을 표시합니다
                var infowindow = new daum.maps.InfoWindow({
                    content: `<div style="width:150px;text-align:center;padding:6px 0;">`+ campsite_name + `</div>`
                });
                infowindow.open(map, marker);

                // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                map.setCenter(coords);
            } 
        });
        
        $(function () {
            $('#datetimepicker1').datetimepicker({               
                locale: 'ko',
                format: 'YYYY-MM-DD',
                minDate: moment()
            });
            $('#datetimepicker2').datetimepicker({
                locale: 'ko',
                format: 'YYYY-MM-DD',
                minDate: moment(),
                useCurrent: false //Important! See issue #1075
            });
            $("#datetimepicker1").on("dp.change", function (e) {                
                $('#datetimepicker2').data("DateTimePicker").minDate(e.date.add(1, 'd'));
            });
            $("#datetimepicker2").on("dp.change", function (e) {
                $('#datetimepicker1').data("DateTimePicker").maxDate(e.date.subtract(1, 'd'));
            });
        });
        
    </script>
                     
</body>
</html>