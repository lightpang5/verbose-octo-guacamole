import java.util.ArrayList;
import java.util.*;
import java.util.Scanner;

public class Mlv {//MemberListView ��Ŭ���� ��ü���� ���.
	int i;
	void input() {//�Է¸޼ҵ�
		System.out.println("��Ŭ������ �Է¸޼ҵ�� �̵��Ͽ����ϴ�.");
		String []sm = new String[5];
		Scanner sc = new Scanner(System.in);
		for(i = 0; i<5; i++) {
		sm[i]=sc.nextLine();
		}
		remove(sm);
	}
	void output(ArrayList rm) {//��¸޼ҵ�
		System.out.println("��Ŭ������ ��¸޼ҵ�� �̵��Ͽ����ϴ�.");
		System.out.println(rm);
		System.out.println("����� �Ϸ��߽��ϴ�.");
	}
	void remove(String [] aa) {//�ߺ����Ÿ޼ҵ�
		System.out.println("��Ŭ������ �ߺ����Ÿ޼ҵ�� �̵��Ͽ����ϴ�.");
		ArrayList<String>rm = new ArrayList<String>();
		for(i=0;i<5;i++)
		rm.add(aa[i]);            //�����۾� �� Array List �� �߰�
		for(int i =0 ; i<5;i++) {
			for(int j =i; j<4;j++) {
				if(aa[i].equals(aa[j+1])) {
					rm.remove(i); // Array List ���� �ߺ�����
					break;
				}
			}
		}
		System.out.println("�ߺ��� �����߽��ϴ�.");
		sort(rm);
	}
	void sort(ArrayList rm) {//���ĸ޼ҵ�
		System.out.println("��Ŭ������ ���ĸ޼ҵ�� �̵��Ͽ����ϴ�.");
		Collections.sort(rm);
		System.out.println("������ �Ϸ��߽��ϴ�.");
		output(rm);
	}
}