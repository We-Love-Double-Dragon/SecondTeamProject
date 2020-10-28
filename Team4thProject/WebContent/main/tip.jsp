<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#tipLink{
		transition-property: background-color;
		transition-duration: 0.5s;
	}
	#tipLink:hover{
		background-color: #C2EDFC;
		border-radius: 5px;
		cursor: pointer;
	}
</style>
</head>
<body>
		<c:forEach var="tvo" items="${tlist }">
		
		
	   		<div class="trand-right-single d-flex" style="padding:10px;" id="tipLink">
	   			<a href="../newsTipVideo/tipdetail.do?no=${tvo.t_no }">
	   		
	            <div class="trand-right-img">
	                <img  src="${tvo.t_poster}">
	            </div>
	            <div class="trand-right-cap">
	                <span class="color1">자기소개서</span>
	                <h5 style="font-size: 12px;"><a href="../newsTipVideo/tipdetail.do?no=${tvo.t_no }">${tvo.t_title }</a></h5>
	            </div>
	            
	        	 </a>
	        </div>
	   
	   	</c:forEach>
</body>
</html>