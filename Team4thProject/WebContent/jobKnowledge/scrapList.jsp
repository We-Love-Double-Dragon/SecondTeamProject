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
	<table>
		<c:forEach var="jvo" items="${jList }">
		<tr>
			<th>번호</th>
			<td>${jvo.no }</td>
		</tr>
		<tr>
			<th>제목</th>
			<td>${jvo.subject}</td>
		</tr>
		<tr>
			<th>답변수</th>
			<td>${jvo.reply }</td>
		</tr>
			<input type="button" value="스크랩취소" onclick="location.href='../jobKnowledge/scrap_cancel.do'">
		</c:forEach>
	</table>
</body>
</html>