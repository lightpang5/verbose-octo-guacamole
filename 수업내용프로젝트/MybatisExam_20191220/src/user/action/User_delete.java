package user.action;

import java.util.List;
import java.util.Scanner;

import user.bean.User_Dto;
import user.dao.User_dao;
import user.main.Main;

public class User_delete implements User_interface{
	
	@Override
	public void excute() {	
		User_Dto shape = new User_Dto();

		String id,pwd,name;

		List<User_Dto> list;		
		User_dao.getInstance().sel(shape);	
		Scanner sc = new Scanner(System.in);
		System.out.println("ID�� �Է��ϼ���");
		id=sc.next();
		shape.setId(id);
		
		//��ü ��� ����� ���� �ߺ��˻�
			System.out.println("----- ������ ���� ID�� �ִ��� �˻����Դϴ�. -----");
			//������ 1�� ���
			User_dao dao = User_dao.getInstance();	
			User_Dto dto = dao.selectData(id);		
			if(dto!=null) {
			
				String data = 
						"Id : " + dto.getId();
				System.out.println("ID�� �����մϴ� ID : " +data+"�Դϴ� ");
				System.out.println(" ID�� ã�ҽ��ϴ�. ������ ����  PassWord�� �Է��ϼ���");
				pwd=sc.next();
								
				if(dto.getPwd().equals(pwd)) {
					System.out.println("������ �Ϸ�Ǿ����Ѵ�.");
					User_dao.getInstance().del(shape);					
				}
			}
			
			else {
				System.out.println("�������� �ʴ� ID �Դϴ� ������ �Ұ����ϹǷ� ���θ޴��� ���ư��ϴ�.");
						
			}	
			
			
			
		
	}
}
