package model;

import javax.net.ssl.HttpsURLConnection;
import javax.servlet.http.HttpServletRequest;

import com.sist.controller.RequestMapping;

public class MainModel {
	
	@RequestMapping("main/main.do")
	public String main_page(HttpServletRequest request) {
		
<<<<<<< Updated upstream
=======
		try {
			System.out.println("메인모델");
			request.setAttribute("main_jsp", "../main/content.jsp");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
>>>>>>> Stashed changes
		
		return "../main/main.jsp";
	}
	
	
	
}
