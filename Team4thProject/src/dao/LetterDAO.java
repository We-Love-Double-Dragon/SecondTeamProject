package dao;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import dao.CreateSqlSessionFactory;

import vo.*;
public class LetterDAO {
	private static SqlSessionFactory ssf;
	static {
			ssf=CreateSqlSessionFactory.getSsf();
	}
	//자소서리스트
	//<select id="letterListData" resultType="SelfVO" parameterType="hashmap">
	public static List<SelfVO> letterListData(Map map){
		SqlSession session=ssf.openSession();
		List<SelfVO> list=session.selectList("letterListData",map);
		session.close();
		return list;
	}
	//자소서 총페이지
	//<select id="letterTotalPage" resultType="int">
	public static int letterTotalPage() {
		SqlSession session=ssf.openSession();
		int total=session.selectOne("letterTotalPage");
		session.close();
		return total;
	}
	//자소서 상세보기
	//<select id="letterDetailData" resultType="SelfVO" parameterType="int">
	public static SelfVO letterDetailData(int sno) {
		SqlSession session=ssf.openSession();
		SelfVO vo=new SelfVO();
		try {
			vo=session.selectOne("letterDetailData",sno);
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	//자소서 작성
	//<insert id="letterInsert" parameterType="SelfVO">
	public static void letterInsert(SelfVO vo) {
		try {
			SqlSession session=ssf.openSession(true);
			session.insert("letterInsert",vo);
			session.close();
		}catch(Exception ex) {
			ex.printStackTrace();
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
