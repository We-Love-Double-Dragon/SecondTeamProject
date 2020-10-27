package dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import vo.ResumeVO;

public class ResumeDAO {
	private static SqlSessionFactory ssf;
	static
	{
		ssf=CreateSqlSessionFactory.getSsf();
	}
	
	
	//
	 public static void resumeInsert(ResumeVO vo)
	 {
		 SqlSession session=ssf.openSession(true);
		 session.insert("resumeInsert", vo);
		 session.close();
	 }
	 
}
