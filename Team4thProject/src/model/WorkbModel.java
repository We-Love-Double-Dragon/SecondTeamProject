package model;
import java.util.*;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import vo.*;
import dao.*;
import dao.WorkbDAO;
import javax.servlet.http.HttpServletRequest;
import com.sist.controller.RequestMapping;
import javax.servlet.http.HttpSession;

public class WorkbModel {
	@RequestMapping("Workb/workb.do")
	public String workb(HttpServletRequest request) {
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
		
		List<WorkBVO> list=WorkbDAO.workbListData(map);
		int totalpage=WorkbDAO.workbTotalPage();
		
		request.setAttribute("list", list);
		request.setAttribute("curpage", curpage);
		request.setAttribute("totalpage", totalpage);
		
		request.setAttribute("main_jsp", "../Workb/workb.jsp");
		return "../main/main.jsp";
	}	

	//채용공고 상세보기
	   @RequestMapping("Workb/detail.do")
	   public String workb_detail(HttpServletRequest request) {
	      String l_no=request.getParameter("l_no");
	      String lcateno=request.getParameter("lcateno");

	      WorkBVO vo=WorkbDAO.workbDetailData(Integer.parseInt(l_no));
	      request.setAttribute("vo", vo);
	      
	      request.setAttribute("main_jsp", "../Workb/detail.jsp");
	      return "../main/main.jsp";
	   }
}