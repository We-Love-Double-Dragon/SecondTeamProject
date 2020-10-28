<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>News HTML-5 Template </title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- <link rel="manifest" href="site.webmanifest"> -->
	<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
	<!-- Place favicon.ico in the root directory -->
	<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
	
 <!-- CSS here -->
   <link rel="stylesheet" href="assets/css/bootstrap.min.css">
   <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
   <link rel="stylesheet" href="assets/css/slicknav.css">
   <link rel="stylesheet" href="assets/css/animate.min.css">
   <link rel="stylesheet" href="assets/css/magnific-popup.css">
   <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
   <link rel="stylesheet" href="assets/css/themify-icons.css">
   <link rel="stylesheet" href="assets/css/slick.css">
   <link rel="stylesheet" href="assets/css/nice-select.css">
   <link rel="stylesheet" href="assets/css/style.css">
   <link rel="stylesheet" href="assets/css/responsive.css">
</head>

<body>
			<div class="section-top-border">
				<h3 class="mb-30">합격 자기소개서</h3>
				<!-- 이부분에 검색기능 추가할것!!! -->
				<div class="progress-table-wrap">
				<div class=button>
					<a href="insert.jsp" class="btn btn-sm btn-primary">새글</a>
				</div>
					<table class="table">
						<tr>
							<th class="text-center" width=10%>번호</th>
							<th class="text-center" width=30%>직종</th>
							<th class="text-center" width=60%>제목</th>
						</tr>
						<c:forEach var="vo" items="${list }" end="9">
						<tr>
							<td class="text-center" width=10%>${vo.sno }</td>
							<td class="text-center" width=30%>${vo.sindutype }</td>
							<td class="text-center" width=60%>
								<a href="../selfletter/detail.do?sno=${vo.sno }" style="color:black;">${vo.ssubject }</a>
							</td>
						</tr>
						</c:forEach>
					</table>
					<table>
				        <tr>
				          <td class="text-right">
				            <a href="letter.do?page=${curpage>1?curpage-1:curpage }" class="btn btn-xs btn-danger">이전</a>
				              ${curpage } page / ${totalpage } pages
				            <a href="letter.do?page=${curpage<totalpage?curpage+1:curpage }" class="btn btn-xs btn-primary">다음</a>
				          </td>
				        </tr>
				      </table>
				</div>
			</div>
	
<!-- JS here -->
	
		<!-- All JS Custom Plugins Link Here here -->
        <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
		
		<!-- Jquery, Popper, Bootstrap -->
		<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="./assets/js/popper.min.js"></script>
        <script src="./assets/js/bootstrap.min.js"></script>
	    <!-- Jquery Mobile Menu -->
        <script src="./assets/js/jquery.slicknav.min.js"></script>

		<!-- Jquery Slick , Owl-Carousel Plugins -->
        <script src="./assets/js/owl.carousel.min.js"></script>
		<script src="./assets/js/slick.min.js"></script>
		
		<!-- One Page, Animated-HeadLin -->
        <script src="./assets/js/wow.min.js"></script>
		<script src="./assets/js/animated.headline.js"></script>
		<script src="./assets/js/jquery.magnific-popup.js"></script>
		
		<!-- Scrollup, nice-select, sticky -->
        <script src="./assets/js/jquery.scrollUp.min.js"></script>
        <script src="./assets/js/jquery.nice-select.min.js"></script>
		<script src="./assets/js/jquery.sticky.js"></script>
        
        <!-- contact js -->
        <script src="./assets/js/contact.js"></script>
        <script src="./assets/js/jquery.form.js"></script>
        <script src="./assets/js/jquery.validate.min.js"></script>
        <script src="./assets/js/mail-script.js"></script>
        <script src="./assets/js/jquery.ajaxchimp.min.js"></script>
        
		<!-- Jquery Plugins, main Jquery -->	
        <script src="./assets/js/plugins.js"></script>
        <script src="./assets/js/main.js"></script>
        
</body>
</html>