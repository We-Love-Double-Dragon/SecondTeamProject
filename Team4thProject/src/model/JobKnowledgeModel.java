package model;

import java.util.*;
import javax.net.ssl.HttpsURLConnection;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;

import vo.*;
import dao.*;

import com.sist.controller.RequestMapping;

// 잡지식인 Model ===================================================================================================

public class JobKnowledgeModel {

	
	// 잡지식인 메인페이지 출력 (전체태그 게시물 출력) ============================================================================================
	@RequestMapping("jobKnowledge/box.do")
	public String jobKnowledge_box(HttpServletRequest request) {
		
		
		return "../jobKnowledge/box.jsp";
	}
	
	
	
	
	
	// 전체태그 게시물 출력 ============================================================================================
	@RequestMapping("jobKnowledge/list.do")
	public String jobKnowledge_list(HttpServletRequest request) {
		
		
		try {
			
			// 변수 -------------------------------------------------------------
			String page = request.getParameter("page");					// 사용자로부터 받는 페이지
			if(page == null) {		
				page = "1";
			}
			
			int currpage = Integer.parseInt(page);						// 현재 페이지
			int totalpage = JobKnowledgeDAO.jobknowledgeTatalPage();	// 총 페이지
			int rowSize = 10;											// 한번에 출력될 게시글
			int start = (rowSize*currpage) - (rowSize - 1);				
			int end = (rowSize*currpage);
			int block = 5;												// 페이지 블록
			int startpage=((currpage-1)/block*block)+1;					
			int endpage=((currpage-1)/block*block)+block;
			if(endpage>totalpage) {
				endpage=totalpage;
			}
			
			// 해쉬맵에 시작 / 끝 변수 담기 ------------------------------------------------------
			Map map = new HashMap();
			map.put("start", start);
			map.put("end", end);
			
			List<JobKnowledgeVO> list = JobKnowledgeDAO.jobknowledgeListData(map);			// DAO의 메소드 리턴값을 받는 List 변수
			
			// 페이지로 보낼 파라미터들 -----------------------------------------------------------
			request.setAttribute("list", list);
			request.setAttribute("currpage", currpage);
			request.setAttribute("totalpage", totalpage);
			request.setAttribute("block", block);
			request.setAttribute("startpage", startpage);
			request.setAttribute("endpage", endpage);
			request.setAttribute("jobKnowledge_jsp", "../jobKnowledge/list.jsp");
			System.out.println("잡지식인 메인페이지");
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "../jobKnowledge/box.jsp";
	}
// 태그별 게시물 출력 ============================================================================================
	@RequestMapping("jobKnowledge/listByTag.do")
	public String jobKnowledge_listByTag(HttpServletRequest request) {
		
		
		try {
			System.out.println("태그별 게시물출력 모델");
			
			// 변수 -------------------------------------------------------------
			String page = request.getParameter("page");					// 사용자로부터 받는 페이지
			String tag = request.getParameter("tag");					// 사용자로부터 받는 태그
			if(page == null) {		
				page = "1";
			}
			if(tag == null) {
				tag = "취업지원";
			}
			
			int currpage = Integer.parseInt(page);								// 현재 페이지
			int totalpage = JobKnowledgeDAO.jobknowledgeTatalPageByTag(tag);	// 총 페이지
			int rowSize = 10;													// 한번에 출력될 게시글
			int start = (rowSize*currpage) - (rowSize - 1);				
			int end = (rowSize*currpage);
			int block = 5;														// 페이지 블록
			int startpage=((currpage-1)/block*block)+1;					
			int endpage=((currpage-1)/block*block)+block;
			if(endpage>totalpage) {
				endpage=totalpage;
			}
			
			// 해쉬맵에 시작 / 끝 변수 담기 ------------------------------------------------------
			Map map = new HashMap();
			map.put("start", start);
			map.put("end", end);
			map.put("tag", tag);
			
			List<JobKnowledgeVO> list = JobKnowledgeDAO.jobknowledgeListDataByTag(map);			// DAO의 메소드 리턴값을 받는 List 변수
			
			// 페이지로 보낼 파라미터들 -----------------------------------------------------------
			request.setAttribute("list", list);
			request.setAttribute("currpage", currpage);
			request.setAttribute("totalpage", totalpage);
			request.setAttribute("block", block);
			request.setAttribute("startpage", startpage);
			request.setAttribute("endpage", endpage);
			request.setAttribute("tag", tag); 													// 태그 파라미터 보내기
			request.setAttribute("jobKnowledge_jsp", "../jobKnowledge/listByTag.jsp");
			System.out.println("잡지식인 메인페이지");
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "../jobKnowledge/box.jsp";
	}
	
	
	
	
	
	
	// 게시글 상세보기 ========================================================================================================
	@RequestMapping("jobKnowledge/detail.do")
	public String jobKnowledge_detail(HttpServletRequest request) {
		
		try {
			request.setCharacterEncoding("utf-8");
			System.out.println("게시글 상세페이지");
			
			String no = request.getParameter("no");					// 사용자로부터 받는 글번호 no
			
			JobKnowledgeVO vo = JobKnowledgeDAO.jobknowledgeDetail(Integer.parseInt(no));				// DAO의 상세보기 메소드 리턴값을 vo에 담기 
			
			List<JobKnowledgeVO> list = JobKnowledgeDAO.jobknowledgeDetailReply(Integer.parseInt(no));	// list에 답변글들을 담기
			
			
			request.setAttribute("vo", vo);
			request.setAttribute("list", list);
			request.setAttribute("jobKnowledge_jsp", "../jobKnowledge/detail.jsp");
		} catch (Exception e) {
			e.printStackTrace();
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
	// 질문하기 메소드 ========================================================================================================
	/*
	 * no, id, subject, content, regdate, hit, group_id, group_step, root, depth, comment_id, tag, adopt 
	 */
	@RequestMapping("jobKnowledge/answer_ok.do")
	public String jobknowledge_InsertAnswer(HttpServletRequest request) {
		
		try {
			System.out.println("질문하기 모델");			
			request.setCharacterEncoding("utf-8");
			
			// 세션 -------------------------------------------------------
			HttpSession session = request.getSession();									// 세션 가져오기
			
			
			// answer.jsp 페이지로부터 받는 파라미터들 ----------------------------
//			String id = request.getParameter("id");
			String subject = request.getParameter("subject");
			String content = request.getParameter("content");
			String tag = request.getParameter("tag");
			
			// VO에 파라미터를 담아서 DAO의 질문하기 메소드 실행 -------------------------
			JobKnowledgeVO vo = new JobKnowledgeVO();
			vo.setId((String)session.getAttribute("id"));								// 아이디를 세션id로 지정 ☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★
			
			vo.setSubject(subject);
			vo.setContent(content);
			vo.setTag(tag);
			JobKnowledgeDAO.jobknowledgeInsertAnswer(vo);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "../jobKnowledge/answer_ok.jsp";
	}
	
	
	
	
	
	
	
	// 답변달기 메소드 ====================================================================================================
	@RequestMapping("jobKnowledge/reply.do")
	public String jobknowledge_Reply(HttpServletRequest request) {
			
		
		
		// 세션 --------------------------------------------------------------
		HttpSession session = request.getSession();
		
		// 게시글 페이지로부터 받는 파라미터들 ----------------------------------------------
		String no = "";
		String content = "";							// 아이디를 세션id로 지정 ☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★	
		String sessionID = "";
		
		try {
			System.out.println("답변달기 모델");
			request.setCharacterEncoding("utf-8");
			
			// 게시글 페이지로부터 받는 파라미터들 ----------------------------------------------
			no = request.getParameter("no");
			content = request.getParameter("content");							// 아이디를 세션id로 지정 ☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★☆★	
			sessionID = (String)session.getAttribute("id");
			
			
			
			// Map에 파라미터 담아서 DAO 메소드 실행 --------------------------------------------
			Map map = new HashMap();
			map.put("id", sessionID);
			map.put("content", content);
			map.put("no", no);
			
			
			JobKnowledgeDAO.jobknowledgeReply(map);
			JobKnowledgeDAO.jobknowledgeUpdateReply(Integer.parseInt(no));
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return "redirect:../jobKnowledge/detail.do?no=" + no;
//		return "../jobKnowledge/reply_ok.jsp";
	}
	
	
	
	
	
	
	// 게시글 수정 전 내용 가져오기 =================================================================================================================
	@RequestMapping("jobKnowledge/modify_board.do")
	public String jobknowledgeModifyBoard(HttpServletRequest request) {
		try {
			request.setCharacterEncoding("utf-8");
			
			// 사용자로부터 받는  파라미터 -----------------------------------------------
			String no = request.getParameter("no");
			
			// DAO 메소드 결과를 vo에 담아서 전송
			JobKnowledgeVO vo = JobKnowledgeDAO.jobknowledgeModifyBoard(Integer.parseInt(no));
			request.setAttribute("vo", vo);
			request.setAttribute("jobKnowledge_jsp", "../jobKnowledge/modify_board.jsp");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "../jobKnowledge/box.jsp";			// ????????????????????????????????????????????????????????????????????????????
	}
	// 게시글 수정하기 ===========================================================================================================================
	@RequestMapping("jobKnowledge/modify_board_ok.do")
	public String jobknowledgeModifyBoard_ok(HttpServletRequest request) {
		
		try {
			System.out.println("게시글 수정하기 모델");
			request.setCharacterEncoding("utf-8");
			
			// 사용자로부터 받는 파라미터 ----------------------------------------------------
			String no = request.getParameter("no");
			String subject = request.getParameter("subject");
			String content = request.getParameter("content");
			
			// Map에 파라미터 넣기 ---------------------------------------------------------
			Map map = new HashMap();
			map.put("no", Integer.parseInt(no));
			map.put("subject", subject);
			map.put("content", content);
			
			// DAO 메소드 실행 -----------------------------------------------------------
			JobKnowledgeDAO.jobknowledgeModifyBoard_ok(map);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "../jobKnowledge/modify_board_ok.jsp";
	}
	
	
	
	
	
	
	// 게시글과 답변 삭제하기 =======================================================================================================
	@RequestMapping("jobKnowledge/deleteAll.do")
	public String jobKnowledgeDeleteAll(HttpServletRequest request) {
		
		try {
			System.out.println("게시글과 답변 삭제하기");
			
			// 사용자로부터 받는 파라미터 --------------------------------------
			String no = request.getParameter("no");
			System.out.println(no);
			
			// DAO 메소드 실행
			JobKnowledgeDAO.jobknowledgeDeleteAll(Integer.parseInt(no));
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "../jobKnowledge/deleteAll.jsp";
	}
	// 삭제 확인창 띄우기 ===========================================================================================================
	@RequestMapping("jobKnowledge/deleteReally.do")
	public String jobKnowledgeDeleteReally(HttpServletRequest request) {
		return "../jobKnowledge/deleteReally.jsp";
	}
	
	
	

	// 답변만 삭제하기 =======================================================================================================
	@RequestMapping("jobKnowledge/delete_reply.do")
	public String jobKnowledgeDeleteReplyAlone(HttpServletRequest request) {
		
		
		
		try {
			System.out.println("답변만 삭제하기");
			
			// 사용자로부터 받는 파라미터 --------------------------------------
			String rno = request.getParameter("rno");		// 답변의 번호
			String bno = request.getParameter("bno");		// 질문글 번호
			String content = request.getParameter("content");
			
			System.out.println("답변 : " + rno);
			System.out.println("질문 : " + bno);
			
			
			// DAO 메소드 실행
			JobKnowledgeDAO.deleteReplyAlone(Integer.parseInt(rno), Integer.parseInt(bno));
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
//		return "redirect:../jobKnowledge/detail.do?no=" + bno;
		return "../jobKnowledge/delete_reply.jsp";
	}
	// 답변만 삭제 확인창 띄우기 ===========================================================================================================
	@RequestMapping("jobKnowledge/deleteReally_reply.do")
	public String jobKnowledgeDeleteReally_reply(HttpServletRequest request) {
		return "../jobKnowledge/deleteReally_reply.jsp";
	}
	
	
	
	
	// 댓글달기 ==========================================================================================================================
//	@RequestMapping("jobKnowledge/comment.do")
//	public String jobknowledge_InsertComment(HttpServletRequest request) {
//		
//		HttpSession session = request.getSession();
//		String id = (String)session.getAttribute("id");						// id는 세션에서 받으면됨
//		String content = request.getParameter("content");
//		String rno = request.getParameter("rno");			// 답변글번호
//		String bno = request.getParameter("bno");			// 질문글번호
//		
//		Map map = new HashMap();
//		map.put("id", id);
//		map.put("content", content);
//		map.put("rno", rno);
//		
//		request.setAttribute("bno", bno);					// 질문글번호는 comment.jsp로 넘기고 바로 detail.do?no=${bno} 리다이렉트
//		
//		JobKnowledgeDAO.jobknowledgeInsertComment(map);
//		
//		return "../jobKnowledge/comment.jsp";
//	}
//	// 댓글창 보이기 =========================================================================================================================
//	@RequestMapping("jobKnowledge/commentButton.do")
//	public String jobknowledge_commentButton(HttpServletRequest request) {
//		
//		return "../jobKnowledge/commentButton.jsp";
//	}
	
	
	
	
	
	
	// 전체태그 게시물 출력 ============================================================================================
	@RequestMapping("jobKnowledge/search.do")
	public String jobKnowledge_search(HttpServletRequest request) {
		
		
		try {
			
			// 변수 -------------------------------------------------------------
			String page = request.getParameter("page");					// 사용자로부터 받는 페이지
			if(page == null) {		
				page = "1";
			}
			String finding = request.getParameter("finding");
			String voca = request.getParameter("voca");
			
			
			int currpage = Integer.parseInt(page);						// 현재 페이지
			
			int rowSize = 10;											// 한번에 출력될 게시글
			int start = (rowSize*currpage) - (rowSize - 1);				
			int end = (rowSize*currpage);
			int block = 5;												// 페이지 블록
			int startpage=((currpage-1)/block*block)+1;					
			int endpage=((currpage-1)/block*block)+block;
			
			System.out.println("태그 : " + finding);
			System.out.println("검색어 : " + voca);
			
			
			// 해쉬맵에 시작 / 끝 변수 담기 ------------------------------------------------------
			Map map = new HashMap();
			map.put("start", start);
			map.put("end", end);
			map.put("finding", finding);
			map.put("voca", voca);
			
			int totalpage = JobKnowledgeDAO.searchTotalPage(map);	// 총 페이지
			if(endpage>totalpage) {
				endpage=totalpage;
			}
			List<JobKnowledgeVO> list = JobKnowledgeDAO.searchBoard(map);			// DAO의 메소드 리턴값을 받는 List 변수
			
			// 페이지로 보낼 파라미터들 -----------------------------------------------------------
			request.setAttribute("list", list);
			request.setAttribute("currpage", currpage);
			request.setAttribute("totalpage", totalpage);
			request.setAttribute("block", block);
			request.setAttribute("startpage", startpage);
			request.setAttribute("endpage", endpage);
			request.setAttribute("jobKnowledge_jsp", "../jobKnowledge/search.jsp");
			System.out.println("검색");
			
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
	
	
	
	
	// 테스트 ============================================================================================
		@RequestMapping("jobKnowledge/test.do")
		public String test(HttpServletRequest request) {
			
			
			try {
				String rno = request.getParameter("rno");
				String bno = request.getParameter("bno");
				
				request.setAttribute("rno", rno);
				request.setAttribute("bno", bno);
				request.setAttribute("jobKnowledge_jsp", "../jobKnowledge/test.jsp");
				System.out.println("테스트 모델");
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "../jobKnowledge/box.jsp";
		}
		
		
	
	
}
