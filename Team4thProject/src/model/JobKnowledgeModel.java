package model;

import java.util.*;
import javax.net.ssl.HttpsURLConnection;
import javax.servlet.http.HttpServletRequest;
import vo.*;
import dao.*;

import com.sist.controller.RequestMapping;

// 잡지식인 Model ===================================================================================================

public class JobKnowledgeModel {

	
	// 잡지식인 메인페이지 출력 (게시글 목록) ============================================================================================
	@RequestMapping("jobKnowledge/box.do")
	public String jobKnowledge_box(HttpServletRequest request) {
		
		
		try {
			String tag = request.getParameter("tag");
			
			List<JobKnowledgeVO> list = JobKnowledgeDAO.jobknowledgeListData(tag);
			
			
			request.setAttribute("jobKnowledge_jsp", "../jobKnowledge/list.jsp");
			System.out.println("잡지식인 메인페이지");
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "../jobKnowledge/box.jsp";
	}
	
	
	
	// 질문하기 페이지 출력하는 메소드 ============================================================================================
	@RequestMapping("jobKnowledge/answer.do")
	public String jobKnowledge_answer(HttpServletRequest request) {
		
		try {
			System.out.println("질문하기");
			
			request.setAttribute("jobKnowledge_jsp", "../jobKnowledge/answer.jsp");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		
		return "../jobKnowledge/box.jsp";
	}
	
	
	// 잡지식인 프로필 페이지 출력하는 메소드 ==========================================================================================
	@RequestMapping("jobKnowledge/profile.do")
	public String jobKnowledge_profile(HttpServletRequest request) {
		
		try {
			System.out.println("프로필");
			
			request.setAttribute("jobKnowledge_jsp", "../jobKnowledge/profile.jsp");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		
		return "../jobKnowledge/box.jsp";
	}
	
}
