package dao;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import vo.WorkBVO;

public class WorkbDAO {
	private static SqlSessionFactory ssf;
	static {
			ssf=CreateSqlSessionFactory.getSsf();
	}
	//채용공고 리스트
	//<select id="workbListData" resultType="WorkBVO" parameterType="hashmap">
	public static List<WorkBVO> workbListData(Map map){
		SqlSession session=ssf.openSession();
		List<WorkBVO> list=session.selectList("workbListData",map);
		session.close();
		return list;
	}
	//채용공고 총페이지
	//<select id="workbTotalPage" resultType="int">
	public static int workbTotalPage() {
		SqlSession session=ssf.openSession();
		int total=session.selectOne("workbTotalPage");
		session.close();
		return total;
	}
	//채용공고 상세보기
	//<select id="workbDetailData" resultType="WorkBVO" parameterType="int">
	public static WorkBVO workbDetailData(int l_no) {
		SqlSession session=ssf.openSession();
		WorkBVO vo= new WorkBVO();
			try {vo=session.selectOne("workbDetailData",l_no);
				session.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return vo;
		}
}