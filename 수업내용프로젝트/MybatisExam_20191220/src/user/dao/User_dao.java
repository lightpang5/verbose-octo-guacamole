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
	public static User_dao ob;	//�̱��� ��ü (�ȱñ������� �� �˾ƾ��Ѵ�.) >> 100�����̸� ��ü 100������ ����ϴ� ���� �Ҵ� 100������ �ʿ���.. �׷��� �ϳ��� ����� �ϳ��� �ʿ��Ѱ� �ٲ㼭�� ����
	private SqlSessionFactory factory;
	
	public static User_dao getInstance() {       // �ǹ̴� �׳� �ȿ� ������ �ִ��� ... ������ ���θ���� ������ ��� �װ��� ���� ����.
		if (ob == null) {
			synchronized (User_dao.class) {
				ob = new User_dao();
			}
		}
		return ob;
	}
	public User_dao() {        //������ ... �����ϴ� ��.
		try {
			Reader reader = Resources.getResourceAsReader("mybatis_config.xml");        
			factory = new SqlSessionFactoryBuilder().build(reader);
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	public void in(User_Dto obb) {//����ϴ� ���=insert
		SqlSession sqlsession = factory.openSession(); //���� �� �����ϰ� �����ϴ� ����?
		sqlsession.insert("userSQL.myin",obb);            // insert ��� �޼ҵ带 �����̴� �޼ҵ�� ��������.
		sqlsession.commit();							// commit �̶�� ���̴� �޼ҵ� insert , delete , update �� ��Ȳ������ ! 
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
		System.out.println("��ü ȸ���� �� : "+ list.size());
		
		sqlsession.close();
		return list;
		
	}
	public User_Dto selectData(String arg) {
		SqlSession sqlsession = factory.openSession();
		User_Dto dto = sqlsession.selectOne("userSQL.selectDataPart", arg);
		
		return dto;
	}
	
	
	
}