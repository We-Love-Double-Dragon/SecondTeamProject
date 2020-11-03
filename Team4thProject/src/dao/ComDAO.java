package dao;
import java.io.Reader;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import dao.CreateSqlSessionFactory;

import vo.*;
public class ComDAO {
	private static SqlSessionFactory ssf;
	static {
		ssf=CreateSqlSessionFactory.getSsf();
	}
	//기업 리스트
	//<select id="comListData" resultType="ComVO" parameterType="hashmap">
	public static List<ComVO> comListData(Map map){
		SqlSession session=ssf.openSession();
		List<ComVO> list=session.selectList("comListData",map);
		session.close();
		return list;
	}
	//기업 총페이지
	//<select id="comTotalPage" resultType="int">
	public static int comTotalPage(int cateno){
		SqlSession session=ssf.openSession();
		int total=session.selectOne("comTotalPage",cateno);
		session.close();
		return total;
	}
	//기업 상세보기
	//<select id="comDetailData" resultType="ComVO" parameterType="int">
	public static ComVO comDetailData(int cno) {
		SqlSession session=ssf.openSession();
		ComVO vo=new ComVO();
		try {
			vo=session.selectOne("comDetailData",cno);
			session.close();
		}catch(Exception ex) {
			ex.printStackTrace();
		}	
		return vo;
	}
	//기업 검색
	//<select id="comsearch" resultType="ComVO" parameterType="hashmap">
	public static List<ComVO> comsearch(Map map){
		SqlSession session=ssf.openSession();
		List<ComVO> list=new ArrayList<ComVO>();
		try{
			list=session.selectList("comsearch",map);
			session.close();
		}catch(Exception ex) {
			System.out.println(ex.getMessage());
		}
		return list;
	}

	
	
	
	
	
	
	
	
	
	//기업 후기보기
	//<select id="workReviewListData" resultType="WorkVO" parameterType="hashmap">
	public static List<WorkVO> workReviewListData(Map map){
		SqlSession session=ssf.openSession();
		List<WorkVO> list=session.selectList("workReviewListData",map);
		session.close();
		return list;
	}
	//면접 후기보기
	//<select id="intReviewListData" resultType="IntVO" parameterType="hashmap">
	public static List<IntVO> intReviewListData(Map map){
		SqlSession session=ssf.openSession();
		List<IntVO> list=session.selectList("intReviewListData",map);
		session.close();
		return list;
	}
	
	
	
	
}
