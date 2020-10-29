package model;

import java.util.HashMap;




import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.sist.controller.RequestMapping;
import dao.CreateSqlSessionFactory;
import dao.*;
import vo.*;

// 공모전 Model ===================================================================================================

public class GongmoModel {

	   // 공모전 전체보기 출력  =====================================================================================================
	   @RequestMapping("gongmo/gongmo_all.do")
	   public String gongmo_all(HttpServletRequest request)
	   {
		   //변수 -------------------------------------------------------------------------------------
		   String page=request.getParameter("page");
		   if(page==null)
			   page="1";
		   int curpage=Integer.parseInt(page);
		   Map map=new HashMap();
		   int rowSize=12;
		   int start=(rowSize*curpage)-(rowSize-1);
		   int end=rowSize*curpage;
		   map.put("start", start);
		   map.put("end",end);
		   List<GongmoVO> list=GongmoDAO.gongmoTotalData(map);
		   int totalpage=GongmoDAO.gongmoTotalPage2();
		   
		   int BLOCK=5;
		   int startPage=((curpage-1)/BLOCK*BLOCK)+1;
		   int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
		   if(endPage>totalpage)
			   endPage=totalpage;
		   
		   // request에 값을 채운다 => JSP에서 필요한 데이터를 보내기 시작 --------------------------------------------
		   request.setAttribute("list", list);
		   request.setAttribute("curpage", curpage);
		   request.setAttribute("totalpage", totalpage);
		   request.setAttribute("BLOCK", BLOCK);
		   request.setAttribute("startPage", startPage);
		   request.setAttribute("endPage", endPage);
		   request.setAttribute("main_jsp", "../gongmo/gongmo_all.jsp");
		   
		   return "../main/main.jsp";
	   }
	   
	   // 공모전 메인페이지 출력  =====================================================================================================
	   @RequestMapping("gongmo/gongmo_home.do")
	   public String gongmo_home(HttpServletRequest request)
	   {
		   try {
			 //변수 -------------------------------------------------------------------------------------
			   String page=request.getParameter("page");
			   if(page==null)
				   page="1";
			   int curpage=Integer.parseInt(page);
			   Map map=new HashMap();
			   int rowSize=12;
			   int start=(rowSize*curpage)-(rowSize-1);
			   int end=rowSize*curpage;
			   map.put("start", start);
			   map.put("end",end);
			   List<GongmoVO> list=GongmoDAO.gongmoTotalData(map);
			   int totalpage=GongmoDAO.gongmoTotalPage2();
			   
			   int BLOCK=5;
			   int startPage=((curpage-1)/BLOCK*BLOCK)+1;
			   int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
			   if(endPage>totalpage)
				   endPage=totalpage;
			   
			   // request에 값을 채운다 => JSP에서 필요한 데이터를 보내기 시작 --------------------------------------------
			   request.setAttribute("list", list);
			   request.setAttribute("curpage", curpage);
			   request.setAttribute("totalpage", totalpage);
			   request.setAttribute("BLOCK", BLOCK);
			   request.setAttribute("startPage", startPage);
			   request.setAttribute("endPage", endPage);
			   request.setAttribute("main_jsp", "../gongmo/gongmo_home.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
		   
		   
		   
		   return "../main/main.jsp";
	   }
	   
	   // 공모전 기획/아이디어(1번) 출력  =====================================================================================================
	   @RequestMapping("gongmo/gongmo_cno1.do")
	   public String gongmo_cno1(HttpServletRequest request)
	   {
		   //변수 -------------------------------------------------------------------------------------
			String page = request.getParameter("page");
			if (page == null)
				page = "1";
			String gm_cate=request.getParameter("cno");
			
			int curpage = Integer.parseInt(page);
			int rowSize = 12;
			int start = (rowSize * curpage) - (rowSize - 1);
			int end = rowSize * curpage;

			// Map에 저장 ------------------------------------------------------------------------------
			Map map = new HashMap();
			map.put("gm_cate", gm_cate);
			map.put("start", start);
			map.put("end", end);
			
			// 데이터베이스 연결
			List<GongmoVO> list = GongmoDAO.gongmoListData(map);
			
			int totalpage = GongmoDAO.gongmoTotalPage(Integer.parseInt(gm_cate));
			
			// request에 값을 채운다 => JSP에서 필요한 데이터를 보내기 시작 --------------------------------------------
			request.setAttribute("list", list);
			request.setAttribute("curpage", curpage);
			request.setAttribute("totalpage", totalpage);

			request.setAttribute("main_jsp", "../gongmo/gongmo_cno1.jsp");
			return "../main/main.jsp";
	   }
	   // 공모전 디자인(2번) 출력  =====================================================================================================
	   @RequestMapping("gongmo/gongmo_cno2.do")
	   public String gongmo_cno2(HttpServletRequest request)
	   {
		    //변수 -------------------------------------------------------------------------------------
		   	String gm_cate = request.getParameter("cno");
			String page = request.getParameter("page");
			if (page == null)
				page = "1";
	
			int curpage = Integer.parseInt(page);
			int rowSize = 12;
			int start = (rowSize * curpage) - (rowSize - 1);
			int end = rowSize * curpage;
			
			// Map에 저장 ------------------------------------------------------------------------------
			Map map = new HashMap();
			map.put("gm_cate", gm_cate);
			map.put("start", start);
			map.put("end", end);
			
			List<GongmoVO> list = GongmoDAO.gongmoListData(map);
			
			int totalpage = GongmoDAO.gongmoTotalPage(Integer.parseInt(gm_cate));
			
			// request에 값을 채운다 => JSP에서 필요한 데이터를 보내기 시작 --------------------------------------------
			request.setAttribute("list", list);
			request.setAttribute("curpage", curpage);
			request.setAttribute("totalpage", totalpage);
			
			request.setAttribute("main_jsp", "../gongmo/gongmo_cno2.jsp");
			return "../main/main.jsp";
	   }
	   
	   // 공모전 광고/마케팅(3번) 출력  =====================================================================================================
	   @RequestMapping("gongmo/gongmo_cno3.do")
	   public String gongmo_cno3(HttpServletRequest request)
	   {
		   	//변수 -------------------------------------------------------------------------------------
		   	String gm_cate = request.getParameter("cno");
			String page = request.getParameter("page");
			if (page == null)
				page = "1";
			
			int curpage = Integer.parseInt(page);
			int rowSize = 12;
			int start = (rowSize * curpage) - (rowSize - 1);
			int end = rowSize * curpage;
			
			// Map에 저장 ------------------------------------------------------------------------------
			Map map = new HashMap();
			map.put("gm_cate", gm_cate);
			map.put("start", start);
			map.put("end", end);			
			List<GongmoVO> list = GongmoDAO.gongmoListData(map);
			
			int totalpage = GongmoDAO.gongmoTotalPage(Integer.parseInt(gm_cate));
			
			// request에 값을 채운다 => JSP에서 필요한 데이터를 보내기 시작 --------------------------------------------
			request.setAttribute("list", list);
			request.setAttribute("curpage", curpage);
			request.setAttribute("totalpage", totalpage);
			
			request.setAttribute("main_jsp", "../gongmo/gongmo_cno3.jsp");
			return "../main/main.jsp";
	   }
	   
	   // 공모전 영상/사진/UCC(4번) 출력  =====================================================================================================
	   @RequestMapping("gongmo/gongmo_cno4.do")
	   public String gongmo_cno4(HttpServletRequest request)
	   {
		   	//변수 -------------------------------------------------------------------------------------
		   	String gm_cate = request.getParameter("cno");
			String page = request.getParameter("page");
			if (page == null)
				page = "1";
			
			int curpage = Integer.parseInt(page);
			int rowSize = 12;
			int start = (rowSize * curpage) - (rowSize - 1);
			int end = rowSize * curpage;
			
			// Map에 저장 ------------------------------------------------------------------------------
			Map map = new HashMap();
			map.put("gm_cate", gm_cate);
			map.put("start", start);
			map.put("end", end);	
			
			
			List<GongmoVO> list = GongmoDAO.gongmoListData(map);
			
			int totalpage = GongmoDAO.gongmoTotalPage(Integer.parseInt(gm_cate));
			
			// request에 값을 채운다 => JSP에서 필요한 데이터를 보내기 시작 --------------------------------------------
			request.setAttribute("list", list);
			request.setAttribute("curpage", curpage);
			request.setAttribute("totalpage", totalpage);
			
			request.setAttribute("main_jsp", "../gongmo/gongmo_cno4.jsp");
			return "../main/main.jsp";
	   }
	   
	   // 공모전 문학/사나리오(5번) 출력  =====================================================================================================
	   @RequestMapping("gongmo/gongmo_cno5.do")
	   public String gongmo_cno5(HttpServletRequest request)
	   {
		    //변수 -------------------------------------------------------------------------------------
		   	String gm_cate = request.getParameter("cno");
			String page = request.getParameter("page");
			if (page == null)
				page = "1";
			
			int curpage = Integer.parseInt(page);
			int rowSize = 12;
			int start = (rowSize * curpage) - (rowSize - 1);
			int end = rowSize * curpage;
			
			// Map에 저장 ------------------------------------------------------------------------------
			Map map = new HashMap();
			map.put("gm_cate", gm_cate);
			map.put("start", start);
			map.put("end", end);			
			List<GongmoVO> list = GongmoDAO.gongmoListData(map);
			
			int totalpage = GongmoDAO.gongmoTotalPage(Integer.parseInt(gm_cate));

			// request에 값을 채운다 => JSP에서 필요한 데이터를 보내기 시작 --------------------------------------------
			request.setAttribute("list", list);
			request.setAttribute("curpage", curpage);
			request.setAttribute("totalpage", totalpage);
			
			request.setAttribute("main_jsp", "../gongmo/gongmo_cno5.jsp");
			return "../main/main.jsp";
	   }
	   
	   // 공모전 기타(6번) 출력  =====================================================================================================
	   @RequestMapping("gongmo/gongmo_cno6.do")
	   public String gongmo_cno6(HttpServletRequest request)
	   {
		    //변수 -------------------------------------------------------------------------------------
		   	String gm_cate = request.getParameter("cno");
			String page = request.getParameter("page");
			if (page == null)
				page = "1";
			
			int curpage = Integer.parseInt(page);
			int rowSize = 12;
			int start = (rowSize * curpage) - (rowSize - 1);
			int end = rowSize * curpage;
			
			// Map에 저장 ------------------------------------------------------------------------------
			Map map = new HashMap();
			map.put("gm_cate", gm_cate);
			map.put("start", start);
			map.put("end", end);			
			List<GongmoVO> list = GongmoDAO.gongmoListData(map);
			
			int totalpage = GongmoDAO.gongmoTotalPage(Integer.parseInt(gm_cate));

			// request에 값을 채운다 => JSP에서 필요한 데이터를 보내기 시작 --------------------------------------------
			request.setAttribute("list", list);
			request.setAttribute("curpage", curpage);
			request.setAttribute("totalpage", totalpage);
			
			request.setAttribute("main_jsp", "../gongmo/gongmo_cno6.jsp");
			return "../main/main.jsp";
	   }

  
	   // 공모전 디자인(2번) 출력  =====================================================================================================
	   @RequestMapping("gongmo/gongmo_detail.do")
	   public String gongmo_detail(HttpServletRequest request)
	   {	
		   
		   try {
			   
			   String gm_no=request.getParameter("no");
			   GongmoVO vo= GongmoDAO.gongmoDetailData(Integer.parseInt(gm_no));
			   
			   // request에 값을 채운다 => JSP에서 필요한 데이터를 보내기 시작 --------------------------------------------
			   request.setAttribute("vo", vo);
			   request.setAttribute("main_jsp", "../gongmo/gongmo_detail.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
		   	   
		   return "../main/main.jsp";
	    }
	   
	   

	   
	 	
}
