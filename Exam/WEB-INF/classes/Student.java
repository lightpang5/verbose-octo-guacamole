package javabean;
import java.util.ArrayList;
import java.util.Date;
public class Student 
	{
	 ArrayList<StudentBean> std = new ArrayList<StudentBean>();

	
	public ArrayList<StudentBean> stu() {
		
	StudentBean kim = new StudentBean();
	 StudentBean lee = new StudentBean();
	 StudentBean park = new StudentBean();
	 StudentBean jung = new StudentBean();
	 StudentBean choi = new StudentBean();
			
		 std.add(0, kim);
		 std.add(1, lee);
		 std.add(2, park);
		 std.add(3, jung);
		 std.add(4, choi);
		 
		 std.get(0).setId("kkk5959");
		 std.get(0).setName("kim");
		 std.get(0).setSnum("1111");
		 std.get(0).setYear(1995);
		 std.get(0).setPass("1");
		 std.get(0).setEmail("kim@naver.com");
		 
		 std.get(1).setId("lee0101");
		 std.get(1).setName("lee");
		 std.get(1).setSnum("2222");
		 std.get(1).setYear(1991);
		 std.get(1).setPass("2");
		 std.get(1).setEmail("lee@naver.com");
		 
		 std.get(2).setId("park5652");
		 std.get(2).setName("park");
		 std.get(2).setSnum("3333");
		 std.get(2).setYear(1995);
		 std.get(2).setPass("3");
		 std.get(2).setEmail("park@google.com");
		 
		 std.get(3).setId("jaypark56");
		 std.get(3).setName("jung");
		 std.get(3).setSnum("4444");
		 std.get(3).setYear(1994);
		 std.get(3).setPass("4");
		 std.get(3).setEmail("jung@naver.com");
		 
		 std.get(4).setId("letgochoi");
		 std.get(4).setName("choi");
		 std.get(4).setSnum("5555");
		 std.get(4).setYear(1991);
		 std.get(4).setPass("5");
		 std.get(4).setEmail("choi@daum.net");
		 
		
		return std;
	}
	public Integer age(int yy){
		int age = -(yy-1901-(new Date().getYear()));
		return age;
	}
	
}