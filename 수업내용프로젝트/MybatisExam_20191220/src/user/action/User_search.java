package user.action;

import java.util.List;
import java.util.Scanner;

import user.bean.User_Dto;
import user.dao.User_dao;

public class User_search implements User_interface{

	@Override
	public void excute() {	
		User_Dto shape = new User_Dto();
		String id,pwd,name;
		List<User_Dto> list;
		Scanner sc = new Scanner(System.in);
		System.out.println("ID를 입력하세요");
		id=sc.next();
		shape.setId(id);
//		
//		System.out.println("이름을 입력하세요");
//		name=sc.next();
//		shape.setName(name);
		
		
	
			
		//데이터 1개 출력
		User_dao dao = User_dao.getInstance();	
		System.out.println("---- 검색데이터 출력 ----");
		User_Dto dto = dao.selectData(id);
		
		if(dto!=null) {
		
		String data = 
				"Id : " + dto.getId() + ", " +
				"Password : " + dto.getPwd() + ", " +
				"Name : " + dto.getName() + "" ;
		System.out.println(data);
		}
		else
			System.out.println("해당하는 ID 는 없습니다.");
		System.out.println();
	}
}