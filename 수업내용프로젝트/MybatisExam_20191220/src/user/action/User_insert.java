package user.action;

import java.util.List;
import java.util.Scanner;

import user.bean.User_Dto;
import user.dao.User_dao;
import user.main.Main;

public class User_insert implements User_interface{
	
	@Override
	public void excute() {	
		User_Dto shape = new User_Dto();
		
		String id,pwd,name;
		int jungbok=0;
		Scanner sc = new Scanner(System.in);
		System.out.println("ID�� �Է��ϼ���");
		id=sc.next();
		shape.setId(id);
		List<User_Dto> list;		
		
	//	User_dao.getInstance().sel(shape);		
		//��ü ��� ����� ���� �ߺ��˻�
		System.out.println("------- �ߺ� �˻����Դϴ�. -------");
		
		
		
		//������ 1�� ���
				User_dao dao = User_dao.getInstance();	
				User_Dto dto = dao.selectData(id);
				
				if(dto!=null) {
				
				String data = 
						"Id : " + dto.getId();
				System.out.println("�ߺ��Ǵ� ID�� �����մϴ� ID : " +data+"�Դϴ� \n���θ޴��� ���ư��ϴ�.");
				}
				
				else {		
					System.out.println("��� ������ ID �Դϴ� PassWord�� �Է��ϼ���");
					pwd=sc.next();
					shape.setPwd(pwd); 
					System.out.println("�̸��� �Է��ϼ���");
					name=sc.next();
					shape.setName(name);
					System.out.println("ȸ�������� ���������� �Ǿ����ϴ�.");
					User_dao.getInstance().in(shape);			
				}	
	}
}
