<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <div class="container">
    <div class="row">
      <h1>내용보기</h1>
      <table class="table table-striped">
        <tr>
          <th class="text-center danger" width=20%>번호</th>
          <td class="text-center" width=30%>${vo.v_no }</td>
        </tr>
        <tr>
          <th class="text-center danger" width=20%>이름</th>
          <td class="text-center" width=30%>${vo.v_writer }</td>
          <th class="text-center danger" width=20%>조회수</th>
          <td class="text-center" width=30%>${vo.v_hit }</td>
        </tr>
        <tr>
          <th class="text-center danger" width=20%>제목</th>
          <td class="text-left" colspan="3">${vo.v_title }</td>
        </tr>
        <tr>
          <td class="text-left" colspan="4" valign="top" height="200">
          <iframe id="player" type="text/html" width="640" height="360" src="${vo.v_video }" frameborder="0"></iframe>
          </td>
        </tr>
      </table>
    </div>
  </div>
</body>
</html>