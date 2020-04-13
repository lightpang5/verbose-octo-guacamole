package com.spring.exam.repository01;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.spring.exam.vo01.SpringDto1;

@Repository
public class SpringDao1 {
	Statement state = null;
	 Connection conn= null;
	private Connection getConnection() throws SQLException {
        

        try {
            Class.forName("com.mysql.jdbc.Driver");

            String url = "jdbc:mysql://localhost/jsp?useSSL=false&useUnicode=true&characterEncoding=utf8";
            conn = DriverManager.getConnection(url, "root", "0000");
        }
        catch (ClassNotFoundException e) {
            System.out.println(" 드라이버 로딩 실패 ");
        }

        return conn;
    }
	 public boolean insert(SpringDto1 vo ) {
	        boolean result = false;
	        Connection conn = null		;
	        PreparedStatement pstmt = null;

	        try {
	            conn = getConnection();

	            String sql = "INSERT INTO springexam VALUES (default, ?, ?, ?, (SELECT SYSDATE()) )";
	            pstmt = conn.prepareStatement(sql);

	            pstmt.setString(1, vo.getName());
	            pstmt.setString(2, vo.getPwd());
	            pstmt.setString(3, vo.getContent());
	            int count = pstmt.executeUpdate();

	            result = (count == 1);
	        }
	        catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return result;
	    }
	 @SuppressWarnings("null")
	public List<SpringDto1> select() {
		 List<SpringDto1> selectlist = new ArrayList<SpringDto1>();  
		
		
		 try {
			 conn = getConnection();
			 state = conn.createStatement();
			 String sql = "SELECT * FROM springexam";
	         ResultSet aa = state.executeQuery(sql);
	          while(aa.next())
	          {
	        	  SpringDto1 mod = new SpringDto1();
	        	  mod.setName(aa.getString("name")); //번호
	        	  mod.setPwd(aa.getString("pwd"));
	        	  mod.setContent(aa.getString("content"));
	        	  mod.setReg_date(aa.getDate("reg_date"));
	        	  mod.setNo(aa.getInt("no"));
	        	  
	        	  selectlist.add(mod);
	          }
	          System.out.println(selectlist.get(0).getName()+selectlist.get(0).getPwd()+selectlist.get(0).getContent());
		 }
		 catch(SQLException e){
			 e.printStackTrace();
		 }
		 return selectlist;
	 }
	 @SuppressWarnings("null")
	 public  void delete(int no) {
		 
	        Connection conn = null		;
	        PreparedStatement pstmt = null; 
			
			
	        try {
	            conn = getConnection();

	            String sql = "DELETE FROM springexam WHERE no="+no;
	        
	            pstmt = conn.prepareStatement(sql);

	        
	            int count = pstmt.executeUpdate();

	       
	        }
	        catch (SQLException e) {
	            e.printStackTrace();
	        }
}
	 
		
}
