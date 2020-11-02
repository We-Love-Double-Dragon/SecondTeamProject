<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="comment_vo" items="${comment_list }">
		<div class="comment_list" style="border-radius: 5px; border: 1px solid #D1D1D1;background-color: white; padding:20px; margin-bottom: 15px; ">		<!-- 답변 전체 박스 -->
			
			<c:if test="${comment_vo.comment_tab>0 }">								<!-- 그룹탭만큼 넣기 -->
				<c:forEach var="i" begin="1" end="${comment_vo.comment_tab }">
					&nbsp;&nbsp;&nbsp;&nbsp;
				</c:forEach>
				▶
			</c:if>
			
			<div class="subject_area" style="margin-bottom: 20px;">														<!-- 제목 -->
				<h3>${comment_vo.id }</h3>
			</div>
			
			<div class="comment_content">										
				<c:if test="${comment_vo.comment_tab>0 }">									<!-- 내용을 그룹탭만큼 넣기 -->
					<c:forEach var="i" begin="1" end="${comment_vo.comment_tab }">
						&nbsp;&nbsp; &nbsp;&nbsp;
					</c:forEach>
				</c:if>
				<pre style="white-space: pre-wrap;background-color: white;border:none">${comment_vo.content }</pre>
			</div>
			
			<div class="commentCommentArea"></div>											<!-- 대댓글 달리는 곳 -->
			
			
			
			
		</div>
	</c:forEach>
</body>
</html>