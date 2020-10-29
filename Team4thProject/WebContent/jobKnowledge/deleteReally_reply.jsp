<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	var rno = $("#rno", opener.document).val();
	var bno = $("#bno", opener.document).val();
	
	$(function(){
		
		$('#yes').click(function(){
			$.ajax({
				type:'post',
				url:'../jobKnowledge/delete_reply.do',
				data: {"rno": rno, "bno": bno},		
				success:function(result){
					window.close();
					opener.document.location.reload();
				}
			})
		})
	});
	
</script>
</head>
<body>
	<div style="text-align: center;">
		<h2>답변을 삭제하시겠습니까?</h2>
		<div>
			<input type=button value=삭제 id=yes>
			<input type=button value=취소 id=no  onclick="javascript:window.close()">
		</div>
	</div>
</body>
</html>