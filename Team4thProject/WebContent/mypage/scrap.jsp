<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#content { 
		font-size: 18pt;
		font-weight: bolder;
		margin-bottom: 30px;
	}
	.toplist{
		width: 1000px;
		height: 40px;
		background-color :rgba( 35, 80, 142, 0.1 );
		border-top: solid 2px #2A58A8;
		border-bottom: solid 2px #2A58A8;
		font-weight: bolder;
		padding-top: 0px;
		display: table-cell;
     	vertical-align: middle;
     	text-align: center;

	}
	#list{
		width: 1000px;
		height: 100px;
		border-bottom: solid 1px #2A58A8;
		background-color:  white;   /* #EFF6FF;  */
		font-size: 13pt;
		display: table-cell;
     	vertical-align: middle;
     	
		
	}
</style>
</head>
<body>
<div class="resume-list">
  <div class="container">
  	<div class="row">
  	  <div class="col-lg-12" style="height: 850px;">
  	  	<div id="content">${id }님의 스크랩</div>
  	  	
  	  	<div class="tableList">
  	  	  <div class="top-area">
  	  	  	<div class="toplist">스크랩 목록</div>
  	  	  </div>
  	  	 
  	  	  <div class="list-area">
  	  	  	<ul>
  	  	  	    
  	  	  	    
  	  	  	    <!-- 스크랩 리스트 넣는부분 -->
  	  	  	    
  	  	  	    
  	  	  	</ul>
  	  	  </div>
  	  	
  	  	</div>
  	  </div>
  	</div>
  </div>
</div>
</body>
</html>