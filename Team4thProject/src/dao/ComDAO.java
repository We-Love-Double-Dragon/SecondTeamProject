package dao;

import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

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
		ComVO vo=session.selectOne("comDetailData",cno);
		session.close();
		return vo;
	}
	
	
	
	
	
	
}
