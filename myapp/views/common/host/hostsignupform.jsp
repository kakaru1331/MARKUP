<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>#</title>
	<script src="/resources/js/jquery-3.3.1.min.js.js"></script>
	<link rel="stylesheet" href="/resources/css/bootstrap/css/bootstrap.min.css">
</head>	
<body>

	<form action="/common/hostsignup" method="post" class ="form">
		<table style="border-style: dotted">		
			<tr>
				<td>id</td>
				<td><input type="text" name="id" id = "id"/></td>
				<td><input type= "button" name="check" value="중복확인" id ="check"></td>
			</tr>
			<tr>
				<td>password</td>
				<td><input type="password" name="password" /></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="phone_num" /></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="email" /></td>
			</tr>
			<tr>
				<td>생일</td>
				<td><input type="text" name="birth" /></td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
					<input type="radio" name="gender" value="1"/>남자
					<input type="radio" name="gender" value="2"/>여자
				</td>
			</tr>
			<tr>
				<td>대표자</td>
				<td><input type="text" name="representative" /></td>
			</tr>
			<tr>
				<td>사업자번호</td>
				<td><input type="text" name="corporate_num" /></td>
			</tr>
			<tr>
				<td><button id = "button" class="button" type="button">전송</button></td>
			</tr>
		</table>
	</form>
	
	<script>

		$('#check').on('click', function(){
			
		$.ajax({
			type: "GET"
			,url: "/common/checkid"
			,data:{
				"id":$('#id').val()
			},
			
			success:function(data){
				if(data == "null"){
					alert("사용가능");
					$("#button").click(function(){
						$(".form").submit();
					})	
				}else{
					alert("사용불가능");
					$(".button").click(function(){
						alert("중복된 ID 이니 다른 ID로 입력 부탁드립니다. ")
					})
					
				}	
			},				
		});						
	});
		
	</script>
</body>
</html>

