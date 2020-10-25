package model;

import javax.net.ssl.HttpsURLConnection;
import javax.servlet.http.HttpServletRequest;

import com.sist.controller.RequestMapping;

public class MainModel {
	@RequestMapping("main/main.do")
	public String main_page(HttpServletRequest request) {	
		request.setAttribute("main_jsp", "../main/content.jsp");
		return "../main/main.jsp";
	}
}
