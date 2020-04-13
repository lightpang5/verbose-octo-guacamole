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
		System.out.println("ID를 입력하세요");
		id=sc.next();
		shape.setId(id);
		List<User_Dto> list;		
		
	//	User_dao.getInstance().sel(shape);		
		//전체 목록 출력을 통해 중복검사
		System.out.println("------- 중복 검사중입니다. -------");
		
		
		
		//데이터 1개 출력
				User_dao dao = User_dao.getInstance();	
				User_Dto dto = dao.selectData(id);
				
				if(dto!=null) {
				
				String data = 
						"Id : " + dto.getId();
				System.out.println("중복되는 ID가 존재합니다 ID : " +data+"입니다 \n메인메뉴로 돌아갑니다.");
				}
				
				else {		
					System.out.println("사용 가능한 ID 입니다 PassWord를 입력하세요");
					pwd=sc.next();
					shape.setPwd(pwd); 
					System.out.println("이름을 입력하세요");
					name=sc.next();
					shape.setName(name);
					System.out.println("회원가입이 성공적으로 되었습니다.");
					User_dao.getInstance().in(shape);			
				}	
	}
}
