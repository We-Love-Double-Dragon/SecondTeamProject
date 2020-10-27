package dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import java.util.*;
import vo.*;
public class NewsDAO {
   private static SqlSessionFactory ssf;
   static {
	   ssf=CreateSqlSessionFactory.getSsf();
   }
  
   /*
    * <!-- 뉴스 리스트 -->
	<select id="newsListData" resultType="vo.NewsVO" parameterType="hashmap">
	
	<!-- 뉴스 페이지 수 -->
	<select id="newsTotalPage" resultType="int" parameterType="int">
	
	<!-- 뉴스 상세페이지 -->
	<select id="newsDetailData" resultType="vo.NewsVO" parameterType="int">
	
	<!-- 뉴스 조회수 -->
	<update id="newsHitIncrement" parameterType="int">
    * 
    */
   public static List<NewsVO> newsListData(Map map)
   {
	   SqlSession session=ssf.openSession();
	   List<NewsVO> list=session.selectList("newsListData",map);
	   session.close();
	   return list;
   }
   public static int newsTotalPage()
   {
	   SqlSession session=ssf.openSession();
	   int total=session.selectOne("newsTotalPage");
	   session.close();
	   return total;
   }
   
   public static NewsVO newsDetailData(int no) {
 		SqlSession session=ssf.openSession();
 		session.update("newsHitIncrement", no);
 		session.commit();
 		NewsVO vo=session.selectOne("newsDetailData", no);
 		session.close();
 		return vo;
 	}
   
   /*
   <!-- 팁 리스트 -->
	<select id="tipListData" resultType="vo.TipVO" parameterType="hashmap">
	
	<!-- 팁 페이지 수 -->
	<select id="tipTotalPage" resultType="int" parameterType="int">
	
	<!-- 팁 상세페이지 -->
	<select id="tipDetailData" resultType="vo.TipVO" parameterType="int">
	
	<!-- 팁 조회수 -->
	<update id="tipHitIncrement" parameterType="int">
	*/
   
   public static List<TipVO> tipListData(Map map){
	   SqlSession session=ssf.openSession();
	   List<TipVO> list=session.selectList("tipListData",map);
	   session.close();
	   return list;
   }
   public static int tipTotalPage() {
	   SqlSession session=ssf.openSession();
	   int total=session.selectOne("tipTotalPage");
	   session.close();
	   return total;
   }
   public static TipVO tipDetailData(int no) {
		SqlSession session=ssf.openSession();
		session.update("tipHitIncrement", no);
		session.commit();
		TipVO vo=session.selectOne("tipDetailData", no);
		session.close();
		return vo;
	}
   
   /*
	<!-- 비디오 리스트 -->
	<select id="videoListData" resultType="vo.VideoVO" parameterType="hashmap">
	
	<!-- 비디오 페이지 수 -->
	<select id="videoTotalPage" resultType="int" parameterType="int">
	
	<!-- 비디오 상세페이지 -->
	<select id="videoDetailData" resultType="vo.VideoVO" parameterType="int">
	
	<!-- 비디오 조회수 -->
	<update id="videoHitIncrement" parameterType="int">
   */
   public static List<VideoVO> videoListData(Map map){
	   SqlSession session=ssf.openSession();
	   List<VideoVO> list=session.selectList("videoListData",map);
	   session.close();
	   return list;
   }
   public static int videoTotalPage() {
	   SqlSession session=ssf.openSession();
	   int total=session.selectOne("videoTotalPage");
	   session.close();
	   return total;
   }
   
   public static VideoVO videoDetailData(int no) {
		SqlSession session=ssf.openSession();
		session.update("videoHitIncrement", no);
		session.commit();
		VideoVO vo=session.selectOne("videoDetailData", no);
		session.close();
		return vo;
	}
   
}