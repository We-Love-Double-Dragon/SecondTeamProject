<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!-- 왼쪽 사이드바 ============================================================================================================================= -->
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.button_answer{
	background-color: #5A91CF;
	transition-property: background-color;
	transition-duration: 0.5s;
}

.button_answer:hover{
	background-color: #4979B0;
}
</style>
</head>
<body>
		<div class="col-lg-12" style="background-color: #9EC1E8; border-radius: 5px; border: 1px solid #437EC0;">
			<div style="height:800px; padding-top:20px; padding-bottom:20px;">
				<!-- <div class="button_answer" style="height:100px; background-color: #5A91CF; text-align: center; line-height: 100px; border-radius: 5px;">
					<a href="../jobKnowledge/answer.do" style="font-size: 30px;">질문하기</a>
				</div> -->
				
				<!-- background-color: #5A91CF; -->
				<!-- ../jobKnowledge/answer.do -->
				<c:if test="${sessionScope.id==null }">
					<input type="button" value="질문하기" class="button_answer" onclick="location.href='../user/login_form.do'"
							style="height:100px; width:100%; color:white; font-size: 30px; border: none; border-radius: 5px;">
				</c:if>
				<c:if test="${sessionScope.id!=null }">
					<input type="button" value="질문하기" class="button_answer" onclick="location.href='../jobKnowledge/answer.do'"
							style="height:100px; width:100%; color:white; font-size: 30px; border: none; border-radius: 5px;">
				</c:if>
			</div>
		</div>
					
</body>
</html>