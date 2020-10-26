<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!-- 게시글 상세보기 페이지 ================================================================================================== -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.bottom_info span{
	font-size: 15px;
	color: #878787;
	
}
</style>
</head>
<body>
	<div class="col-lg-12" style="background-color: #E9E9E9; border-radius: 5px; min-height: 800px; padding:20px; overflow-y: auto;">
	
			<div class="tag_area" style="margin-bottom: 20px;">															<!-- 태그 -->
					<a href="../jobKnowledge/listByTag.do?tag=${vo.tag }" style="background-color: #EEDCFF; color: #878787; border-radius: 5px; font-size:15px; padding-left: 5px; padding-right: 5px;">#${vo.tag }</a>													<!-- 태그 클릭시 태그에 맞는 게시글로 이동하는 기능 필요 ★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆ -->
			</div>
			
			<div class="answer_box" style="border-radius: 5px; border: 1px solid #D1D1D1;background-color: white; padding:20px;">		<!-- 게시글 전체 박스 -->
				
				<div class="subject_area" style="margin-bottom: 20px;">														<!-- 제목 -->
					<i style="display: inline; font-size: 20px; color: #386BFF;">Q&nbsp;&nbsp;&nbsp;</i><h3 style="display: inline;">${vo.subject }</h3>
				</div>
				<div class="content_area">
					<p>${vo.content }</p>
				</div>
			</div>
			
			<div class="bottom_area" style="margin-top: 20px;">
				<div class="bottom_info">
					<span style="color: #636363; font-weight: bold;">${vo.id }</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>|</span>&nbsp;&nbsp;&nbsp;&nbsp;
					<span>조회수&nbsp;${vo.hit }</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>|</span>&nbsp;&nbsp;&nbsp;&nbsp;
					<span>작성일&nbsp;<fmt:formatDate value="${vo.regdate}" pattern="yyyy-MM-dd"/></span>
				</div>
			</div>
			
			<form action="../jobKnowledge/reply.do" method="post">																													<!-- 답변하기 -->
				<div class="reply_area" style="border-radius: 5px; border: 1px solid #D1D1D1;background-color: white; padding:20px; margin-top: 30px; position: relative;">
					
						<div class="reply_content_area">
							<textarea class="content_textarea" rows="10" cols="107" name=content placeholder="진심어린 답변을 작성해주세요."
							style="background-color: white; font-size: 15px; border: none; resize: none; overflow-y: auto; margin-bottom: 10px;"></textarea>		<!-- 답변내용 입력 -->
							<div style="height:10px; border-bottom: 1px solid #D1D1D1; margin-bottom: 50px;"></div>
							<input type="hidden" name="no" value="${vo.no }">																						<!-- no넘기기(답변수 증가용) -->
							<input type=submit value=답변하기
									style="height:50px; width:130px; background-color: #5A91CF; color:white; font-size: 20px; border: none; border-radius: 5px; margin-right:10px; position: absolute; bottom: 10px; right: 10px;">
						</div>
						<div class="bottom_reply">
							
						</div>
				</div>
				
			</form>
			
			<div style="width:100%; margin-top:100px; margin-bottom:20px; border-bottom: 1px solid #797979;"></div>																	<!-- 답변입력 - 답변리스트간 구분선 -->
			
			<c:forEach var="rVO" items="${list }">
				<div class="reply_list" style="border-radius: 5px; border: 1px solid #D1D1D1;background-color: white; padding:20px; margin-top: 25px; margin-bottom: 25px;">		<!-- 게시글 전체 박스 -->
					
					<div class="subject_area" style="margin-bottom: 20px;">														<!-- 제목 -->
						<h3>${rVO.id }</h3>
					</div>
					<div class="content_area">
						<p>${rVO.content }</p>
					</div>
				</div>
			</c:forEach>
			
	</div>
</body>
</html>