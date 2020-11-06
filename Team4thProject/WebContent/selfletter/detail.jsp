<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!doctype html>
<style type="text/css">
.question{
	font-weight: bold;
	color: black;
}
.indutype{
	font-weight: bold;
	
}
#letterpanel{
	border : 8px solid #CEF6F5;
	padding: 20px;
	margin: 20px;
}
</style>


<html>

   <body>
    <main>
        <!-- 합격자기소개서 상세보기 시작 -->
        <div class="about-area">
            <div class="container">
                   <div class="row">
                        <div class="col-lg-8">
     
                            <!-- 합격자소서 내용 출력 부분 -->
                            <div class="about-right mb-90" id=letterpanel>
                                <div class="section-tittle mb-30 pt-30 text-center">
                                    <h3>${vo.ssubject }</h3>
                                </div>
                                 <div class="indutype">
                                    <h5>지원 직무 : ${vo.sindutype }</h5>
                                </div>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <div class="about-prea">
                                    <p class="question">${vo.sq1 }</p>
                                </div> 
                                <div class="about-prea">
                                   <p class="about-pera1 mb-25">${vo.sa1 }</p>
                                </div>
                                <div class="about-prea">
                                    <p class="question">${vo.sq2 }</p>
                                </div> 
                                <div class="about-prea">
                                   <p class="about-pera1 mb-25">${vo.sa2 }</p>
                                </div>
                                <div class="about-prea">
                                    <p class="question">${vo.sq3 }</p>
                                </div> 
                                <div class="about-prea">
                                   <p class="about-pera1 mb-25">${vo.sa3 }</p>
                                </div>
                             </div>   
                            </div>
                   </div>
                   <!-- =====================버튼그룹============================== -->
                    <div id="btn_group">
				       <input type=button value="목록" class="genric-btn danger circle" id="listBtn"
				                 onclick="javascript:history.back()">
			       </div>
			       &nbsp;&nbsp;&nbsp;&nbsp;
            </div>
        </div>
        <!-- 합격자기소개서 상세보기 끝 -->
    </main>
        
    </body>
</html>