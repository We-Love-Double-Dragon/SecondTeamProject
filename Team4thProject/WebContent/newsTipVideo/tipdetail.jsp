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
          <td class="text-center" width=30%>${vo.t_no }</td>
          <th class="text-center danger" width=20%>작성일</th>
          <td class="text-center" width=30%>
          <td class="text-center" width=30%>${vo.t_regdate }</td>
          </td>
        </tr>
        <tr>
          <th class="text-center danger" width=20%>작성</th>
          <td class="text-center" width=30%>${vo.t_writer }</td>
          <th class="text-center danger" width=20%>조회수</th>
          <td class="text-center" width=30%>${vo.t_hit }</td>
        </tr>
        <tr>
          <th class="text-center danger" width=20%>제목</th>
          <td class="text-left" colspan="3">${vo.t_title }</td>
        </tr>
        <tr>
        <center><img src="${vo.t_poster2 }" alt="Lights" style="width:100%"></center>
        </tr>
        <tr>
          <td class="text-left" colspan="4" valign="top" height="200">
            <pre style="white-space: pre-wrap;border: none;background-color: white">${vo.t_content }</pre>
          </td>
        </tr>
      </table>
    </div>
  </div>
</body>
</html>