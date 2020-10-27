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
	//합격자소서 리스트 출력
	public String letter(HttpServletRequest request) {
		String page=request.getParameter("page");
		if(page==null) 
			page="1";
		
		Map map=new HashMap();
		int curpage=Integer.parseInt(page);
		int rowSize=10;
		int start=(rowSize*curpage)-(rowSize-1);
		int end=rowSize*curpage;
		map.put("start", start);
		map.put("end", end);
		
		List<SelfVO> list=LetterDAO.letterListData(map);
		int totalpage=LetterDAO.letterTotalPage();
		
		request.setAttribute("list", list);
		request.setAttribute("curpage", curpage);
		request.setAttribute("totalpage", totalpage);
		
		request.setAttribute("main_jsp", "../selfletter/letter.jsp");
		return "../main/main.jsp";
	}
	//자소서 리스트 상세보기
	@RequestMapping("selfletter/detail.do")
	public String letter_detail(HttpServletRequest request) {
		String sno=request.getParameter("sno");
		String page=request.getParameter("page");
		if(page==null)
			page="1";
		
		request.setAttribute("main_jsp", "../selfletter/detail.jsp");
		return "../main/main.jsp";
	}
	
	
	
	
	
	
	
	
	
	
	
}
