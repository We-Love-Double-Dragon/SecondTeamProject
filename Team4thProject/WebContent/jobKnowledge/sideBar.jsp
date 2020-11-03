<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<!-- 왼쪽 사이드바 ============================================================================================================================= -->
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	$(function(){
		$.ajax({							// 팁 가져오기
			 type:'get',
			 url:'../jobKnowledge/recentBoard.do',
			 async: false,
			 dataType:'html',
			 success:function(result)
			 {
				 $('#recentBoard').html(result);
			 }
		 })
	})
</script>
<style type="text/css">
.button_answer{
	background-color: #5A91CF;
	transition-property: background-color;
	transition-duration: 0.5s;
}

.button_answer:hover{
	background-color: #4979B0;
}

.scrapButton{
	background-color: #FD9999;
	transition-property: background-color;
	transition-duration: 0.5s;
}
.scrapButton:hover{
	background-color: #FF5757;
}


/* 최근 방문한 게시글 */
.recentVisitButton{
	background-color: #4F80B8;
	transition-property: background-color;
	transition-duration: 0.5s;
}
.recentVisitButton:hover{
	background-color: #3D638E;
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
				
				<!-- 스크랩한 게시물 -->
				<div style="width: 100%; height:50px; text-align: right;">
					<input type=button value="스크랩한 질문" class="scrapButton" onclick="location.href='scrapList.do'"
							style="height: 30px; width: 80px; margin-top: 15px; color: white; border: none; border-radius: 5px;">
				</div>
				
				<!-- 최근 방문한 질문글 리스트  -->
				<div id="recentBoard"
				style="width:100%; min-height:70px; margin-top:330px; background-color: white; border-radius: 5px; padding: 10px;">
					
					
					
					
				</div>
				
			</div>
		</div>
					
</body>
</html>