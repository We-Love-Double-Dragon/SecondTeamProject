<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!doctype html>
<html>
   <body>
    <main>
        <!-- About US Start -->
        <div class="about-area">
            <div class="container">
                   <div class="row">
                        <div class="col-lg-8">
                            <!-- 채용공고 내용 출력 부분 -->
                            <!-- 
                              <td class="text-center" width=5%>${vo.l_no }</td>
                     <td class="text-center" width=15%>${vo.lname }</td>
                     <td class="text-center" width=20%>${vo.ltitle }</td>
                     <td class="text-center" width=10%>${vo.lapp_qual1 }</td>
                     <td class="text-center" width=10%>${vo.lapp_qual2 }</td>
                     <td class="text-center" width=5%>${vo.lapp_con }</td>
                     <td class="text-center" width=10%>${vo.ldeadline }</td>
                     <td class="text-center" width=5%>${vo.lsal }</td>
                     <td class="text-center" width=10%>${vo.lworkspace }</td>
                             -->
                            <div class="about-right mb-90">
                                <div class="section-tittle mb-30 pt-30">
                                    <h3>${vo.ltitle }</h3>
                                </div>
                                <div class="about-prea">
                                	<h5>기업명</h5>
                                    <p class="about-pera1 mb-25">${vo.lname }</p>
                                </div> 
                                <div class="about-prea">
                                	<h5>경력 조건</h5>
                                   <p class="about-pera1 mb-25">${vo.lapp_qual1 }</p>
                                </div>
                                <div class="about-prea">
                                	<h5>학력 조건</h5>
                                    <p class="about-pera1 mb-25">${vo.lapp_qual2 }</p>
                                </div> 
                                <div class="about-prea">
                                   <h5>근무 형태</h5>
                                   <p class="about-pera1 mb-25">${vo.lapp_con}</p>
                                </div>
                                <div class="about-prea">
                                    <h5>마감일</h5>
                                    <p class="about-pera1 mb-25">${vo.ldeadline }</p>
                                </div> 
                                <div class="about-prea">
                                   <h5>연봉</h5>
                                   <p class="about-pera1 mb-25">${vo.lsal }</p>
                                </div>
                                <div class="about-prea">
                                   <h5>근무지</h5>
                                   <p class="about-pera1 mb-25">${lworkspace }</p>
                                </div>
                             </div>   
                            </div>
                   </div>
            </div>
        </div>
        <!-- About US End -->
    </main>  
    </body>
</html>