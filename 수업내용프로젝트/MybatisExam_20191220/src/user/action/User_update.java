package user.action;

import java.util.List;
import java.util.Scanner;

import user.bean.User_Dto;
import user.dao.User_dao;

public class User_update implements User_interface{

	@Override
	public void excute() {	
		User_Dto shape = new User_Dto();
		String id,pwd;
		List<User_Dto> list;	
		
		int jungbok=0;
		Scanner sc = new Scanner(System.in);
		System.out.println("���� �ý����� ��й�ȣ ������ �����մϴ� ID �� Ȯ���ϰڽ��ϴ�.");
		System.out.println("ID�� �Է��ϼ���");
		id=sc.next();
		shape.setId(id);
		User_dao dao = User_dao.getInstance();	
		User_Dto dto = dao.selectData(id);	
		
		if(dto!=null) {
			
			String data = 
					"Id : " + dto.getId();
			if(dto.getId().equals(shape.getId())) {
				System.out.println("ID�� �����մϴ� ID : " +data+"�Դϴ� ");
				System.out.println("������ ��й�ȣ�� �Է����ּ���.");
				System.out.println("---- ���� ���� ��й�ȣ�� ��ġ�ϴ��� �˻����Դϴ�. ----");
				pwd=sc.next();
				shape.setPwd(pwd);
				if(dto.getPwd().equals(pwd)) {
					System.out.println("��ġ�մϴ� �����Ͻ� ���ο� PassWord�� �Է��ϼ���");
					pwd=sc.next();
					System.out.println("��й�ȣ ������ �Ϸ�Ǿ����ϴ�.");
					shape.setPwd(pwd);
					User_dao.getInstance().upd(shape);			
				}
			}
		}
		else{
			System.out.println("�ش��ϴ� Id�� �����ϴ� ���θ޴��� ���ư��ϴ�.");
					
		}		
	}

}
