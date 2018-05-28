<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>알림</title>
</head>
<body>
	<script>
	var success = '${YES}';
	var fail = '${NO}'
	var forward = '${forward}';
	
	var fun = function(){			
		if(success === "yes"){
			alert("처리완료");
		}else if (fail === "no"){		
			alert("오류발생");
		}
		document.location.href = forward;		
		};		
		
		fun();
	</script>	
</body>
</html>