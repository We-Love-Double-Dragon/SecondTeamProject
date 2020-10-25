package model;

import javax.net.ssl.HttpsURLConnection;
import javax.servlet.http.HttpServletRequest;

import com.sist.controller.RequestMapping;

public class MainModel {
	
	@RequestMapping("main/main.do")
	public String main_page(HttpServletRequest request) {
		
		try {
			request.setAttribute("main_jsp", "../main/content.jsp");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return "../main/main.jsp";
	}
}
