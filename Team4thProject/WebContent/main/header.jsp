<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
	
		
	

	
</script>
</head>
<body>
	<header>
        <!-- Header Start -->
       <div class="header-area" style="background-color: #5076A0;">
            <div class="main-header ">
                <div class="header-top black-bg d-none d-md-block">
                   <div class="container">
                       <div class="col-xl-12">
                            <div class="row d-flex justify-content-between align-items-center">
                                <div class="header-info-left">
                                    <ul>     
                                        <li><img src="assets/img/icon/header_icon1.png" alt="">34ºc, Sunny </li>
                                        <li><img src="assets/img/icon/header_icon1.png" alt="">Tuesday, 18th June, 2019</li>
                                    </ul>
                                </div>
                                <div class="header-info-right">
                                    <ul class="header-social">    
                                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                                       <li> <a href="#"><i class="fab fa-pinterest-p"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                       </div>
                   </div>
                </div>
                <div class="header-mid d-none d-md-block">
                   <div class="container">
                        <div class="row d-flex align-items-center">
                            <!-- Logo -->
                            <div class="col-xl-3 col-lg-3 col-md-3">
                                <div class="logo">
                                    <a href="index.html"><img src="../image/logo.png" width=400px></a>
                                </div>
                            </div>
                            <div class="col-xl-9 col-lg-9 col-md-9">
                                <div class="header-banner f-right ">
                                    <img src="assets/img/hero/header_card.jpg" alt="">
                                </div>
                            </div>
                        </div>
                   </div>
                </div>
               <div class="header-bottom header-sticky">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-xl-10 col-lg-10 col-md-12 header-flex">
                                <!-- sticky -->
                                    <div class="sticky-logo">
                                        <a href="index.html"><img src="../image/logo.png" width=300px></a>
                                    </div>
                                <!-- Main-menu -->
                                <div class="main-menu d-none d-md-block">
                                    <nav>                  
                                        <ul id="navigation">    
                                            <li><a href="../main/main.do" id=home>홈</a></li>
                                            <li><a href="categori.html">채용공고</a>
                                            	<ul class="submenu">
                                                    <li><a href="#">100대기업 공채</a></li>
                                                    <li><a href="#">인턴채용</a></li>
                                                    <li><a href="#">공채달력</a></li>
                                                    <li><a href="details.html">상시모집</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="about.html">취업꿀팁</a>
                                            	<ul class="submenu">
                                                    <li><a href="../selfletter/letter.do">합격자소서</a></li>
                                                    <li><a href="../company/company.do">기업·면접후기</a></li>
                                                    <li><a href="../newsTipVideo/news.do">취업뉴스</a></li>
                                                    <li><a href="../newsTipVideo/tip.do">취업꿀팁</a></li>
                                                    <li><a href="../newsTipVideo/video.do">취업영상</a></li>
                                                    <li><a href="details.html">추가요망</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="latest_news.html">공모전</a>
                                            	<ul class="submenu">
                                                    <li><a href="#">추가요망</a></li>
                                                    <li><a href="#">추가요망</a></li>
                                                    <li><a href="#">추가요망</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="../jobKnowledge/list.do">Job 지식인</a>				<!-- 잡지식인 메인페이지 : 게시글 리스트 출력 -->
                                            	<ul class="submenu">
                                            		<li><a href="../jobKnowledge/list.do">목록</a></li>
                                            		<c:if test="${sessionScope.id != null }">
                                            			<li><a href="../jobKnowledge/answer.do">질문하기</a></li>
                                            		</c:if>
                                                    <li><a href="../jobKnowledge/profile.do">지식인 프로필</a></li>
                                                    <li><a href="../jobKnowledge/test.do">테스트</a></li>
                                                </ul>
                                            </li>
                                            
                                           <c:if test="${sessionScope.id==null }">
	                                            <li><a href="../user/login.do">로그인</a>
		                                            <ul class="submenu">
		                                              <li><a href="../user/login.do">로그인</a></li>
												      <li><a href="../user/join.do">회원가입</a></li>
												    </ul>
											    </li>
	                                        </c:if>
	                                        <c:if test="${ sessionScope.id!=null}">
											      <c:if test="${sessionScope.admin=='n'}">
										            <li><a href="../resume/list.do">마이페이지</a>
										            <ul class="submenu">
										            	 <li><a href="../resume/list.do">이력서 관리</a></li>
										            	 <li><a href="../user/update.do">회원수정</a></li>
										           	</ul>
										            </li>
										          </c:if>
										          <c:if test="${sessionScope.admin=='y'}">
										            <li><a href="#">관리자페이지</a>
										             <ul class="submenu">
										            	<li><a href="../user/update.do">회원정보 수정</a></li>
										           	 </ul>
										           	</li>
										          </c:if>
    									    </c:if>
	                                        <li>
                                            <c:if test="${sessionScope.id!=null }">
											  <form action="../user/logout.do"><%-- get(생략이 가능) --%>
											    <div class="logout" style="margin-left: 30px;" >
											      ${sessionScope.name }님 
											      <button class="genric-btn danger radius small">로그아웃</button>
											    </div>
											  </form>
 											</c:if>
 											</li>
                                        </ul>
                                    </nav>
                                </div>
                            </div> 
                            <div class="col-xl-2 col-lg-2 col-md-4">
                                <div class="header-right-btn f-right d-none d-lg-block">
                                    <i class="fas fa-search special-tag"></i>
                                    <div class="search-box">
                                        <form action="#">
                                            <input type="text" placeholder="Search">
                                            
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- Mobile Menu -->
                            <div class="col-12">
                                <div class="mobile_menu d-block d-md-none"></div>
                            </div>
                        </div>
                    </div>
               </div>
            </div>
       </div>
        <!-- Header End -->
    </header>
</body>
</html>