<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!doctype html>
<html>
<head>
  <title>${cname }</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
   
   <!--================기업상세보기 =================-->
   <section class="blog_area single-post-area section-padding">
      <div class="container">
         <div class="row">
            <div class="col-lg-8 posts-list">
               <div class="single-post">
                  <div class="feature-img"></div>
                     <img class="img-fluid" src="${vo.clogo }" alt="" border=10>
                  </div>
                  <div class="blog_details">
                     <h2 style="color:black;">${vo.cname }</h2>
                     <ul class="blog-info-link mt-3 mb-4">
                        <li><a href="#"><i class="fa fa-user"></i>평점 ${vo.cscore }</a></li>
                     </ul>

					<!-- ==============================기업 소개,리뷰 부분 시작======================================= -->
					<div class="container">
					  <h2>${vo.cname }</h2>
					  <p>${vo.cscore }</p>
					  <p>${vo.ctype } | ${vo.indutype }</p>
					
					  <ul class="nav nav-tabs">
					    <li class="active"><a data-toggle="tab" href="#home">소개</a></li>
					    <li><a data-toggle="tab" href="#menu1">기업후기</a></li>
					    <li><a data-toggle="tab" href="#menu2">면접후기</a></li>
					  </ul>
					<!-- ================기업소개탭================= -->
					  <div class="tab-content">
					    <div id="home" class="tab-pane fade in active">
					      <h3>기업정보</h3><br>
					      <ul>
					      	<li>대표이름 : ${vo.bname }</li><br>
					      	<li>설립일 : ${vo.cdate }</li><br>
					      	<li>사원수 : ${vo.worknum }</li><br>
					      	<li>기업주소 : ${vo.cloc }</li><br>
					      	<li>매출 : ${vo.sale }</li><br>
					      	<li>기업소개 : ${vo.cover }</li><br>
					      	<li>웹사이트 : ${vo.site1 }</li><br>
					      	<li>연혁 : ${vo.history }</li>
					      </ul>
					    </div>
					    <!-- ================기업후기탭================= -->
					    <div id="menu1" class="tab-pane fade">
					      <div class="container">
							  <div class="media">
								  <div class="media-left">
								    <img src="user.png" class="media-object" style="width:60px">
								  </div>
								  <div class="media-body">
								    <h4 class="media-heading">${vo.rtype } | ${vo.rloc } | ${vo.rdate }</h4>
								    <p>${vo.rscore }</p>
								  </div>
								</div>
							  <div class="panel-group">
							    <div class="panel panel-primary">
							      <div class="panel-heading">총평</div>
							      <div class="panel-body">${vo.sub }</div>
							    </div>
							    <div class="panel panel-success">
							      <div class="panel-heading">장점</div>
							      <div class="panel-body">${vo.rgood }</div>
							    </div>
							    <div class="panel panel-warning">
							      <div class="panel-heading">단점</div>
							      <div class="panel-body">${vo.rbad }</div>
							    </div>
								 <div class="panel panel-info">
							      <div class="panel-heading">바라는 점</div>
							      <div class="panel-body">${vo.rwish }</div>
							    </div>
							  </div>
							</div>
					    </div>
					     <!-- ================면접후기탭================= -->
					    <div id="menu2" class="tab-pane fade">
							<div class="container">
							  <div class="media">
								  <div class="media-left">
								    <img src="user.png" class="media-object" style="width:60px">
								  </div>
								  <div class="media-body">
								    <h4 class="media-heading">면접결과${vo.iresult}</h4>
								    <p>${vo.iscore }면접난이도</p>
								    <p>${vo.iregdate }면접일</p>
								  </div>
								</div>
							  <div class="panel-group">
							    <div class="panel panel-primary">
							      <div class="panel-heading">총평</div>
							      <div class="panel-body">${vo.ireview }</div>
							    </div>
							    <div class="panel panel-default">
							      <div class="panel-heading">면접질문</div>
							      <div class="panel-body">${vo.rgood }</div>
							    </div>
							    <div class="panel panel-default">
							      <div class="panel-heading">면접답변 혹은 면접느낌</div>
							      <div class="panel-body">${vo.rbad }</div>
							    </div>
							  </div>
							</div>
					    </div>
					  </div>
					</div>
					<!-- =====================================기업 소개,리뷰 부분  끝===================================================-->
               </div>
               <div class="navigation-top">
                  <div class="d-sm-flex justify-content-between text-center">
                     <div class="col-sm-4 text-center my-2 my-sm-0">
                        <!-- <p class="comment-count"><span class="align-middle"><i class="fa fa-comment"></i></span> 06 Comments</p> -->
                     </div>
                  </div>
                  <div class="navigation-area">
                     <div class="row">
                        <div
                           class="col-lg-6 col-md-6 col-12 nav-left flex-row d-flex justify-content-start align-items-center">
                           <div class="introduce">
                           </div>
                        </div>
                     </div>
                  </div>
               </div>

            </div>
            <div class="col-lg-4">
               <div class="blog_right_sidebar">
                  <aside class="single_sidebar_widget search_widget">
                     <form action="#">
                        <div class="form-group">
                           <div class="input-group mb-3">
                              <input type="text" class="form-control" placeholder='Search Keyword'
                                 onfocus="this.placeholder = ''" onblur="this.placeholder = 'Search Keyword'">
                              <div class="input-group-append">
                                 <button class="btns" type="button"><i class="ti-search"></i></button>
                              </div>
                           </div>
                        </div>
                        <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
                           type="submit">Search</button>
                     </form>
                  </aside>
                  <aside class="single_sidebar_widget post_category_widget">
                     <h4 class="widget_title">Category</h4>
                     <ul class="list cat-list">
                         <li>
                           <a href="../company/company.do?cateno=100" class="d-flex">
                              <p>서비스업</p>
                           </a>
                        </li>
                        <li>
                           <a href="../company/company.do?cateno=200" class="d-flex">
                              <p>제조/화학</p>
                           </a>
                        </li>
                        <li>
                           <a href="../company/company.do?cateno=300" class="d-flex">
                              <p>의료/제약/복지</p>
                           </a>
                        </li>
                        <li>
                           <a href="../company/company.do?cateno=400" class="d-flex">
                              <p>유통/무역/운송</p>
                           </a>
                        </li>
                        <li>
                           <a href="../company/company.do?cateno=500" class="d-flex">
                              <p>교육업</p>
                           </a>
                        </li>
                        <li>
                           <a href="../company/company.do?cateno=600" class="d-flex">
                              <p>건설업</p>
                           </a>
                        </li>
                        <li>
                           <a href="../company/company.do?cateno=700" class="d-flex">
                              <p>IT/웹/통신</p>
                           </a>
                        </li>
                        <li>
                           <a href="../company/company.do?cateno=800" class="d-flex">
                              <p>미디어/디자인</p>
                           </a>
                        </li>
                        <li>
                           <a href="../company/company.do?cateno=900" class="d-flex">
                              <p>은행/금융업</p>
                           </a>
                        </li>
                        <li>
                           <a href="../company/company.do?cateno=1000" class="d-flex">
                              <p>기관/협회</p>
                           </a>
                        </li>
                     </ul>
                  </aside>
                  <aside class="single_sidebar_widget popular_post_widget">
                     <h3 class="widget_title">Recent Post</h3>
                     <div class="media post_item">
                        <img src="assets/img/post/post_1.png" alt="post">
                        <div class="media-body">
                           <a href="single-blog.html">
                              <h3>From life was you fish...</h3>
                           </a>
                           <p>January 12, 2019</p>
                        </div>
                     </div>
                     <div class="media post_item">
                        <img src="assets/img/post/post_2.png" alt="post">
                        <div class="media-body">
                           <a href="single-blog.html">
                              <h3>The Amazing Hubble</h3>
                           </a>
                           <p>02 Hours ago</p>
                        </div>
                     </div>
                     <div class="media post_item">
                        <img src="assets/img/post/post_3.png" alt="post">
                        <div class="media-body">
                           <a href="single-blog.html">
                              <h3>Astronomy Or Astrology</h3>
                           </a>
                           <p>03 Hours ago</p>
                        </div>
                     </div>
                     <div class="media post_item">
                        <img src="assets/img/post/post_4.png" alt="post">
                        <div class="media-body">
                           <a href="single-blog.html">
                              <h3>Asteroids telescope</h3>
                           </a>
                           <p>01 Hours ago</p>
                        </div>
                     </div>
                  </aside>           
               </div>
            </div>
         </div>
      </div>
   </section>
   <!--================ Blog Area end =================-->

        
</body>

</html>