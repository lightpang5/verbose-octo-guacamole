package dao;

import static db.JdbcUtil.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.sql.DataSource;




import vo.GalBoardDto;
import vo.GalRepDto;

public class BoardDAO {

	DataSource ds;
	Connection con;
	private static BoardDAO boardDAO;

	private BoardDAO() {
		// TODO Auto-generated constructor stub
	}

	public static BoardDAO getInstance(){
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
		System.out.println("selectListCount()");
		int listCount= 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try{
			System.out.println("getConnection");
			pstmt=con.prepareStatement("select count(*) from galboard_tb");
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

	//글 목록 보기.	
	public ArrayList<GalBoardDto> selectArticleList(int page,int limit){
		System.out.println("selectArticleList(int page,int limit) ");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String board_list_sql="select * from galboard_tb order by G_B_NO desc limit ?,9";
		ArrayList<GalBoardDto> articleList = new ArrayList<GalBoardDto>();
		GalBoardDto board = null;
		int startrow=(page-1)*9; //읽기 시작할 row 번호..	
		
		try{
			
			pstmt = con.prepareStatement(board_list_sql);
			pstmt.setInt(1, startrow);
			
			
			System.out.println(pstmt);
			rs = pstmt.executeQuery();
			System.out.println("rs값: "+rs);

			while(rs.next()){
				System.out.println("while들어옴");
				board = new GalBoardDto();
				System.out.println("객체만들었다");
				
				
				
				
				board.setId(rs.getString("ID"));
				System.out.println("1");
				board.setG_b_subject(rs.getString("G_B_SUBJECT"));
				board.setG_b_contents(rs.getString("G_B_CONTENTS"));
				System.out.println("1");
				board.setG_b_no(rs.getInt("G_B_NO"));
				board.setG_b_date(rs.getDate("G_B_DATE"));
				board.setG_b_readcount(rs.getInt("G_B_READCOUNT"));
				System.out.println("2");
				board.setG_b_file(rs.getString("G_B_FILE"));
				
				System.out.println("3");
				articleList.add(board);
				
			}

		}catch(Exception ex){
		}finally{
			close(rs);
			close(pstmt);
		}

		return articleList;

	}

	//글 내용 보기.
	public GalBoardDto selectArticle(int board_num){
		System.out.println("selectArticle(int board_num)");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		GalBoardDto boardBean = null;

		try{
			pstmt = con.prepareStatement(
					"select * from galboard_tb where G_B_NO = ?");
			pstmt.setInt(1, board_num);
			rs= pstmt.executeQuery();
			
			System.out.println("쿼리는잘돌아갔나");
			if(rs.next()){
				System.out.println("잘들어왔나");
				boardBean = new GalBoardDto();
				boardBean.setG_b_no(rs.getInt("G_B_NO"));
				boardBean.setId(rs.getString("ID"));
				boardBean.setG_b_subject(rs.getString("G_B_SUBJECT"));
				boardBean.setG_b_contents(rs.getString("G_B_CONTENTS"));
				boardBean.setG_b_file(rs.getString("G_B_FILE"));
				boardBean.setG_b_readcount(rs.getInt("G_B_READCOUNT"));
				boardBean.setG_b_date(rs.getDate("G_B_DATE"));
			}
		}catch(Exception ex){
		}finally{
			close(rs);
			close(pstmt);
		}

		return boardBean;

	}

	

	//글 답변.


	//글 수정.
	public int updateArticle(GalBoardDto article){

		int updateCount = 0;
		PreparedStatement pstmt = null;
		String sql="update galboard_tb set G_B_SUBJECT=?,G_B_CONTENTS=? where G_B_NO=?";

		try{
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, article.getG_b_subject());
			pstmt.setString(2, article.getG_b_contents());
			pstmt.setInt(3, article.getG_b_no());
			System.out.println(pstmt);
			updateCount = pstmt.executeUpdate();
		}catch(Exception ex){
			
		}finally{
			close(pstmt);
		}

		return updateCount;

	}

	//글 삭제.
	public int deleteArticle(int GB_NUM){

		PreparedStatement pstmt = null;
		
		String gal_delete_sql="delete from galboard_tb where G_B_NO=?;";
		
		int deleteCount=0;

		try{
			pstmt=con.prepareStatement(gal_delete_sql);
			pstmt.setInt(1, GB_NUM);
			deleteCount=pstmt.executeUpdate();
		}catch(Exception ex){
			System.out.println("이유"+ex);
		}	finally{
			close(pstmt);
		}

		return deleteCount;

	}

	//조회수 업데이트.
	public int updateReadCount(int board_num){
		System.out.println("updateReadCount(int board_num)");
		PreparedStatement pstmt = null;
		int updateCount = 0;
		String sql="update board set BOARD_READCOUNT = "+
				"BOARD_READCOUNT+1 where BOARD_NUM = "+board_num;

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
	public boolean isArticleBoardWriter(int GB_NUM,String GB_ID){
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String gal_sql="select * from galboard_tb where G_B_NO=?";
		boolean isWriter = false;

		try{
			pstmt=con.prepareStatement(gal_sql);
			pstmt.setInt(1, GB_NUM);
			rs=pstmt.executeQuery();
			rs.next();

			if(GB_ID.equals(rs.getString("ID"))){
				isWriter = true;
			}
		}catch(SQLException ex){
		}
		finally{
			close(pstmt);
		}

		return isWriter;

	}
	
	public int G_insertArticle(GalBoardDto article){
		System.out.println("G_insertArticle(G_BoardBean article)");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int num =0;
		String sql="";
		int insertCount=0;
		
		
		try{
			pstmt=con.prepareStatement("select max(G_B_NO) from galboard_tb");
			rs = pstmt.executeQuery();
			
			if(rs.next())
				num =rs.getInt(1)+1;
			else
				num=1;

			sql="insert into galboard_tb (G_B_SUBJECT,G_B_CONTENTS,G_B_NO,";
			sql+="G_B_READCOUNT, G_B_FILE, ID, G_B_DATE"+
					") values(?,?,?,?,?,?,now())";
			
			pstmt = con.prepareStatement(sql);
			System.out.println(pstmt);
			pstmt.setString(1, article.getG_b_subject());
			pstmt.setString(2, article.getG_b_contents());
			pstmt.setInt(3, num);
			System.out.println("중간");
			pstmt.setInt(4, 1);
			pstmt.setString(5, article.getG_b_file());
			pstmt.setString(6, article.getId());

			insertCount=pstmt.executeUpdate();
			System.out.println(insertCount);
		}catch(Exception ex){
			System.out.println(ex);
		}finally{
			close(rs);
			close(pstmt);
		}

		return insertCount;

	}
	
	public int G_RepinsertArticle(GalRepDto article){
		System.out.println("G_RepinsertArticle(G_BoardRepBean article)");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int num =0;
		String sql="";
		int insertCount=0;
		
		
		try{
			pstmt=con.prepareStatement("select max(G_REP_NO) from galrep_tb");
			rs = pstmt.executeQuery();
			
			if(rs.next())
				num =rs.getInt(1)+1;
			else
				num=1;

			sql="insert into galrep_tb (G_REP_CONTENTS,G_B_NO,";
			sql+="G_REP_NO, ID, G_REP_DATE"+
					") values(?,?,?,?,now())";
			System.out.println(11);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, article.getG_rep_contents());
			pstmt.setInt(2, article.getG_b_no());
			System.out.println(22);
			pstmt.setInt(3, num);
			pstmt.setString(4, article.getId());
			
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
	public ArrayList<GalRepDto> selectArticleRepList(int num){
		System.out.println("selectArticleRepList(int num) ");
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String board_list_sql="select * from galrep_tb where G_B_NO =? order by G_REP_DATE desc";
		ArrayList<GalRepDto> articleList = new ArrayList<GalRepDto>();
		GalRepDto board = null;
		
		
		try{
			
			pstmt = con.prepareStatement(board_list_sql);
			pstmt.setInt(1, num);
			
			
			
			rs = pstmt.executeQuery();

			while(rs.next()){
				board = new GalRepDto();
				board.setId(rs.getString("ID"));
				board.setG_b_no(num);
				board.setG_rep_contents(rs.getString("G_REP_CONTENTS"));
				board.setG_rep_date(rs.getDate("G_REP_DATE"));
				board.setG_rep_no(rs.getInt("G_REP_NO"));
				

				articleList.add(board);
				
			}

		}catch(Exception ex){
		}finally{
			close(rs);
			close(pstmt);
		}

		return articleList;

	}

}
