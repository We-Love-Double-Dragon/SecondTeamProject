<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<body>
	<!-- Start Align Area -->
	<div class="whole-wrap">
		<div class="container box_1170">
			<div class="section-top-border">
				<h3 class="mb-30">채용공고</h3>
				<div class="list_option" style="text-align: right;">					
						<form method="post" style="display: inline;">
						<select class="selectpicker" onchange="window.open(value,'_self');"
							style="display: inline; width: 50px; height:10px; font-size:10px;">						<!-- 태그 셀렉트박스 (태그별 게시글 출력) -->
							<option>태그 선택</option>
							<option value="listByTag.do?tag=서울">서울</option>
							<option value="listByTag.do?tag=경기">경기</option>
							<option value="listByTag.do?tag=인천">인천</option>
							<option value="listByTag.do?tag=부산">부산</option>
							<option value="listByTag.do?tag=대구">대구</option>
							<option value="listByTag.do?tag=광주">광주</option>
							<option value="listByTag.do?tag=대전">대전</option>
							<option value="listByTag.do?tag=강원">강원</option>
							<option value="listByTag.do?tag=제주">제주</option>
							<option value="listByTag.do?tag=전국">전국</option>
						</select>
						</form>
					</div>
				</div>
				<div class="progress-table-wrap">
					<table class="table">
						<tr>
							<th class="text-center" width=5%>번호</th>
							<th class="text-center" width=15%>회사명</th>
							<th class="text-center" width=30%>채용공고</th>
							<!-- <th class="text-center" width=30%>경력</th>
							<th class="text-center" width=60%>학력</th> -->
							<th class="text-center" width=10%>근무형태</th>
							<th class="text-center" width=10%>마감일</th>
							<th class="text-center" width=10%>연봉</th>
							<th class="text-center" width=10%>근무지</th>
						</tr>
						<c:forEach var="vo" items="${list }" end="9">
						<tr>
							<td class="text-center" width=5%>${vo.l_no }</td>
							<td class="text-center" width=15%>${vo.lname }</td>
							<td class   ="text-center" width=30%>
								<a href="../Workb/detail.do?l_no=${vo.l_no }" style="color:black;">${vo.ltitle }</a>
							</td>
							<td class="text-center" width=10%>${vo.lapp_con }</td>
							<td class="text-center" width=10%>${vo.ldeadline }</td>
							<td class="text-center" width=10%>${vo.lsal }</td>
							<td class="text-center" width=10%>${vo.lworkspace }</td>
						</tr>
						</c:forEach>
					</table>
					<table>
				        <tr>
				          <td class="text-right">
				            <a href="workb.do?page=${curpage>1?curpage-1:curpage }" class="btn btn-xs btn-danger">이전</a>
				              ${curpage } page / ${totalpage } pages
				            <a href="workb.do?page=${curpage<totalpage?curpage+1:curpage }" class="btn btn-xs btn-primary">다음</a>
				          </td>
				        </tr>
				      </table>
				</div>
			</div>
		</div>
	</div>
	<!-- End Align Area -->
</body>
</html>