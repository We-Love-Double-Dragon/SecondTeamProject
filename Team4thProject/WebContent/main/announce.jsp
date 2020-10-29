<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#annLink{
		transition-property: background-color;
		transition-duration: 0.5s;
	}
	#annLink:hover{
		background-color: #C2EDFC;
		border-radius: 5px;
		cursor: pointer;
	}
</style>
</head>
<body>

		
		<c:forEach var="vo" items="${list }">
		
			<div class="col-lg-4" style="padding:10px;" id="annLink">
				<a href="#">
				    <div class="single-bottom mb-35">
				    	
				        <div class="trend-bottom-img mb-30">
				            <img src="assets/img/trending/trending_bottom1.jpg">
				        </div>
				        <div class="trend-bottom-cap">
				            <span class="color1">${vo.lname }</span>
				            <h4 style="font-size: 15px;"><a href="#">${vo.ltitle }</a></h4>
				        </div>
				        
				    </div>
			    </a>
		    </div>
		
		</c:forEach>
</body>
</html>