<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<title>News HTML-5 Template </title>

<style type="text/css">
	div.row1{
		margin: 0px auto;
		width: 600px;
		height: 700px;
	}
	#content { 
		height: 10px; 
		line-height: 10px;
		font-size: x-large;
		font-weight: bolder;
		margin: 0px auto;
	}
	table.userform {
		width: 600px;
		height: 600px;
	    border-collapse: collapse;
	    text-align: left;
	    line-height: 1.5;
	    border-top: 1px solid #ccc;
	    border-left: 3px solid #288CD2;
		margin : 20px 10px;
		vertical-align: middle;
	}
	table.userform th {
	    padding: 10px;
	    font-weight: bold;
	    font-size: medium;
	    vertical-align: middle;
	    color: #153d73;
	    border-bottom: 1px solid #ccc;
	
	}
	table.userform td {
	    padding: 10px;
	    vertical-align: top;
	    border-right: 1px solid #ccc;
	    border-bottom: 1px solid #ccc;
	    vertical-align: middle;
	}
	
	#btn_group{
		width: 600px;
		margin:0 auto; 
		text-align: center;
	}
	
	#joinBtn{ 
		margin-right:20px;
		border: 1px solid #288CD2; 
		background-color: rgba(0,0,0,0);
		color: black; 
		font-weight: bolder; 
	 } 
	#cancleBtn{ 
		margin-left:20px; 
		border: 1px solid #EB5A5A; 
		background-color: rgba(0,0,0,0); 
		color: black; 
		font-weight: bolder; 
	} 
	
	#joinBtn:hover{ 
		color:white; 
		background-color: #288CD2; 
	}
	#cancleBtn:hover{ 
		color:white; 
		background-color: #EB5A5A; 
	}

</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript" src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
function postfind()
{
	new daum.Postcode({
		oncomplete:function(data)
		{
			$('#post').val(data.zonecode);
			$('#addr1').val(data.address);
		}
	}).open();
}
function idcheck()
{
	window.open("../user/idcheck.do","idcheck","width=320,height=300,scrollbars=no");
}

$(function(){
	$('#joinBtn').click(function(){
		let id=$('#id').val();
		if(id.trim()=="")
		{
			$('#id').focus();
			return;
		}
		let pwd=$('#pwd').val();
		if(pwd.trim()=="")
		{
			$('#pwd').focus();
			return;
		}
		
		let pwd1=$('#pwd1').val();
		if(pwd1.trim()=="")
		{
			$('#pwd1').focus();
			return;
		}
		
		if(pwd!==pwd1)
		{
			alert("비밀번호를 다시 입력하세요!!");
			$('#pwd1').val("");
			$('#pwd1').focus();
			return;
		}
		
		let name=$('#name').val();
		if(name.trim()=="")
		{
			$('#name').focus();
			return;
		}
		
		let birthday=$('#birthday').val();
		if(birthday.trim()=="")
		{
			$('#birthday').focus();
			return;
		}
		
		
		let post=$('#post').val();
		if(post.trim()=="")
		{
			$('#post').focus();
			return;
		}
		
		let addr1=$('#addr1').val();
		if(addr1.trim()=="")
		{
			$('#addr1').focus();
			return;
		}
		
		$('#joinFrm').submit();
	});
});
</script>
</head>

<body>
	<div class="whole-wrap" style="height: 850px">
		<div class="container box_1170" >
			<div class="section-top-border">
				<div class="row" style="text-center">
				 <div class="row row1">
 				 <div id="content">회원가입</div>
 				  <form method=post action="../user/join_ok.do" name="joinFrm" id="joinFrm">
					
					<table class="userform">
					  	<tr>
					  	  <th scope="row" width=30%>아이디</th>
					  	  <td width=70%>
					  	  	<input type=text name=id class="input-sm" size=15 style="margin-right: 15px;" readonly id="id">
					  	  	<input type=button value="중복체크" class="genric-btn success radius small" onclick="idcheck()">
					  	  </td>
					  	</tr>	
					  	<tr>
					  	  <th scope="row" width=30%>비밀번호</th>
					  	  <td width=70%>
					  	  	<input type=password name=pwd class="input-sm" size=15 id="pwd">
					  	  </td>
					  	</tr>
					  	<tr>
					  	  <th scope="row" width=30%>비밀번호확인</th>
					  	  <td width=70%>
       						<input type=password name=pwd1 class="input-sm" size=15 id="pwd1">
					  	  </td>
					  	</tr>
					  	<tr>
					  	  <th scope="row" width=30%>이름</th>
					  	  <td width=70%>
					  	  	<input type=text name=name class="input-sm" size=15 id="name">
					  	  </td>
					  	</tr>
					  	<tr>
					  	  <th scope="row" width=30%>이메일</th>
					  	  <td width=70%>
					  	  	<input type=text name=email class="input-sm" size=45>
					  	  </td>
					  	</tr>
					  	<tr>
					  	  <th scope="row" width=30%>생년월일</th>
					  	  <td width=70%>
					  	  	<input type=date name=birthday class="input-sm" size=25 id="birthday">
					  	  </td>
					  	</tr>
					  	<tr>
					  	  <th scope="row" width=30%>성별</th>
					  	  <td width=70%>
					  	  	<input type=radio name=sex id="male" value="남">
					  	  	<label for="male">남</label>
					  	  	<input type=radio name=sex id="female" style="margin-left: 30px;" value="여">
					  	  	<label for="female">여</label>
					  	  </td>
					  	</tr>
					  	<tr>
					  	  <th scope="row" width=30%>우편번호</th>
					  	  <td width=70%>
					  	  	<input type=text name=post class="input-sm" size=7 style="margin-right: 10px;" readonly id="post">
       						<input type=button value="우편번호찾기" class="genric-btn success radius small" onclick="postfind()">
					  	  </td>
					  	</tr>
					  	<tr>
					  	  <th scope="row" width=30%>주소</th>
					  	  <td width=70%>
					  	  	<input type=text name=addr1 class="input-sm" size=45 readonly id="addr1">
					  	  </td>
					  	</tr>
					  	<tr>
					  	  <th scope="row" width=30%>상세주소</th>
					  	  <td width=70%>
					  	  	<input type=text name=addr2 class="input-sm" size=45>
					  	  </td>
					  	</tr>
					  	<tr>
					  	  <th scope="row" width=30%>전화번호</th>
					  	  <td width=70%>
					        <input type=text name=tel class="input-sm" size=25 placeholder="  숫자만 입력">
					       </td>
					  	</tr>
					</table>
					
					<div id="btn_group">
					 <input type=button value="가입" class="genric-btn success radius" id="joinBtn">
					 <input type=button value="취소" class="genric-btn danger radius" id="cancleBtn"
					  onclick="javascript:history.back()">
					</div>
					 
				   </form>
				  </div>
				</div>
			</div>
		</div>
	</div>
       
</body>
</html>