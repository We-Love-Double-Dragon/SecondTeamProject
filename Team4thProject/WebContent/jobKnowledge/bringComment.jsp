<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 댓글 ================================================================================================================= 댓글 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$('.comment_comment_Insert_area').hide();
		
		$('.bring_comment_comment_tab').click(function(){				// bring_comment_tab 클릭시
			let no = $(this).attr('id')								// 변수 no는 클릭한 bring_comment_tab의 value값
			$('#comment_comment_Insert_area' + no).toggle(); 			// #comment_Insert_area + no를 토글
		});
		
		
		$.ajax({
			type:'post',
			url:'../jobKnowledge/deleteAll.do',
			data: {"no": no},
			success:function(result){
				window.close();
				opener.document.location.href="../jobKnowledge/list.do";
			}
		})
	})
</script>
</head>
<body>
	<c:forEach var="comment_vo" items="${comment_list }">
		<div class="comment_list" style="width:80%; border-radius: 5px; border: 1px solid #D1D1D1;background-color: white; padding:20px; margin-bottom: 15px; margin-left:20%;">		<!-- 답변 전체 박스 -->
			
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
			
			<!-- 대댓글 입력란 보이기 ======================================================================================================== 대댓글 입력란 보이기 -->
			<%-- <input type=button value="댓글작성" id="${comment_vo.no }" class="bring_comment_comment_tab"> --%>				
			<c:if test="${comment_vo.id == sessionScope.id }">													<!-- 삭제 수정버튼 -->
				<div style="text-align: right;">
					<input type=button value=삭제  id="dButton" class="littleButton" onclick="deleteReally_reply()">
					<input type=hidden value=${comment_vo.no } id="comment_vo">
				</div>
			</c:if>
			
			<!-- <div class="commentCommentArea"></div> -->											<!-- 대댓글 달리는 곳 -->
			
			
			
			
		</div>
		
		<!-- 대댓글 다는 공간 ============================================================================================================================================ 대댓글 다는 공간 -->
		<div id="comment_comment_Insert_area${comment_vo.no }" class="comment_comment_Insert_area" 																
				style="width:80%; hight: 70px; background-color: white; border: 1px solid black; border-radius: 5px; padding: 10px; margin-top: 20px; margin-left: 20%; margin-bottom: 20px;">		
			<form action="../jobKnowledge/comment_comment_insert.do" method="post">
				<textarea rows="3" cols="80" name="content" placeholder="댓글을 작성해주세요"
				style="background-color: white; font-size: 15px; border: none; resize: none; overflow-y:"></textarea>
				<div class="comment_bottom" style="text-align: right; width:100%;">
					<input type=submit value=댓글등록 id="insertCommentButton"
						style="height:30px; background-color: #5A91CF; color:white; font-size: 10px; border: none; border-radius: 5px;">
				</div>
				<input type=button name=reply_no value="${rVO.no }" id="comment_comment_reply_no${rVO.no }">
				<input type=button name=board_no value="${vo.no }" id="comment_comment_board_no${vo.no }">
				<input type=button name=no value="${comment_vo.no}">
			</form>
		</div>
	</c:forEach>
</body>
</html>