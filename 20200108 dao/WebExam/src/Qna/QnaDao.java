package Qna;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Scanner;
public class QnaDao {
	
	private final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	private final String DB_URL = "jdbc:mysql://localhost/footsal";
	private final String USER_NAME = "root";
	private final String PASSWORD = "0000";
	Connection conn = null;
	Statement state = null;
	QnaDao(){
		try {//외부작업으로 들어가니 우선 try
			Class.forName(JDBC_DRIVER); // mysql 에 연결할게 !
		}catch(Exception e) {
		}
	}
	
	void con_db() {        //Connect DB () 작업마다 열어야하는게 맞다.
		try {
			conn = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
		} catch (Exception e) {
		
		}
	}
	void exit() {         //close 에 관한건 finally 에 넣어서 무조건 끝낸다.
		if(state!=null) {
			try {
				state.close();
			}catch (Exception e) {
			}
		if(conn!=null) {
			try {
				conn.close();
			}catch(Exception e) {	
			}
		}	
		}	
	}
	void insert(String a,String b,String c,String d) {
		try {
		con_db();
		state = conn.createStatement();
		Scanner sc = new Scanner(System.in);
		System.out.println("입력할 id 와 pw 성별 이름을 차례대로 입력해주세요");

		String s = "insert into sign (id,pw,gender,name) values ('"+a+"','"+b+"','"+c+"','"+d+"');";
		int y=state.executeUpdate(s);//만약 insert가 success하면 int값 1을 반환.
		//insert 나 delete나 update 등 상황이 변할 때 esecuteUpdate 사용.
		if(y>0)
			System.out.println("insert가 성공적으로 실행되었습니다.");
		else
			System.out.println("입력에 오류가 있습니다.");
		}
		catch (Exception e) {
		}
		finally{
			exit();
		}
	}
	 ArrayList<Dao_Sql_Modeling> select() {  //select 하는 메소드
		ArrayList<Dao_Sql_Modeling> m = new ArrayList<Dao_Sql_Modeling>();
		try { 
			con_db();
			state = conn.createStatement();
			String s = "select * from customer;";  //"" 안에 있는 문장이 정확히 mysql 에 입력하는 문자이다. ; 까지도
			ResultSet aa = state.executeQuery(s);
	
			while(aa.next())  // 중요 !! aa.next()>> SET 타입의 경우 순서가 없기때문에 있는지 확인하는 과정 ! (너 있니?)하고 그냥 떠돌아다니는 자료를 찾는것이다.
			{
				Dao_Sql_Modeling mod = new Dao_Sql_Modeling();
				mod.setA(aa.getString("id"));
				mod.setB(aa.getString("pw"));
				mod.setC(aa.getString("gender"));
				mod.setD(aa.getString("name"));
				m.add(mod);
			}
			aa.close();        //항상 잘 닫아야한다 닫아야 잘 실행..		
		} catch (Exception e) {
		}
		finally {
		exit();
		}
		return m;
	}

}
