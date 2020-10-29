package dao;

import java.util.*;



import java.io.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dao.CreateSqlSessionFactory;
import vo.*;

public class GongmoDAO {
	
	  private static SqlSessionFactory ssf;
	   static
	   {
		   ssf=CreateSqlSessionFactory.getSsf();
	   }
	   
	   // 공모전 리스트 데이터 출력하는 메소드 ==============================================================================================
	   public static List<GongmoVO> gongmoListData(Map map)
	   {
		   SqlSession session=ssf.openSession();
		   List<GongmoVO> list=session.selectList("gongmoListData",map);
		   session.close();// 반환
		   return list;
	   }
	   
	   // 공모전 카테고리별(gm_cate) 데이터 출력 메소드 ==============================================================================================
	   public static int gongmoTotalPage(int gm_cate)
	   {
		   SqlSession session=ssf.openSession();
		   int total=session.selectOne("gongmoTotalPage", gm_cate);
		   session.close();
		   return total;
	   }

	   // 카테고리넘버별(gm_cate)총 페이지 나누기 메소드 ==============================================================================================
	   public static List<GongmoVO> gongmoTotalData(Map map)
	   {
		   SqlSession session=ssf.openSession();
		   List<GongmoVO> list=session.selectList("gongmoTotalData",map);
		   session.close();
		   return list;
	   }
	   
	   // 전체 보기 페이지 메소드 =================================================================================================================
	   public static int gongmoTotalPage2()
	   {
		   SqlSession session=ssf.openSession();
		   int total=session.selectOne("gongmoTotalPage2");
		   session.close();
		   return total;
	   }
	   
	   // 공모전 게시글 상세보기 메소드 =============================================================================================================
	   public static GongmoVO gongmoDetailData(int gm_no) 
	   {
		   SqlSession session=ssf.openSession();
		   GongmoVO vo = new GongmoVO();
		   try {
			   session.update("gongmoHitIncrement", gm_no);
			   session.commit();
			   vo=session.selectOne("gongmoDetailData", gm_no);
			   session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		   
		   return vo;
		} 
	}