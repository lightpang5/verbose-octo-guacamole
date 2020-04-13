package javabean;


import java.util.ArrayList;
import java.util.Date;
public class Student {
	 ArrayList<StudentBean> std = new ArrayList<StudentBean>();
	 StudentBean kim = new StudentBean();
	 StudentBean lee = new StudentBean();
	 StudentBean park = new StudentBean();
	 StudentBean jung = new StudentBean();
	 StudentBean choi = new StudentBean();
	 
	
	public ArrayList<StudentBean> stu() {
		 std.add(kim);
		 std.add(lee);
		 std.add(park);
		 std.add(jung);
		 std.add(choi);
		
		 std.get(0).setId("k");
		 std.get(0).setName("kim");
		 std.get(0).setSnum("1111");
		 std.get(0).setYear(25);
		 std.get(0).setPass("1");
		 std.get(0).setEmail("kim@naver.com");
		 
		 std.get(1).setId("l");
		 std.get(1).setName("lee");
		 std.get(1).setSnum("2222");
		 std.get(1).setYear(29);
		 std.get(1).setPass("2");
		 std.get(1).setEmail("lee@naver.com");
		 
		 std.get(2).setId("p");
		 std.get(2).setName("park");
		 std.get(2).setSnum("3333");
		 std.get(2).setYear(25);
		 std.get(2).setPass("3");
		 std.get(2).setEmail("park@google.com");
		 
		 std.get(3).setId("j");
		 std.get(3).setName("jung");
		 std.get(3).setSnum("4444");
		 std.get(3).setYear(26);
		 std.get(3).setPass("4");
		 std.get(3).setEmail("jung@naver.com");
		 
		 std.get(4).setId("c");
		 std.get(4).setName("choi");
		 std.get(4).setSnum("5555");
		 std.get(4).setYear(29);
		 std.get(4).setPass("5");
		 std.get(4).setEmail("choi@daum.net");
		 
		 System.out.println(std.get(0).getId());
		 System.out.println(std.get(0).getName());
		return std;
	}

	public Integer age(int yy){
		int age = -(yy-1901-(new Date().getYear()));
		return age;}

}
