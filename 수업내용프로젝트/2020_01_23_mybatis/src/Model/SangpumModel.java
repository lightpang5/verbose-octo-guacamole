package Model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import Mybatis.SqlMapConfig;

public class SangpumModel {
	static SangpumModel model = new SangpumModel();
	public static SangpumModel instance(){ //instance 메소드가 늘 객체를 리턴하는 것 이것이 싱글톤 패턴 !
		return model;
	}


	private SqlSessionFactory factory = SqlMapConfig.getSqlSession();           // Map 에 있는 sqlSession factory 쓰겠다 아까 Map.java(SqlMapConfig 를 찾아가서 쓴다.)

	public List<SangpumDto> selectSangpum(){
		List<SangpumDto> list = null;
		SqlSession sqlSession = factory.openSession();
		list = sqlSession.selectList("selectSangpum");       // sqlSession 을 불러온 DB를 쓸건데 거기서 selectList 쓴다. mapper 파일에서 태그 이름 ! 
		System.out.println("aa"+list.size());
		sqlSession.close();
		return list;
	}
}
