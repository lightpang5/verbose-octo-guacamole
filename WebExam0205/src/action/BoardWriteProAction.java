package action;

import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import svc.BoardWriteProService;
import vo.ActionForward;
import vo.BoardBean;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class BoardWriteProAction implements Action {

	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{

		ActionForward forward=null;
		BoardBean boardBean = null;
		//String uploadPath=request.getRealPath("/Upload");
		String realFolder="";
		String saveFolder="/boardUpload";
		int fileSize=5*1024*1024;
		ServletContext context = request.getServletContext();
		realFolder=context.getRealPath(saveFolder);   		
		MultipartRequest multi=new MultipartRequest(request,
				realFolder,
				fileSize,
				"UTF-8",
				new DefaultFileRenamePolicy());
		boardBean = new BoardBean();
		//boardBean.setBOARD_NAME(multi.getParameter("BOARD_NAME"));
	//	boardBean.setBOARD_PASS(multi.getParameter("BOARD_PASS"));
		boardBean.setGB_ID(multi.getParameter("GB_ID"));
		boardBean.setGB_SUBJECT(multi.getParameter("GB_SUBJECT"));
		boardBean.setGB_CONTENTS(multi.getParameter("GB_CONTENTS"));
		boardBean.setGB_FILE(
		multi.getOriginalFileName((String)multi.getFileNames().nextElement()));
		BoardWriteProService boardWriteProService = new BoardWriteProService();
		boolean isWriteSuccess = boardWriteProService.registArticle(boardBean);
		System.out.println(isWriteSuccess);
		System.out.println("�� null?");
		if(!isWriteSuccess){
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('��Ͻ���')");
			out.println("history.back();");
			out.println("</script>");
		}
		else{
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath("gal.bo");
		}

		return forward;
		
	}  	
	
}