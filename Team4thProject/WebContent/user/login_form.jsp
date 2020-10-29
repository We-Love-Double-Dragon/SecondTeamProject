<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>News HTML-5 Template </title>
<style type="text/css">
	.login{
		margin: 0px auto;
		vertical-align: middle;
	}
	div.row1{
		margin: 0px auto;
		margin-top: 100px;
		width:280px;
		height: 250px;
		vertical-align: middle;
	}
	#content { 
		height:50px; 
		line-height: 10px;
		font-size: x-large;
		font-weight: bolder;
		margin: 0px auto;
		text-align: center;
		vertical-align: middle;
		
	}
	#logFrm{
		margin: 0px auto;
		text-align: center;
		vertical-align: middle;
	}

</style> 
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">

$(function(){
	// 태그에 대한 이벤트 (클릭..마우스 오버 ...)
	// onClick="send()"  function send(){}
	$('#logBtn').click(function(){
		// selector => css
		let id=$('#log_id').val();// getter  , $('#log_id').val("admin") setter
		//$('#log_id').val("hong");
		if(id.trim()=="")
		{
			$('#log_id').focus();
			return;
			// <input type="text" class="input-sm" name=id size="15" id="log_id" placeholder="아이디입력"  style="color:black">
		}
		
		let pwd=$('#log_pwd').val();// getter  , $('#log_id').val("admin") setter
		//$('#log_id').val("hong");
		if(pwd.trim()=="")
		{
			$('#log_pwd').focus();
			return;
			// <input type="text" class="input-sm" name=id size="15" id="log_id" placeholder="아이디입력"  style="color:black">
		}
		// id입력
		// pwd입력 ===> login_ok.do ==> 데이터 전송 
		$('#logFrm').submit(); //<form => action="파일명">
		// <input type=submit> ==> 'null'
	});
});
</script>
</head>

<body>
 <div class="whole-wrap" style="height: 850px">
	<div class="container box_1170" >
	  <div class="section-top-border">
		<div class="login" style="text-center">
		  <div class="login row1" >
			<c:if test="${sessionScope.id==null }">
			 <div id="content">로그인</div>
			 
			 <form method="post" action="../user/login.do" id="logFrm">
			 	<div class="col-12" style="height:110px;">
                   <div class="id-input-box focus">
                  	 <input type="text" class="input-sm" name=id size="30" id="log_id" placeholder="아이디입력"  style="color:black; text-align:left; width:250px; height:40px;">
                   </div>
                   <div class="pw-input-box">
				 	 <input type="password" class="input-sm" name=pwd size="30" id="log_pwd" placeholder="비밀번호입력"  style="color:black; text-align:left; width:250px; height:40px;">
                   </div>
             	</div>
             	
                <input type="button" class="genric-btn success radius medium" id="logBtn" value="로그인">
             </form>
             
			</c:if>
		  </div>
		</div>
	  </div>
	</div>
		  		
	<div id="dialog" style="display:none">
	  <jsp:include page="../user/login.jsp"></jsp:include> 
	</div>
  </div>      
</body>
</html>