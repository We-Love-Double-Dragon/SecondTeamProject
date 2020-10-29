<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">

/* 세로메뉴바 */
.row1 {
	margin: 80px;
}

.row2 {
	
}
</style>
</head>
<body>
	<div class="all">
		<div class="row">
			<div class="row1">
				<div class="col-lg-8">
					<table class="table">
						<tr>
							<td width=30% class="text-center" rowspan="9"><img
								src="${vo.gm_poster }" width=100%></td>
							<td colspan="2"><font color=orange>${vo.gm_subject }</font></td>
						</tr>
						<tr>
							<td>분야</td>
							<td>${vo.gm_field }</td>      
						</tr>
						<tr>
							<td width=10%>접수기간</td>
							<td width=60%>${vo.gm_period }</td>
						</tr>
						<tr>
							<td width=10%>주최/주관</td>
							<td width=60%>${vo.gm_host }</td>
						</tr>
						<tr>
							<td width=10%>홈페이지</td>
							<td width=60%><a href="${vo.gm_homepage }">${vo.gm_homepage }</a></td>
						</tr>
						<tr>
							<td width=10%>문의처</td>
							<td width=60%>${vo.gm_tel }</td>
						</tr>
						<tr>
							<td width=10%>응모대상</td>
							<td width=60%>${vo.gm_target }</td>
						</tr>
						<tr>
							<td width=10%>시상내역</td>
							<td width=60%>${vo.gm_prize }</td>
						</tr>
						<tr>
							<td width=10%>특전</td>
							<td width=60%>${vo.gm_prize2 }</td>
						</tr>
						<tr>
							<td colspan="3"><pre
									style="white-space: pre-wrap; background-color: white; border: none">${vo.gm_content }</pre>
							</td>
						</tr>
					</table>
				</div>
				<div class="row2">
					<div class="text-right">
						<a href="#" class="btn btn-lg btn-danger">찜하기</a> <a
							href="../main/main.jsp" class="btn btn-lg btn-primary">목록</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
