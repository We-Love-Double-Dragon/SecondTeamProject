package model;

import javax.servlet.http.HttpServletRequest;
import com.sist.controller.RequestMapping;
import java.util.*;
import dao.*;
import vo.*;

public class NewsModel {	 
	 @RequestMapping("newsTipVideo/news.do")
	   public String newsList(HttpServletRequest request) {
		   String page=request.getParameter("page");
		   if(page==null)
			   page="1";
		   int curpage=Integer.parseInt(page);
		   Map map=new HashMap();
		   int rowSize=10;
		   int start=(rowSize*curpage)-(rowSize-1);
		   int end=rowSize*curpage;
		   
		   map.put("start",start);
		   map.put("end", end);
		   List<NewsVO> list=NewsDAO.newsListData(map);
		   // 총페이지
		   int totalpage=NewsDAO.newsTotalPage();
		   
		   request.setAttribute("curpage", curpage);
		   request.setAttribute("totalpage", totalpage);
		   request.setAttribute("list", list);
		   // include => news.jsp
		   request.setAttribute("main_jsp", "../newsTipVideo/news.jsp");
		   return "../main/main.jsp";
	   	}
	 
	 @RequestMapping("newsTipVideo/newsdetail.do")
	 	public String newsDetail(HttpServletRequest request) {
	 		String no=request.getParameter("no");
	 		NewsVO vo=NewsDAO.newsDetailData(Integer.parseInt(no));
	 		request.setAttribute("vo", vo);
	 		request.setAttribute("main_jsp", "../newsTipVideo/newsdetail.jsp");
	 		return "../main/main.jsp";
	 	}
	 
	 @RequestMapping("newsTipVideo/tip.do")
	   public String tipList(HttpServletRequest request) {
		   String page=request.getParameter("page");
		   if(page==null)
			   page="1";
		   int curpage=Integer.parseInt(page);
		   Map map=new HashMap();
		   int rowSize=10;
		   int start=(rowSize*curpage)-(rowSize-1);
		   int end=rowSize*curpage;
		   
		   map.put("start",start);
		   map.put("end", end);
		   List<TipVO> list=NewsDAO.tipListData(map);
		   // 총페이지
		   int totalpage=NewsDAO.tipTotalPage();
		   
		   request.setAttribute("curpage", curpage);
		   request.setAttribute("totalpage", totalpage);
		   request.setAttribute("list", list);
		   // include => news.jsp
		   request.setAttribute("main_jsp", "../newsTipVideo/tip.jsp");
		   return "../main/main.jsp";
	   	}
	 
	 @RequestMapping("newsTipVideo/tipdetail.do")
	 	public String tipDetail(HttpServletRequest request) {
	 		String no=request.getParameter("no");
	 		TipVO vo=NewsDAO.tipDetailData(Integer.parseInt(no));
	 		request.setAttribute("vo", vo);
	 		request.setAttribute("main_jsp", "../newsTipVideo/tipdetail.jsp");
	 		return "../main/main.jsp";
	 	}
	 
	 @RequestMapping("newsTipVideo/video.do")
	   public String videoList(HttpServletRequest request) {
		   String page=request.getParameter("page");
		   if(page==null)
			   page="1";
		   int curpage=Integer.parseInt(page);
		   Map map=new HashMap();
		   int rowSize=20;
		   int start=(rowSize*curpage)-(rowSize-1);
		   int end=rowSize*curpage;
		   
		   map.put("start",start);
		   map.put("end", end);
		   List<VideoVO> list=NewsDAO.videoListData(map);
		   // 총페이지
		   int totalpage=NewsDAO.videoTotalPage();
		   
		   request.setAttribute("curpage", curpage);
		   request.setAttribute("totalpage", totalpage);
		   request.setAttribute("list", list);
		   // include => news.jsp
		   request.setAttribute("main_jsp", "../newsTipVideo/video.jsp");
		   return "../main/main.jsp";
	  	}
	 	
	 @RequestMapping("newsTipVideo/videodetail.do")
	 	public String videoDetail(HttpServletRequest request) {
	 		String no=request.getParameter("no");
	 		VideoVO vo=NewsDAO.videoDetailData(Integer.parseInt(no));
	 		request.setAttribute("vo", vo);
	 		request.setAttribute("main_jsp", "../newsTipVideo/videodetail.jsp");
	 		return "../main/main.jsp";
	 	}
}