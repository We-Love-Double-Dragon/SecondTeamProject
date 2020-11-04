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
      String page=request.getParameter("page");
      if(page==null)
            page="1";
      String cateno=request.getParameter("cateno");
      if(cateno==null)
    	  cateno="100";
       int curpage=Integer.parseInt(page);
       int rowSize=8;
       int start=(rowSize*curpage)-(rowSize-1);
       int end=rowSize*curpage;
      //map에 저장
       Map map=new HashMap();
       map.put("cateno",cateno);
       map.put("start", start);
       map.put("end", end);
       
       List<ComVO> list=ComDAO.comListData(map);
       int totalpage=ComDAO.comTotalPage(Integer.parseInt(cateno));
       
       request.setAttribute("list", list);
       request.setAttribute("curpage", curpage);
       request.setAttribute("totalpage", totalpage);
       
       request.setAttribute("main_jsp", "../company/company.jsp");
       return "../main/main.jsp";
   }
   //기업 상세보기
   @RequestMapping("company/detail.do")
   public String company_detail(HttpServletRequest request) {
	   
	   try {
		   String cno=request.getParameter("cno");

	      ComVO vo=ComDAO.comDetailData(Integer.parseInt(cno));
	      request.setAttribute("vo", vo);
	      
	      // ------------------------------------------------------------------------------
	      // 기업 후기 
	      List<WorkVO> work_list = ComDAO.workReviewListData(Integer.parseInt(cno));
	      request.setAttribute("work_list", work_list);

	      // 면접 후기
	      List<IntVO> int_list = ComDAO.intReviewListData(Integer.parseInt(cno));
	      request.setAttribute("int_list", int_list);
	      // ------------------------------------------------------------------------------
	} catch (Exception e) {
		e.printStackTrace();
	}
      request.setAttribute("main_jsp", "../company/detail.jsp");
      return "../main/main.jsp";
   }
   
   //기업 검색하기
   @RequestMapping("company/search.do")
   public String company_search(HttpServletRequest request) {
	   try {
		   	request.setCharacterEncoding("UTF-8");
		    String fd=request.getParameter("fd");
		    String ss=request.getParameter("ss");
		    System.out.println("fd:"+fd);
		    System.out.println("ss:"+ss);
		    
		    Map map=new HashMap();
		    map.put("fd",fd);
		    map.put("ss",ss);
		    
		    List<ComVO> list=ComDAO.comsearch(map);
		    request.setAttribute("list", list);
		    request.setAttribute("company_jsp", "../company/search.jsp");
		    
	   }catch(Exception ex) {
		   ex.getMessage();
	   }
	   return "../company/company.jsp";
   }

   
   
   
   
   
   
}