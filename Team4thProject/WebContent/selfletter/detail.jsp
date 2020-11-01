<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!doctype html>
<html>

   <body>
    <main>
        <!-- About US Start -->
        <div class="about-area">
            <div class="container">
                   <div class="row">
                        <div class="col-lg-8">
                            <!-- 합격자소서 내용 출력 부분 -->
                            <div class="about-right mb-90">
                                <div class="section-tittle mb-30 pt-30">
                                    <h3>${vo.ssubject }</h3>
                                </div>
                                <div class="about-prea">
                                    <p class="about-pera1 mb-25">${vo.sq1 }</p>
                                </div> 
                                <div class="about-prea">
                                   <p class="about-pera1 mb-25">${vo.sa1 }</p>
                                </div>
                                <div class="about-prea">
                                    <p class="about-pera1 mb-25">${vo.sq2 }</p>
                                </div> 
                                <div class="about-prea">
                                   <p class="about-pera1 mb-25">${vo.sa2 }</p>
                                </div>
                                <div class="about-prea">
                                    <p class="about-pera1 mb-25">${vo.sq3 }</p>
                                </div> 
                                <div class="about-prea">
                                   <p class="about-pera1 mb-25">${vo.sa3 }</p>
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