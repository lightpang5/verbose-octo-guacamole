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

	QnaDao() {
		try {// �ܺ��۾����� ���� �켱 try
			Class.forName(JDBC_DRIVER); // mysql �� �����Ұ� !
		} catch (Exception e) {
		}
	}

	void con_db() { // Connect DB () �۾����� ������ϴ°� �´�.
		try {
			conn = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
		} catch (Exception e) {

		}
	}

	void exit() { // close �� ���Ѱ� finally �� �־ ������ ������.
		if (state != null) {
			try {
				state.close();
			} catch (Exception e) {
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (Exception e) {
				}
			}
		}
	}

	void insert(String id, String mem,String date,String branch,String ground, String t1, String t2, String t3, String mdate, String time, String apply, String team, String contents) {
		try {
		con_db();
		state = conn.createStatement();
		Scanner sc = new Scanner(System.in);
		System.out.println("�Է��� id �� pw ���� �̸��� ���ʴ�� �Է����ּ���");

		String s = "insert into applyyong (yId,yMember,yDate,yBranch,yGround,yTel1,yTel2,yTel3,yMatchdate,yTime,yApply,yTeam,yContents) values ('"+id+"','"+mem+"','"+date+"','"+branch+"','"+ground+"','"+t1+"','"+t2+"','"+t3+"','"+mdate+"','"+time+"','"+apply+"','"+team+"','"+contents+"');";
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
	
	
	ArrayList<QnaDto> select() {  //select �ϴ� �޼ҵ� kim �̶�� �⺻Ű (ID) �� �־���.
		ArrayList<QnaDto> yl = new ArrayList<QnaDto>();
		try { 
			con_db();
			state = conn.createStatement();
			String s = "select * from applyyong;";  //"" �ȿ� �ִ� ������ ��Ȯ�� mysql �� �Է��ϴ� �����̴�. ; ������
			ResultSet aa = state.executeQuery(s);
	
			while(aa.next())  // �߿� !! aa.next()>> SET Ÿ���� ��� ������ ���⶧���� �ִ��� Ȯ���ϴ� ���� ! (�� �ִ�?)�ϰ� �׳� �����ƴٴϴ� �ڷḦ ã�°��̴�.
			{
				QnaDto mod = new QnaDto();
//				mod.setyMember(aa.getString("yMember"));
//				mod.setyDate(aa.getTimestamp("yDate"));
//				mod.setyBranch(aa.getString("yBranch"));
//				mod.setyGround(aa.getString("yGround"));
//				mod.setyTel1(aa.getString("yTel1"));
//				mod.setyTel2(aa.getString("yTel2"));
//				mod.setyTel3(aa.getString("yTel3"));
//				mod.setyMatchdate(aa.getString("yMatchdate"));
//				mod.setyTime(aa.getString("yTime"));
//				mod.setyApply(aa.getString("yApply"));
//				mod.setyTeam(aa.getString("yTeam"));
//				mod.setyContents(aa.getString("yContents"));
				
				
				yl.add(mod);
			}
			aa.close();        //�׻� �� �ݾƾ��Ѵ� �ݾƾ� �� ����..		
		} catch (Exception e) {
		}
		finally {
		exit();
		}
		return yl;
	}
}

