package model;
import java.util.*;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import dao.LetterDAO;
import vo.*;
import dao.*;
import javax.servlet.http.HttpServletRequest;
import com.sist.controller.RequestMapping;
import javax.servlet.http.HttpSession;

public class LetterModel {
	@RequestMapping("selfletter/letter.do")
	public String letter(HttpServletRequest request) {

		
		request.setAttribute("main_jsp", "../selfletter/letter.jsp");
		return "../main/main.jsp";
	}
	
	
	
	
	
	
	
	
	
	
	
}
