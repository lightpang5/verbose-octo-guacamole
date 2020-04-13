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
		System.out.println("ID를 입력하세요");
		id=sc.next();
		shape.setId(id);
		
		//전체 목록 출력을 통해 중복검사
			System.out.println("----- 삭제를 위해 ID가 있는지 검사중입니다. -----");
			//데이터 1개 출력
			User_dao dao = User_dao.getInstance();	
			User_Dto dto = dao.selectData(id);		
			if(dto!=null) {
			
				String data = 
						"Id : " + dto.getId();
				System.out.println("ID가 존재합니다 ID : " +data+"입니다 ");
				System.out.println(" ID를 찾았습니다. 삭제를 위해  PassWord를 입력하세요");
				pwd=sc.next();
								
				if(dto.getPwd().equals(pwd)) {
					System.out.println("삭제가 완료되었습닌다.");
					User_dao.getInstance().del(shape);					
				}
			}
			
			else {
				System.out.println("존재하지 않는 ID 입니다 삭제가 불가능하므로 메인메뉴로 돌아갑니다.");
						
			}	
			
			
			
		
	}
}
