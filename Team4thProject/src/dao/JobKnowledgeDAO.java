package dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import java.util.*;
import vo.JobKnowledgeVO;

public class JobKnowledgeDAO {
	
	private static SqlSessionFactory ssf;
	
	// 게시글 리스트 출력하는 메소드 ===============================================================================================
	public static List<JobKnowledgeVO> jobknowledgeListData(String tag) {
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
