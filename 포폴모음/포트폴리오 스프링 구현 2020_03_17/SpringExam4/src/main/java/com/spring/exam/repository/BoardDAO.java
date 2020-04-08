package com.spring.exam.repository;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.print.attribute.Size2DSyntax;
import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.exam.vo.BoardDto;

@Repository
public class BoardDAO {
	
//	  private Connection getConnection() throws SQLException {
//	        Connection conn = null;
//
//	        try {
//	            Class.forName("com.mysql.jdbc.Driver");
//
//	            String url = "jdbc:mysql://localhost/jsp";
//	            conn = DriverManager.getConnection(url, "root", "0000");
//	        }
//	        catch (ClassNotFoundException e) {
//	            System.out.println(" 드라이버 로딩 실패 ");
//	        }
//
//	        return conn;
//	    }
	  @Autowired
	  private DataSource datasource;
//	  public List<BoardDto> getList(){       기존의 형태 mybatis 사용 X 
//	        List<BoardDto> list = new ArrayList<BoardDto>();
//	        Connection conn = null;
//	        PreparedStatement pstmt = null;
//	        ResultSet rs = null;
//
//	        try {
//	            conn = datasource.getConnection();
//
//	            String sql = "SELECT no, name, pwd, content, reg_date" +
//	                    " FROM springexam" +
//	                    " ORDER BY no desc";
//
//	            pstmt = conn.prepareStatement(sql);
//	            rs = pstmt.executeQuery();
//
//	            while(rs.next()) {
//	            	BoardDto vo = new BoardDto();
//	                vo.setNo(rs.getInt(1));
//	                vo.setName(rs.getString(2));
//	                vo.setPwd(rs.getString(3));
//	                vo.setContent(rs.getString(4));
//	                vo.setReg_date(rs.getDate(5));
//
//	                list.add(vo);
//	            }
//	        }
//	        catch (SQLException e) {
//	        }
//
//	        return list;
//	    }
	  
	  @Autowired
	  private SqlSession sqlsession;
	  public List<BoardDto> getList(){
		  List<BoardDto> list = sqlsession.selectList("guestbook.getList");

	        return list;
	    }
	  
//	public boolean insert(BoardDto vo) {
//			boolean result = false;
//	        Connection conn = null		;
//	        PreparedStatement pstmt = null;
//
//	        try {
//	        	conn = datasource.getConnection();
//
//	            String sql = "INSERT INTO springexam VALUES (default, ?, ?, ?, (SELECT SYSDATE()) )";
//	            pstmt = conn.prepareStatement(sql);
//
//	            pstmt.setString(1, vo.getName());
//	            pstmt.setString(2, vo.getPwd());
//	            pstmt.setString(3, vo.getContent());
//	            int count = pstmt.executeUpdate();
//
//	            result = (count == 1);
//	        }
//	        catch (SQLException e) {
//	            e.printStackTrace();
//	        }
//	        return result;
//		
//	}
	  
	  public void insertList(BoardDto vo) {
		int result=0;
		result = sqlsession.insert("insertlist", vo);
		
		
	}
//	 public boolean delete(int no) {
//	        boolean result = false;
//	        Connection conn = null;
//	        PreparedStatement pstmt = null;
//
//	        try {
//	        	conn = datasource.getConnection();
//	        	
//	            String sql = "DELETE FROM springexam WHERE no=?";
//	            pstmt = conn.prepareStatement(sql);
//
//	            pstmt.setInt(1, no);
//	            int count = pstmt.executeUpdate();
//
//	            result = (count == 1);
//	        } 
//	        catch (SQLException e) {
//	            e.printStackTrace();
//	        }
//
//	        return result;
//	    }
	  public List<BoardDto> editList(BoardDto vo) {
		  List<BoardDto> list = sqlsession.selectList("pwcheck",vo);
		  System.out.println(list.get(0).getNo());
	       System.out.println(vo.getPwd());
	       
	       
	       if(list.get(0).getPwd().equals(vo.getPwd())) {
	    	   sqlsession.update("edit", vo);
	    	   String name= "수정 완료되었습니다.";
	    	   list.get(0).setName(name);
	    	  
	       }
	       else {
	    	
	    	   String name= "비밀번호를 확인해주세요.";
			list.get(0).setName(name);
	       }
	    	   return list;
	    }

	  
	  public List<BoardDto> deleteList(BoardDto vo) {
	     
	      
	       List<BoardDto> list = sqlsession.selectList("pwcheck",vo);
	       System.out.println(list.get(0).getNo());
	       System.out.println(vo.getPwd());
	       if(list.get(0).getPwd().equals(vo.getPwd())) {
	    	   sqlsession.delete("deletelist", vo);
	    	   String name= "삭제가 완료되었습니다.";
	    	   list.get(0).setName(name);
	    	  
	       }
	       else {
	    	
	    	   String name= "비밀번호를 확인해주세요.";
			list.get(0).setName(name);
	       }
	    	   return list;
	    }

	  public List<BoardDto> selectList(int no) {
		
		  List<BoardDto> list = sqlsession.selectList("selectdetail",no);

	        return list;
		
	}
}
