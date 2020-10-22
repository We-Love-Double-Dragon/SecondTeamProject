<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!-- 게시글 목록 출력하는 페이지 -->
    
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<div class="col-lg-12" style="background-color: #E9E9E9; border-radius: 5px; height: 1700px;">
			<div class="content_area" style="padding: 20px;">						<!-- 전체 목록 div -->
				<div class="heading_area" style="height:100px;">						<!-- 머리부분 -->
					<h3>전체</h3>																<!-- 머리부분 제목 -->
					<div class="list_option" style="text-align: right">						<!-- 머리부분 옵션들 -->
						<input type=button value="답변적은순" id="least_answer">
						<input type=button value="최신순" id="least_answer">
					</div>
				</div>
				
				<div class="answer_list">												<!-- 질문 리스트 공간 -->
				
					<c:forEach var="i" begin="1" end="10" >
						<c:choose>
							<c:when test="${i==10 }">									<!-- 10번째는 테두리 밑부분 설정 -->
							
								<div class="answer_box" style="height:150px; padding: 20px; border-top: 1px solid #9D9D9D; border-bottom: 1px solid #9D9D9D">		<!-- 개별 질문 박스 -->
									<div class="answer_box_header">																<!-- 질문박스 위의 제목 + 내용 -->
										<span class="answer_box_header_title" style="font-weight: bold; font-size: 18pt;">제목제목</span>
										<div style="height:10px;"></div>
										<p class="answer_box_header_content">내용내용내용</p>
									</div>
									<div class="answer_box_info" style="font-size: 9pt; margin-top:10px;">					<!-- 질문박스 아래의 정보들 -->
										<span class="answer_box_info_reply">답변0</span>&nbsp;&nbsp;&nbsp;
										<span class="answer_box_info_tag">급여</span>&nbsp;&nbsp;&nbsp;
										<span class="answer_box_info_regdate">방금</span>
									</div>
								</div>
							
							</c:when>
							
							<c:otherwise>
								<div class="answer_box" style="height:150px; padding: 20px; border-top: 1px solid #9D9D9D">		<!-- 개별 질문 박스 -->
									<div class="answer_box_header">																<!-- 질문박스 위의 제목 + 내용 -->
										<span class="answer_box_header_title" style="font-weight: bold; font-size: 18pt;">제목제목</span>
										<div style="height:10px;"></div>
										<p class="answer_box_header_content">내용내용내용</p>
									</div>
									<div class="answer_box_info" style="font-size: 9pt; margin-top:10px;">					<!-- 질문박스 아래의 정보들 -->
										<span class="answer_box_info_reply">답변0</span>&nbsp;&nbsp;&nbsp;
										<span class="answer_box_info_tag">급여</span>&nbsp;&nbsp;&nbsp;
										<span class="answer_box_info_regdate">방금</span>
									</div>
								</div>
							</c:otherwise>
						</c:choose>
						
					</c:forEach>
				</div>																										<!-- 질문리스트 공간 끝 -->
				
				
				<div class="pagination" style="margin-top:20px;">
					<p>페이지넘기는곳</p>
				</div>
				
			</div>
		</div>
</body>
</html>