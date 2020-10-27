package model;
import java.util.*;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import dao.ComDAO;
import vo.*;
import dao.*;
import javax.servlet.http.HttpServletRequest;
import com.sist.controller.RequestMapping;
import javax.servlet.http.HttpSession;

public class ComModel {
	//기업목록 보기(카테고리별)
	@RequestMapping("company/company.do")
	public String company(HttpServletRequest request) {

	    
	    request.setAttribute("main_jsp", "../company/company.jsp");
	    return "../main/main.jsp";
	}
	//기업 상세보기
	@RequestMapping("company/detail.do")
	public String company_detail(HttpServletRequest request) {

		
		request.setAttribute("main_jsp", "../company/detail.jsp");
		return "../main/main.jsp";
	}
	
	
	
	
}
