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
			System.out.println("���ϴ� �޴��� �����ϼ��� \n1. �Է�  2. ����  3. ����  4. ��ü��� 5. �˻� 6. ����");
			select =sc.nextInt();
			if(select==1) {
				System.out.println("�Է��Դϴ�.");
				in = new User_insert();
				in.excute();
			}
			else if(select==2) {	
				System.out.println("�����Դϴ�.");
				in = new User_delete();
				in.excute();
			}
			else if(select==3) {	
				System.out.println("�����Դϴ�");
				in = new User_update();
				in.excute();
			}
			else if(select==4){
				System.out.println("��ü����Դϴ�.");
				in = new User_select();
				in.excute();
			}
			else if(select==5){
				System.out.println("�˻��Դϴ�.");
				in = new User_search();
				in.excute();
			}
			else {
				System.out.println("�����մϴ�.");
				fin =0;
			}
		}
	}
}
