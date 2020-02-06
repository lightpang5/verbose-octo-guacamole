package dao;

import static db.JdbcUtil.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.sql.DataSource;
import vo.BoardBean;
import vo.G_BoardRepBean;

public class BoardDAO {

	DataSource ds;
	Connection con;
	private static BoardDAO boardDAO;

	private BoardDAO() {
		// TODO Auto-generated constructor stub
	}

	public static BoardDAO getInstance(){ // 자바할때 싱글톤 패턴 ! 이미 있는지만 확인을 하는 것 . 계속 돌아가는 보이지않는 작업의 불필요한 생성을 막기위해 ... 존재
		if(boardDAO == null){
			boardDAO = new BoardDAO();
		}
		return boardDAO;
	}

	public void setConnection(Connection con){
		this.con = con;
	}

	//글의 개수 구하기.
	public int selectListCount() {

		int listCount= 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try{
			System.out.println("getConnection");
			pstmt=con.prepareStatement("select count(*) from galboard");
			rs = pstmt.executeQuery();

			if(rs.next()){
				listCount=rs.getInt(1);
			}
		}catch(Exception ex){

		}finally{
			close(rs);
			close(pstmt);
		}

		return listCount;

	}
	public int G_RepinsertArticle(G_BoardRepBean article){
		System.out.println("G_RepinsertArticle(G_BoardRepBean article)");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int num =0;
		String sql="";
		int insertCount=0;
		
		
		try{
			pstmt=con.prepareStatement("select max(GB_Rep_NUM) from galrep");
			rs = pstmt.executeQuery();
			
			if(rs.next())
				num =rs.getInt(1)+1;
			else
				num=1;

			sql="insert into galrep (GB_REP_CONTENTS,GB_NUM,";
			sql+="GB_REP_NUM, GB_ID, GB_REP_DATE"+
					") values(?,?,?,?,now())";
			System.out.println(11);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, article.getGB_REP_CONTENTS());
			pstmt.setInt(2, article.getGB_NUM());
			System.out.println(22);
			pstmt.setInt(3, num);
			pstmt.setString(4, article.getGB_ID());
			
			System.out.println(pstmt);
			insertCount=pstmt.executeUpdate();
			
		}catch(Exception ex){
			System.out.println(ex);
		}finally{
			close(rs);
			close(pstmt);
		}

		return insertCount;

	}
	public ArrayList<G_BoardRepBean> selectArticleRepList(int num){
		System.out.println("selectArticleRepList(int num) ");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String board_list_sql="select * from galrep where GB_NUM =? order by GB_REP_DATE desc";
		ArrayList<G_BoardRepBean> articleList = new ArrayList<G_BoardRepBean>();
		G_BoardRepBean board = null;
		
		
		try{
			
			pstmt = con.prepareStatement(board_list_sql);
			pstmt.setInt(1, num);
			
			
			
			rs = pstmt.executeQuery();

			while(rs.next()){
				board = new G_BoardRepBean();
				board.setGB_ID(rs.getString("GB_ID"));
				board.setGB_NUM(num);
				board.setGB_REP_CONTENTS(rs.getString("GB_REP_CONTENTS"));
				board.setGB_REP_DATE(rs.getDate("GB_REP_DATE"));
				board.setGB_REP_NUM(rs.getInt("GB_REP_NUM"));
				board.setGB_ID(rs.getString("GB_ID"));
				

				articleList.add(board);
				
			}

		}catch(Exception ex){
		}finally{
			close(rs);
			close(pstmt);
		}

		return articleList;

	}
	//글 목록 보기.	
	public ArrayList<BoardBean> selectArticleList(int page,int limit){

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String board_list_sql="select * from galboard order by GB_NUM asc limit ?,10";
		ArrayList<BoardBean> articleList = new ArrayList<BoardBean>();
		BoardBean board = null;
		int startrow=(page-1)*10; //읽기 시작할 row 번호..	

		try{
			pstmt = con.prepareStatement(board_list_sql);
			pstmt.setInt(1, startrow);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				board = new BoardBean();
				board.setGB_NUM(rs.getInt("GB_NUM"));
				board.setGB_SUBJECT(rs.getString("GB_SUBJECT"));
				board.setGB_CONTENTS(rs.getString("GB_CONTENTS"));
				board.setGB_FILE(rs.getString("GB_FILE"));
				board.setGB_READCOUNT(rs.getInt("GB_READCOUNT"));
				board.setGB_DATE(rs.getDate("GB_DATE"));
				board.setGB_ID(rs.getString("GB_ID"));
				articleList.add(board);
				
			}

		}catch(Exception ex){
			System.out.println(ex);
		}finally{
			close(rs);
			close(pstmt);
		}

		return articleList;

	}

	//글 내용 보기.
	public BoardBean selectArticle(int board_num){

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BoardBean boardBean = null;

		try{
			pstmt = con.prepareStatement(
					"select * from galboard where GB_NUM = ?");
			pstmt.setInt(1, board_num);
			rs= pstmt.executeQuery();

			if(rs.next()){
				boardBean = new BoardBean();
				boardBean.setGB_NUM(rs.getInt("GB_NUM"));			
				boardBean.setGB_SUBJECT(rs.getString("GB_SUBJECT"));
				boardBean.setGB_CONTENTS(rs.getString("GB_CONTENTS"));
				boardBean.setGB_FILE(rs.getString("GB_FILE"));
				boardBean.setGB_READCOUNT(rs.getInt("GB_READCOUNT"));
				boardBean.setGB_DATE(rs.getDate("GB_DATE"));
				boardBean.setGB_ID(rs.getString("GB_ID"));
			}
		}catch(Exception ex){
		}finally{
			close(rs);
			close(pstmt);
		}

		return boardBean;

	}

	//글 등록.
	public int insertArticle(BoardBean article){
		
		System.out.println(article.getGB_ID());
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int num =0;
		String sql="";
		int insertCount=0;

		try{
			pstmt=con.prepareStatement("select max(GB_NUM) from galboard");
			rs = pstmt.executeQuery();

			if(rs.next())
				num =rs.getInt(1)+1;
			else
				num=1;

			sql="insert into galboard (GB_NUM,GB_ID,GB_SUBJECT,";
			sql+="GB_CONTENTS,GB_FILE,"+
					"GB_READCOUNT,"+
					"GB_DATE) values(?,?,?,?,?,?,now())";
			System.out.println(sql);
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2,article.getGB_ID());
			pstmt.setString(3, article.getGB_SUBJECT());
			pstmt.setString(4, article.getGB_CONTENTS());
			pstmt.setString(5, article.getGB_FILE());				
			pstmt.setInt(6, 0);
			System.out.println(pstmt);
			System.out.println(insertCount);
			insertCount=pstmt.executeUpdate();

		}catch(Exception ex){
		}finally{
			close(rs);
			close(pstmt);
		}

		return insertCount;

	}

	//글 답변.
	public int insertReplyArticle(BoardBean article){

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String board_max_sql="select max(GB_NUM) from galboard";
		String sql="";
		int num=0;
		int insertCount=0;
	

		try{
			pstmt=con.prepareStatement(board_max_sql);
			rs = pstmt.executeQuery();
			if(rs.next())num =rs.getInt(1)+1;
			else num=1;
			sql="update galboard set BOARD_RE_SEQ=BOARD_RE_SEQ+1 where BOARD_RE_REF=? ";
			sql+="and BOARD_RE_SEQ>?";
			pstmt = con.prepareStatement(sql);
		
			int updateCount=pstmt.executeUpdate();

			if(updateCount > 0){
				commit(con);
			}

	
			sql="insert into galboard (GB_NUM,BOARD_NAME,BOARD_PASS,BOARD_SUBJECT,";
			sql+="BOARD_CONTENT, BOARD_FILE,BOARD_RE_REF,BOARD_RE_LEV,BOARD_RE_SEQ,";
			sql+="BOARD_READCOUNT,GB_DATE) values(?,?,?,?,?,?,?,?,?,?,now())";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			
			pstmt.setString(4, article.getGB_SUBJECT());
			pstmt.setString(5, article.getGB_CONTENTS());
			pstmt.setString(6, ""); //답장에는 파일을 업로드하지 않음.
			
			pstmt.setInt(10, 0);
			insertCount = pstmt.executeUpdate();
		}catch(SQLException ex){
		}finally{
			close(rs);
			close(pstmt);
		}

		return insertCount;

	}

	//글 수정.
	public int updateArticle(BoardBean article){

		int updateCount = 0;
		PreparedStatement pstmt = null;
		String sql="update galboard set BOARD_SUBJECT=?,GB_CONTENTS=? where GB_NUM=?";

		try{
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, article.getGB_SUBJECT());
			pstmt.setString(2, article.getGB_CONTENTS());
			pstmt.setInt(3, article.getGB_NUM());
			updateCount = pstmt.executeUpdate();
		}catch(Exception ex){
		}finally{
			close(pstmt);
		}

		return updateCount;

	}

	//글 삭제.
	public int deleteArticle(int board_num){

		PreparedStatement pstmt = null;
		String board_delete_sql="delete from galboard where GB_NUM=?";
		int deleteCount=0;

		try{
			pstmt=con.prepareStatement(board_delete_sql);
			pstmt.setInt(1, board_num);
			deleteCount=pstmt.executeUpdate();
		}catch(Exception ex){
		}	finally{
			close(pstmt);
		}

		return deleteCount;

	}

	//조회수 업데이트.
	public int updateReadCount(int board_num){

		PreparedStatement pstmt = null;
		int updateCount = 0;
		String sql="update galboard set GB_READCOUNT = "+
				"GB_READCOUNT+1 where GB_NUM = "+board_num;

		try{
			pstmt=con.prepareStatement(sql);
			updateCount = pstmt.executeUpdate();
		}catch(SQLException ex){
		}
		finally{
			close(pstmt);

		}

		return updateCount;

	}

	//글쓴이인지 확인.
	public boolean isArticleBoardWriter(int board_num,String pass){

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String board_sql="select * from galboard where GB_NUM=?";
		boolean isWriter = false;

		try{
			pstmt=con.prepareStatement(board_sql);
			pstmt.setInt(1, board_num);
			rs=pstmt.executeQuery();
			rs.next();

			if(pass.equals(rs.getString("BOARD_PASS"))){
				isWriter = true;
			}
		}catch(SQLException ex){
		}
		finally{
			close(pstmt);
		}

		return isWriter;

	}

}
