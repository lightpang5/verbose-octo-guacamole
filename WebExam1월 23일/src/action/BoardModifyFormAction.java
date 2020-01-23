package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import svc.BoardDetailService;
import vo.ActionForward;
import vo.BoardBean;

public class BoardModifyFormAction implements Action {
	
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{
		 
		 	ActionForward forward = new ActionForward();
			int board_num=Integer.parseInt(request.getParameter("GB_NUM"));
			BoardDetailService boardDetailService
			= new BoardDetailService();	
		   	BoardBean article =boardDetailService.getArticle(board_num);
		   	request.setAttribute("article", article);
		   	
		   	System.out.println(request.getParameter("GB_ID"));
		   //여기가 안넘어감
		   	if(article.getGB_ID().equals(request.getParameter("GB_ID")))
		   		forward.setPath("/gal_board_modify.jsp");
		   	else
		   		forward.setPath("/qna.jsp");
		   	//여기까지..
	   		return forward;
	   		
	 }
	 
}