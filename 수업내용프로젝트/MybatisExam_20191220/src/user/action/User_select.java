package user.action;

import java.util.List;
import java.util.Scanner;

import user.bean.User_Dto;
import user.dao.User_dao;

public class User_select implements User_interface{

	@Override
	public void excute() {	
		User_Dto shape = new User_Dto();
		String id,pwd,name;
		List<User_Dto> list;
		Scanner sc = new Scanner(System.in);
		System.out.println("전체 회원의 정보를 출력합니다.");
		
		 User_dao.getInstance().sel(shape);
		
		//전체 목록 출력
		System.out.println("----전체 데이터 출력----");
		list = User_dao.getInstance().sel(shape);

		for(User_Dto dto : list){
			String data = 
					"ID : " + dto.getId() + ", " +
					"Password : ****, " +
					"Name : " + dto.getName() + " " ;
			System.out.println(data);
		}
		System.out.println();		
	}
}