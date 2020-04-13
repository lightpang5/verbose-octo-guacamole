package user.dao;

import java.io.IOException;
import java.io.Reader;
import java.sql.ResultSet;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import user.bean.User_Dto;

public class User_dao {
	public static User_dao ob;	//싱글톤 객체 (안궁금하지만 꼭 알아야한다.) >> 100만명이면 객체 100만개를 써야하니 공간 할당 100만개가 필요함.. 그러니 하나만 만들어 하나에 필요한걸 바꿔서만 쓰자
	private SqlSessionFactory factory;
	
	public static User_dao getInstance() {       // 의미는 그냥 안에 내용이 있는지 ... 없으면 새로만들고 있으면 계속 그것을 통해 쓴다.
		if (ob == null) {
			synchronized (User_dao.class) {
				ob = new User_dao();
			}
		}
		return ob;
	}
	public User_dao() {        //생성자 ... 빌더하는 놈.
		try {
			Reader reader = Resources.getResourceAsReader("mybatis_config.xml");        
			factory = new SqlSessionFactoryBuilder().build(reader);
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	public void in(User_Dto obb) {//담당하는 기능=insert
		SqlSession sqlsession = factory.openSession(); //대충 뭐 연결하고 오픈하는 아이?
		sqlsession.insert("userSQL.myin",obb);            // insert 라는 메소드를 실행이다 메소드다 잊지말자.
		sqlsession.commit();							// commit 이라는 아이는 메소드 insert , delete , update 인 상황에서만 ! 
		sqlsession.close();
		
	}
	public void del(User_Dto obb) {
		SqlSession sqlsession = factory.openSession();
		sqlsession.delete("userSQL.mydel",obb);
		sqlsession.commit();
		sqlsession.close();
		
	}
	public void upd(User_Dto obb) {
		SqlSession sqlsession = factory.openSession();
		sqlsession.update("userSQL.myupd",obb);
		sqlsession.commit();
		sqlsession.close();
		
	}
	public List<User_Dto> sel(User_Dto obb)  {
		SqlSession sqlsession = factory.openSession();
		List<User_Dto> list=sqlsession.selectList("userSQL.mysel",obb);
		System.out.println("전체 회원의 수 : "+ list.size());
		
		sqlsession.close();
		return list;
		
	}
	public User_Dto selectData(String arg) {
		SqlSession sqlsession = factory.openSession();
		User_Dto dto = sqlsession.selectOne("userSQL.selectDataPart", arg);
		
		return dto;
	}
	
	
	
}