package model;
import java.util.*;

import javax.servlet.http.HttpServletRequest;

import com.sist.controller.RequestMapping;

import dao.*;
import vo.*;
public class ComModel {
	@RequestMapping("company/company.do")
	public String company(HttpServletRequest request) {
		
	    
	    request.setAttribute("main_jsp", "../company/company.jsp");
	    return "../main/main.jsp";
	}

	
	
	
	
}
