package dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dao.CreateSqlSessionFactory;

import java.util.*;

import javax.servlet.http.HttpServletRequest;

import vo.JobKnowledgeVO;

public class JobKnowledgeDAO {
	
	private static SqlSessionFactory ssf;
	
	static
	  {
		 ssf=CreateSqlSessionFactory.getSsf();
	  }
	
	// 게시글 리스트 출력하는 메소드 ===============================================================================================
	public static List<JobKnowledgeVO> jobknowledgeListData(Map map) {
		SqlSession session = ssf.openSession();
		List<JobKnowledgeVO> list = new ArrayList<JobKnowledgeVO>();
		
		try {
			list = session.selectList("jobknowledgeListData", map);
			session.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return list;
	}
	
	
	// 게시글 전체태그 총 페이지 구하는 메소드 ==============================================================================================
	public static int jobknowledgeTatalPage() {
		SqlSession session = ssf.openSession();
		int total = 0;
		try {
			total = session.selectOne("jobknowledgeTatalPage");
			session.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return total;
	}
	
	
	// 태그별 게시글 리스트 출력하는 메소드 ===============================================================================================
	public static List<JobKnowledgeVO> jobknowledgeListDataByTag(Map map) {
		SqlSession session = ssf.openSession();
		List<JobKnowledgeVO> list = new ArrayList<JobKnowledgeVO>();
		
		try {
			list = session.selectList("jobknowledgeListDataByTag", map);
			session.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return list;
	}
	
	// 태그별 게시글 총 페이지 구하는 메소드 ==============================================================================================
	public static int jobknowledgeTatalPageByTag(String tag) {
		SqlSession session = ssf.openSession();
		int total = 0;
		try {
			total = session.selectOne("jobknowledgeTatalPageByTag", tag);
			session.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return total;
	}
	
	
	
	
	// 게시글 상세보기 ================================================================================================================
	public static JobKnowledgeVO jobknowledgeDetail(int no) {
		JobKnowledgeVO vo = new JobKnowledgeVO();
		SqlSession session = ssf.openSession();
		
		try {
			session.update("jobknowledgeIncrementHit", no);
			session.commit();
			vo = session.selectOne("jobknowledgeDetail", no);
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	// 상세보기에 해당하는 답변글 가져오기 ====================================================================================================
	public static List<JobKnowledgeVO> jobknowledgeDetailReply(int no) {
		List<JobKnowledgeVO> list = new ArrayList<JobKnowledgeVO>();
		SqlSession session = ssf.openSession();
		
		try {
			list = session.selectList("jobknowledgeDetailReply", no);
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	
	
	
	// 질문하기 =======================================================================================================================
	public static void jobknowledgeInsertAnswer(JobKnowledgeVO vo) {
		SqlSession session = ssf.openSession(true);
		
		try {
			session.insert("jobknowledgeInsertAnswer", vo);
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	// 답변달기 ========================================================================================================================
	public static void jobknowledgeReply(Map map) {
		SqlSession session = ssf.openSession(true);
		
		try {
			session.insert("jobknowledgeReply", map);
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	// 답변달면 원 질문글 답변수 증가 ==========================================================================================================
	public static void jobknowledgeUpdateReply(int no) {
		SqlSession session = ssf.openSession(true);
		
		try {
			session.update("jobknowledgeUpdateReply", no);
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	// 답변달면 group_step 증가 ==========================================================================================================
	public static void jobknowledgeUpdateGroupStep(Map map) {
		SqlSession session = ssf.openSession(true);
		
		try {
			session.update("jobknowledgeUpdateGroupStep", map);
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	
	// 게시글 수정 전 내용 가져오기 =============================================================================================================
	public static JobKnowledgeVO jobknowledgeModifyBoard(int no) {
		JobKnowledgeVO vo = new JobKnowledgeVO();
		SqlSession session = ssf.openSession();
		
		try {
			vo = session.selectOne("jobknowledgeDetail", no);
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	// 게시글 수정하기 =======================================================================================================================
	public static void jobknowledgeModifyBoard_ok(Map map) {
		SqlSession session = ssf.openSession(true);
		
		try {
			session.update("jobknowledgeModifyBoard_ok", map);
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	// 게시글과 답변 삭제하기 ================================================================================================================
	public static void jobknowledgeDeleteAll(int no) {
		SqlSession session = ssf.openSession(true);
		
		try {
			session.delete("jobknowledgeDeleteBoard", no);
			session.delete("jobknowledgeDeleteReply", no);
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	// 답변만 삭제하기 =====================================================================================================================
	public static void deleteReplyAlone(int rno, int bno) {
		SqlSession session = ssf.openSession(true);
		
		try {
			
			session.update("declineBoardHit", bno);
			session.delete("deleteReplyAlone", rno);
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	// 테스트 ===============================================================================================
		public static List<JobKnowledgeVO> test(String tag) {
			SqlSession session = ssf.openSession();
			List<JobKnowledgeVO> list = new ArrayList<JobKnowledgeVO>();
			
			try {
				list = session.selectList("jobknowledgeListData", tag);
				session.close();
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
			
			return list;
		}
}
