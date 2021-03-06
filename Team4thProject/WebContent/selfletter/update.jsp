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
		$('#updateFrm').submit();
	});
});
</script>


<body>
	<!-- 합격자소서 작성하기 -->
	<div class="whole-wrap">
		<div class="container box_1170">
			<div class="section-top-border">
				<div class="row">
					<div class="col-lg-8 col-md-8" style="min-height: 800px;">
						<h3 class="mb-30">합격자소서 수정하기</h3>
						<form method="post" action="../selfletter/update_ok.do" name="updateFrm" id="updateFrm">

							<div class="mt-10">
								<input type="text" name="ssubject" placeholder="자소서 제목"
									onfocus="this.placeholder = ''" onblur="this.placeholder = '자소서 제목'" required
									class="single-input" value="${vo.ssubject }">
							</div>
							<div class="mt-10">
								<input type="text" name="sname" placeholder="기업명"
									onfocus="this.placeholder = ''" onblur="this.placeholder = '기업명'" required
									class="single-input" value="${vo.sname }">
							</div>
							<div class="mt-10">
								<input type="text" name="sindutype" placeholder="지원 직무"
									onfocus="this.placeholder = ''" onblur="this.placeholder = '지원 직무'" required
									class="single-input" value="${vo.sindutype }">
							</div>

							<div class="mt-10">
								<textarea class="single-textarea" name="sq1" placeholder="질문1" onfocus="this.placeholder = ''"
									onblur="this.placeholder = '질문1'" required>${vo.sq1 }</textarea>
							</div>
							<div class="mt-10">
								<textarea class="single-textarea" name="sa1" placeholder="답변1" onfocus="this.placeholder = ''"
									onblur="this.placeholder = '답변1'" required>${vo.sa1 }</textarea>
							</div>
							<div class="mt-10">
								<textarea class="single-textarea" name="sq2" placeholder="질문2" onfocus="this.placeholder = ''"
									onblur="this.placeholder = '질문2'" required>${vo.sq2 }</textarea>
							</div>
							<div class="mt-10">
								<textarea class="single-textarea" name="sa2" placeholder="답변2" onfocus="this.placeholder = ''"
									onblur="this.placeholder = '답변2'" required>${vo.sa2 }</textarea>
							</div>
							<div class="mt-10">
								<textarea class="single-textarea" name="sq3" placeholder="질문3" onfocus="this.placeholder = ''"
									onblur="this.placeholder = '질문3'" required>${vo.sq3 }</textarea>
							</div>
							<div class="mt-10">
								<textarea class="single-textarea" name="sa3" placeholder="답변3" onfocus="this.placeholder = ''"
									onblur="this.placeholder = '답변3'" required>${vo.sa3 }</textarea>
							</div>
							<div id="btn_group">
				                <input type=submit value="수정" class="genric-btn success-border small" id="submitBtn">
				                <input type=button value="취소" class="genric-btn danger-border small" id="cancleBtn"
				                 onclick="javascript:history.back()">
			               </div>
							
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>
	<!-- End Align Area -->

        
</body>
</html>