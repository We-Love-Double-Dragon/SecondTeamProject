<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!doctype html>
<html>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$('#submitBtn').click(function(){
		$('#insertFrm').submit();
	});
});
</script>


<body>
	<!-- 합격자소서 작성하기 -->
	<div class="whole-wrap">
		<div class="container box_1170">
			<div class="section-top-border">
				<div class="row">
					<div class="col-lg-8 col-md-8">
						<h3 class="mb-30">합격자소서 작성하기</h3>
						<form method="post" action="../selfletter/insert_ok.do" name="insertFrm" id="insertFrm">
							<div id="btn_group">
				                <input type=submit value="입력" class="genric-btn success-border small" id="submitBtn">
				                <input type=button value="취소" class="genric-btn danger-border small" id="cancleBtn"
				                 onclick="javascript:history.back()">
			               </div>
							<div class="mt-10">
								<input type="text" name="자소서 제목" placeholder="자소서 제목"
									onfocus="this.placeholder = ''" onblur="this.placeholder = '자소서 제목'" required
									class="single-input">
							</div>
							<div class="mt-10">
								<input type="text" name="기업명" placeholder="기업명"
									onfocus="this.placeholder = ''" onblur="this.placeholder = '기업명'" required
									class="single-input">
							</div>
							<div class="mt-10">
								<input type="text" name="지원 직무" placeholder="지원 직무"
									onfocus="this.placeholder = ''" onblur="this.placeholder = '지원 직무'" required
									class="single-input">
							</div>

							<div class="mt-10">
								<textarea class="single-textarea" placeholder="질문1" onfocus="this.placeholder = ''"
									onblur="this.placeholder = '질문1'" required></textarea>
							</div>
							<div class="mt-10">
								<textarea class="single-textarea" placeholder="답변1" onfocus="this.placeholder = ''"
									onblur="this.placeholder = '답변1'" required></textarea>
							</div>
							<div class="mt-10">
								<textarea class="single-textarea" placeholder="질문2" onfocus="this.placeholder = ''"
									onblur="this.placeholder = '질문2'" required></textarea>
							</div>
							<div class="mt-10">
								<textarea class="single-textarea" placeholder="답변2" onfocus="this.placeholder = ''"
									onblur="this.placeholder = '답변2'" required></textarea>
							</div>
							<div class="mt-10">
								<textarea class="single-textarea" placeholder="질문3" onfocus="this.placeholder = ''"
									onblur="this.placeholder = '질문3'" required></textarea>
							</div>
							<div class="mt-10">
								<textarea class="single-textarea" placeholder="답변3" onfocus="this.placeholder = ''"
									onblur="this.placeholder = '답변3'" required></textarea>
							</div>
							
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- End Align Area -->


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