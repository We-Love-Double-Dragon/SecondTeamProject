package model;

import javax.net.ssl.HttpsURLConnection;
import javax.servlet.http.HttpServletRequest;

import com.sist.controller.RequestMapping;

public class MainModel {
	
	@RequestMapping("main/main.do")
	public String main_page(HttpServletRequest request) {
		
		
		return "../main/main.jsp";
	}
}
