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
		try {//�ܺ��۾����� ���� �켱 try
			Class.forName(JDBC_DRIVER); // mysql �� �����Ұ� !
		}catch(Exception e) {
		}
	}
	
	void con_db() {        //Connect DB () �۾����� ������ϴ°� �´�.
		try {
			conn = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
		} catch (Exception e) {
		
		}
	}
	void exit() {         //close �� ���Ѱ� finally �� �־ ������ ������.
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
		System.out.println("�Է��� id �� pw ���� �̸��� ���ʴ�� �Է����ּ���");

		String s = "insert into sign (id,pw,gender,name) values ('"+a+"','"+b+"','"+c+"','"+d+"');";
		int y=state.executeUpdate(s);//���� insert�� success�ϸ� int�� 1�� ��ȯ.
		//insert �� delete�� update �� ��Ȳ�� ���� �� esecuteUpdate ���.
		if(y>0)
			System.out.println("insert�� ���������� ����Ǿ����ϴ�.");
		else
			System.out.println("�Է¿� ������ �ֽ��ϴ�.");
		}
		catch (Exception e) {
		}
		finally{
			exit();
		}
	}
	 ArrayList<Dao_Sql_Modeling> select() {  //select �ϴ� �޼ҵ�
		ArrayList<Dao_Sql_Modeling> m = new ArrayList<Dao_Sql_Modeling>();
		try { 
			con_db();
			state = conn.createStatement();
			String s = "select * from customer;";  //"" �ȿ� �ִ� ������ ��Ȯ�� mysql �� �Է��ϴ� �����̴�. ; ������
			ResultSet aa = state.executeQuery(s);
	
			while(aa.next())  // �߿� !! aa.next()>> SET Ÿ���� ��� ������ ���⶧���� �ִ��� Ȯ���ϴ� ���� ! (�� �ִ�?)�ϰ� �׳� �����ƴٴϴ� �ڷḦ ã�°��̴�.
			{
				Dao_Sql_Modeling mod = new Dao_Sql_Modeling();
				mod.setA(aa.getString("id"));
				mod.setB(aa.getString("pw"));
				mod.setC(aa.getString("gender"));
				mod.setD(aa.getString("name"));
				m.add(mod);
			}
			aa.close();        //�׻� �� �ݾƾ��Ѵ� �ݾƾ� �� ����..		
		} catch (Exception e) {
		}
		finally {
		exit();
		}
		return m;
	}

}
