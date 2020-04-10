import java.util.ArrayList;
import java.util.*;
import java.util.Scanner;

public class Mlv {//MemberListView 뷰클래스 전체적인 기능.
	int i;
	void input() {//입력메소드
		System.out.println("뷰클래스의 입력메소드로 이동하였습니다.");
		String []sm = new String[5];
		Scanner sc = new Scanner(System.in);
		for(i = 0; i<5; i++) {
		sm[i]=sc.nextLine();
		}
		remove(sm);
	}
	void output(ArrayList rm) {//출력메소드
		System.out.println("뷰클래스의 출력메소드로 이동하였습니다.");
		System.out.println(rm);
		System.out.println("출력을 완료했습니다.");
	}
	void remove(String [] aa) {//중복제거메소드
		System.out.println("뷰클래스의 중복제거메소드로 이동하였습니다.");
		ArrayList<String>rm = new ArrayList<String>();
		for(i=0;i<5;i++)
		rm.add(aa[i]);            //정렬작업 전 Array List 에 추가
		for(int i =0 ; i<5;i++) {
			for(int j =i; j<4;j++) {
				if(aa[i].equals(aa[j+1])) {
					rm.remove(i); // Array List 에서 중복제거
					break;
				}
			}
		}
		System.out.println("중복을 제거했습니다.");
		sort(rm);
	}
	void sort(ArrayList rm) {//정렬메소드
		System.out.println("뷰클래스의 정렬메소드로 이동하였습니다.");
		Collections.sort(rm);
		System.out.println("정렬을 완료했습니다.");
		output(rm);
	}
}