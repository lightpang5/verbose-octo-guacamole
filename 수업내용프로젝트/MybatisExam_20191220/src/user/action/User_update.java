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
		System.out.println("현재 시스템은 비밀번호 변경이 가능합니다 ID 를 확인하겠습니다.");
		System.out.println("ID를 입력하세요");
		id=sc.next();
		shape.setId(id);
		User_dao dao = User_dao.getInstance();	
		User_Dto dto = dao.selectData(id);	
		
		if(dto!=null) {
			
			String data = 
					"Id : " + dto.getId();
			if(dto.getId().equals(shape.getId())) {
				System.out.println("ID가 존재합니다 ID : " +data+"입니다 ");
				System.out.println("기존의 비밀번호를 입력해주세요.");
				System.out.println("---- 수정 위해 비밀번호가 일치하는지 검사중입니다. ----");
				pwd=sc.next();
				shape.setPwd(pwd);
				if(dto.getPwd().equals(pwd)) {
					System.out.println("일치합니다 변경하실 새로운 PassWord를 입력하세요");
					pwd=sc.next();
					System.out.println("비밀번호 변경이 완료되었습니다.");
					shape.setPwd(pwd);
					User_dao.getInstance().upd(shape);			
				}
			}
		}
		else{
			System.out.println("해당하는 Id는 없습니다 메인메뉴로 돌아갑니다.");
					
		}		
	}

}
