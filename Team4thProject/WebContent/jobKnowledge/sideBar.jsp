<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 왼쪽 사이드바 ============================================================================================================================= -->
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.button_answer:hover{
	background-color: black;
	color: black;
}
</style>
</head>
<body>
		<div class="col-lg-12" style="background-color: #8DB3DE; border-radius: 5px;">
			<div style="height:800px; padding-top:20px; padding-bottom:20px;">
				<!-- <div class="button_answer" style="height:100px; background-color: #5A91CF; text-align: center; line-height: 100px; border-radius: 5px;">
					<a href="../jobKnowledge/answer.do" style="font-size: 30px;">질문하기</a>
				</div> -->
				<input type="button" value="질문하기" class="button_answer" onclick="location.href='../jobKnowledge/answer.do'"
						style="height:100px; width:100%; background-color: #5A91CF; color:white; font-size: 30px; border: none; border-radius: 5px;">
			</div>
		</div>
					
</body>
</html>