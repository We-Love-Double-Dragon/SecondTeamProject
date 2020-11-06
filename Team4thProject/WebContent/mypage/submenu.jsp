<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.mypage{
	width: 218px;
	height: 75px;
	padding-left: 30px;
	font-weight: bolder;	
	vertical-align: middle;
	margin: 0px auto;
	
	/* border-bottom: 1px solid #8c8c8c; */
}
.mypage p{
	 width: 130px;
	 line-height: 75px;
	 font-size: 16pt;
	 font-weight: bolder; 
}
.sidebar{
	width: 200px;
	border: 1px solid #8c8c8c;
	color: black;
    background-color: rgba( 35, 80, 142, 0.1 );
}
.menu{
	padding-left: 30px;
	width: 218px;
	height: 60px;
}
.menu p{
	line-height: 60px;
	color: black;
	font-size: 13pt;
}
.sub{
	padding-left: 45px;
	width: 218px;
	height: 40px;
}
.sub p{
	line-height: 30px;
	color: black;
	font-size: 11pt;
	
}
.menu:hover{ 
	background-color: rgba( 35, 80, 142, 0.4); 
}

</style>
</head>
<body>

    <div class="sidebar" style="width: 220px;">
          <aside class="single" style="padding: 15px 0px; ">
             <div class="mypage">
             	<p>마이페이지</p>
             </div> 
             
               <div class="menu" id=menu>
                   <a href="../resume/resume.do">
                       <p>이력서 등록</p>
                   </a>
               </div>
               <div class="menu">
                   <a href="../resume/list.do">
                       <p>이력서 관리</p>
                   </a>
               </div>
               <div class="menu">
                   <a href="../mypage/scrap.do">
                       <p>스크랩</p>
                   </a>
               </div>
               <div class="sub">
                   <a href="#" class="d-flex">
                       <p><img src="../mypage/b.png" style="width: 10px; height: 10px; margin-right: 10px;">&nbsp;채용공고</p>
                   </a>
               </div>
               <div class="sub">
                   <a href="#" class="d-flex">
                       <p><img src="../mypage/b.png" style="width: 10px; height: 10px; margin-right: 10px;">&nbsp;합격자소서</p>
                   </a>
               </div>
               <div class="sub">
                   <a href="#" class="d-flex">
                       <p><img src="../mypage/b.png" style="width: 10px; height: 10px; margin-right: 10px;">&nbsp;취업꿀팁</p>
                   </a>
               </div>
               <div class="sub">
                   <a href="#" class="d-flex">
                       <p><img src="../mypage/b.png" style="width: 10px; height: 10px; margin-right: 10px;">&nbsp;공모전</p>
                   </a>
               </div>
               <div class="sub">
                   <a href="#" class="d-flex">
                       <p><img src="../mypage/b.png" style="width: 10px; height: 10px; margin-right: 10px;">&nbsp;JOB지식인</p>
                   </a>
               </div>
               <div class="menu">
                   <a href="../user/update.do">
                       <p>회원정보 수정</p>
                   </a>
               </div> 
               <div class="menu">
                   <a href="#">
                       <p>아무거나</p>
                   </a>
               </div>
       </aside>
    </div>
  
    <div>
    <a href="https://allforyoung.com/posts/3413/">
    	<img src="../mypage/eduwill.JPG" style="width: 220px; margin-top: 30px;">
    </a>
    </div>
                 
               
    
</body>
</html>