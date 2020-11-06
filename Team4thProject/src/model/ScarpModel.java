package model;

import javax.servlet.http.HttpServletRequest;

import com.sist.controller.RequestMapping;

public class ScarpModel {
	@RequestMapping("mypage/scrap.do")
	 public String my_main(HttpServletRequest request)
	 {
		  request.setAttribute("mypage_jsp", "../mypage/scrap.jsp");
		  return "../mypage/mymain.jsp";
	 }
	
}
