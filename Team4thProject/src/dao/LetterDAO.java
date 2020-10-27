package dao;
import java.io.Reader;
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
	
	
	
	
}
