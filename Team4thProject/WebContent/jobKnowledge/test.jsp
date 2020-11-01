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
	<div class="col-lg-12" style="background-color: #E9E9E9; border-radius: 5px; height: 1700px;">
		
		<c:forEach var="cvo" items="${cList }" varStatus="s">
			<c:if test="${s.index<6 }">
				<table>
					<tr>
						<th>내용</th>
						<td>${cvo.subject}</td>
					</tr>
					<tr>
						<th>태그</th>
						<td>${cvo.content}</td>
					</tr>
				</table>
			</c:if>
			
		</c:forEach>
		
		<table>
				<tr>
					<th>내용</th>
					<td>${id}</td>
				</tr>
				
			</table>
	
	
	
	</div>
</body>
</html>