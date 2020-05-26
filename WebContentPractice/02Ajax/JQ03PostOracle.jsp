<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JQ03PostOracle.jsp</title>
 <script src="../common/jquery/jquery-3.5.1.js"></script>
<!-- 본예제에서는 JSON 라이브러리 json-simple-1.1.1.jar를 추가했다.-->
<!-- 부트스트랩을 사용하기위해 추가했다. -->
<link rel="stylesheet" href="../common/bootstrap4.4.1/css/bootstrap.css" />
<script>
$(function(){
	$("#btnLogin2").click(function(){
		var s_url = "./common/03PostLoginOracle.jsp";
		var s_params = $("#loginFrm").serialize();
		alert(s_params);
		$.post(
			s_url,
			s_params,
			function (responseData) {
				var d = JSON.parse(responseData);
				if(d.result==1){
					console.log(d.message);
					
				}
				alert(typeof(d));
				alert(d.isMember);
			}
		)
	});		
		
		
});

function checkFrm(){
	//form태그의 DOM요소를 가져와서
	var f = document.getElementById("loginFrm");
	//method와 action속성을 JS에서 부여한다.
	f.method = "post";
	f.action = "./common/03PostLoginOracle.jsp";
}
</script>	
</head>
<body>
<div class="container">
	<h2>$.post() 메소드 사용하기</h2>	
	<h3>로그인 구현하기 - JDBC연동O(오라클사용)</h3>
	<div class="row" id="loginTable">
		<form id="loginFrm" onsubmit="return checkFrm();">
			<table class="table table-bordered">
				<tr>
					<td>아이디</td>
					<td>
						<input type="text"  
							name="user_id" value="kosmo" />
					</td>
				</tr>
				<tr>
					<td>패스워드</td>
					<td>
						<input type="password" 
							name="user_pw" value="" />
					</td>
				</tr>
			</table>
			<button type="submit" class="btn btn-danger" 
				id="btnLogin1">
				로그인하기(HTML의submit사용)</button>
			&nbsp;&nbsp;
			<button type="button" class="btn btn-success" 
				id="btnLogin2">
				로그인하기(jQuery의 $.post()사용)</button>
		</form>
	</div>
	<br/>
	<div class="row" id="jsonDisplay">
		JSON 데이터를 뿌려봅시다
	</div>
</div>	
</body>

</html>