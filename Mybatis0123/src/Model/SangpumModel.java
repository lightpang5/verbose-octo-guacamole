package Model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import Mybatis.SqlMapConfig;

public class SangpumModel {
	static SangpumModel model = new SangpumModel();
	public static SangpumModel instance(){ //instance �޼ҵ尡 �� ��ü�� �����ϴ� �� �̰��� �̱��� ���� !
		return model;
	}


	private SqlSessionFactory factory = SqlMapConfig.getSqlSession();           // Map �� �ִ� sqlSession factory ���ڴ� �Ʊ� Map.java(SqlMapConfig �� ã�ư��� ����.)

	public List<SangpumDto> selectSangpum(){
		List<SangpumDto> list = null;
		SqlSession sqlSession = factory.openSession();
		list = sqlSession.selectList("selectSangpum");       // sqlSession �� �ҷ��� DB�� ���ǵ� �ű⼭ selectList ����. mapper ���Ͽ��� �±� �̸� ! 
		System.out.println("aa"+list.size());
		sqlSession.close();
		return list;
	}
	
	public SangpumDto insertSangpum(SangpumDto sangpum){
	
		SangpumDto obb =   sangpum;
		SqlSession sqlSession = factory.openSession();
		int result = sqlSession.insert("insertSangpum",obb);       // sqlSession �� �ҷ��� DB�� ���ǵ� �ű⼭ selectList ����. mapper ���Ͽ��� �±� �̸� ! 
		sqlSession.commit();
		System.out.println("���� result : "+result+"�Է� �����"+obb.getGB_CONTENTS()+" "+obb.getGB_SUBJECT()+" "+obb.getGB_ID()+" "+obb.getGB_FILE());
		sqlSession.close();
		return obb;
	}
	public SangpumDto modifySangpum(SangpumDto sangpum){
		System.out.println("����");
		SangpumDto obb =   sangpum;
		SqlSession sqlSession = factory.openSession();
		int result = sqlSession.update("modifySangpum",obb);       // sqlSession �� �ҷ��� DB�� ���ǵ� �ű⼭ selectList ����. mapper ���Ͽ��� �±� �̸� ! 
		sqlSession.commit();
		System.out.println("���� result : "+result+"�Է� �����"+obb.getGB_CONTENTS()+" "+obb.getGB_SUBJECT()+" "+obb.getGB_ID()+" "+obb.getGB_FILE());
		sqlSession.close();
		return obb;
	}
	public SangpumDto deleteSangpum(SangpumDto sangpum){
		System.out.println("����");
		SangpumDto obb =   sangpum;
		SqlSession sqlSession = factory.openSession();
		int result = sqlSession.delete("deleteSangpum",obb);       // sqlSession �� �ҷ��� DB�� ���ǵ� �ű⼭ selectList ����. mapper ���Ͽ��� �±� �̸� ! 
		sqlSession.commit();
		
		sqlSession.close();
		return obb;
	}
	
}
