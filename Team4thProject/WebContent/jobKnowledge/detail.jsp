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
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	function deleteReally_board(){
		window.open("../jobKnowledge/deleteReally.do", "deleteReally", "width=320,height=300,scrollbars=no")
	}
	
	function deleteReally_reply(){
		window.open("../jobKnowledge/deleteReally_reply.do", "deleteReally_reply", "width=320,height=300,scrollbars=no")
	}
	
	var rno = $('#parentId_reply').val();			// rno 보내기
	var sessionID = $('#sessionID').val();			// sessionID 보내기
	var bno = $('#bno').val();						// 질문글번호 보내기
	$(function(){
		$('#commentButton').click(function(){
			$.ajax({
				type:'get',
				data:{"rno":rno, "sessionID":sessionID, "bno":bno},
				url:'../jobKnowledge/commentButton.do',
				success:function(result){
					$('.comment_area').html(result);
				}
			})
		})
		
		
	});
</script>
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
				<div class="bottom_info" style="position: relative;">
					<span style="color: #636363; font-weight: bold;">${vo.id }</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>|</span>&nbsp;&nbsp;&nbsp;&nbsp;
					<span>조회수&nbsp;${vo.hit }</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>|</span>&nbsp;&nbsp;&nbsp;&nbsp;
					<span>작성일&nbsp;<fmt:formatDate value="${vo.regdate}" pattern="yyyy-MM-dd"/></span>
					<c:if test="${vo.id == sessionScope.id }" >																				<!-- 세션id와 게시글 id가 같으면 수정 / 삭제 버튼 활성화 -->
						<form action="../jobKnowledge/modify_board.do" method="post" style="position: absolute; right: 5px; bottom:1px;">
							<input type=submit value="수정">
							<input type=hidden name=no value=${vo.no } id="bno">
						</form>
					</c:if>
					<c:if test="${vo.id == sessionScope.id }" >	
						<%-- <form action="../jobKnowledge/delete_board.do" method="post" style="position: absolute; right: 50px; bottom:1px;">
							<input type=submit value="삭제">
							<input type=hidden name=no value=${vo.no }>
						</form> --%>
						<input type=button value=삭제 onclick="deleteReally_board()" style="position: absolute; right: 50px; bottom:1px;">
						<input type=hidden value=${vo.no } id="parentId">
					</c:if>
					
				</div>
			</div>
			
			<c:if test="${sessionScope.id==null}">
				<c:set var="isLogin" value="../user/login_form.do"/>
			</c:if>
			<c:if test="${sessionScope.id!=null}">
				<c:set var="isLogin" value="../jobKnowledge/reply.do"/>
			</c:if>
			<%-- <c:if test="${sessionScope.id==null? ${isLogin}==../user/login_form.do: ${ isLogin}==../jobKnowledge/reply.do }"/> --%>
			<form action="${isLogin }" method="post">																													<!-- 답변하기 -->
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
					<div class="button_reply" style="position: relative;">
						
						<c:if test="${sessionScope.id != null}">											<!-- 댓글창 뜨는 버튼 =========================================================== -->
							<input type="button" id="commentButton" value="댓글">
						</c:if>
																											<!-- 답변 수정 / 삭제 -->
						<c:if test="${rVO.id == sessionScope.id }" >
							<form action="../jobKnowledge/modify_reply.do" method="post" style="position: absolute; right: 5px; bottom:1px;">
								<input type=submit value="수정">
								<input type=hidden name=no value=${rVO.no }>
							</form>
								<input type=button value=삭제 onclick="deleteReally_reply()" style="position: absolute; right: 50px; bottom:1px;">
								<input type=hidden value=${rVO.no } id="parentId_reply">	<!-- 답변글 번호 -->
								<input type=hidden value=${vo.no } id="parentId_reply_refresh">	<!-- 질문글 번호(질문글 reply 감소 용도) -->
						</c:if>
					</div>
					
					<input type=hidden id="sessionID" value="${sessionID }">	<!-- 세션아이디 보내서 아이디로 삼기 -->		
					<div class="comment_area">		<!-- 댓글창 뜨는 공간 -->
					</div>	
					<div class="comment_list">				<!-- 댓글창 리스트 -->
					
					</div>
				</div>
			</c:forEach>
			
	</div>
</body>
</html>