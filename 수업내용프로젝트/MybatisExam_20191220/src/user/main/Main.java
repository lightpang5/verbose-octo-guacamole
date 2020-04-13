package user.main;

import java.util.Scanner;

import user.action.User_delete;
import user.action.User_insert;
import user.action.User_interface;
import user.action.User_search;
import user.action.User_select;
import user.action.User_update;

public class Main {
	User_interface in;
	public static void main(String[] args) {
		Main mm = new Main();	
		mm.exe();
	}
	
	  public void exe() {	
		int select;
		int fin=1;
	
		Scanner sc = new Scanner(System.in);
	
		while(fin!=0) {
			System.out.println("원하는 메뉴를 선택하세요 \n1. 입력  2. 삭제  3. 수정  4. 전체출력 5. 검색 6. 종료");
			select =sc.nextInt();
			if(select==1) {
				System.out.println("입력입니다.");
				in = new User_insert();
				in.excute();
			}
			else if(select==2) {	
				System.out.println("삭제입니다.");
				in = new User_delete();
				in.excute();
			}
			else if(select==3) {	
				System.out.println("수정입니다");
				in = new User_update();
				in.excute();
			}
			else if(select==4){
				System.out.println("전체출력입니다.");
				in = new User_select();
				in.excute();
			}
			else if(select==5){
				System.out.println("검색입니다.");
				in = new User_search();
				in.excute();
			}
			else {
				System.out.println("종료합니다.");
				fin =0;
			}
		}
	}
}
