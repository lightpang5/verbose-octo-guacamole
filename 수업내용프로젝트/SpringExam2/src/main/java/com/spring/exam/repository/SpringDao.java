package com.spring.exam.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import com.spring.exam.vo.SpringDto;

@Repository
public class SpringDao {
	private Connection getConnection() throws SQLException {
        Connection conn = null;

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



    public boolean insert(SpringDto vo ) {
        boolean result = false;
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            conn = getConnection();

            String sql = "INSERT INTO springexam VALUES (default ?, ?, ?, (SELECT SYSDATE()) )";
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

}
