package controller;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.GalWriteProAction;
@WebServlet("*.do")    
public class ControllerServlet extends HttpServlet {

	@Override

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String command = request.getParameter("command");
		Cominterface inter = null;
		String viewName = "";
		
		try {
			if (command.equals("idcheck")) {
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out=response.getWriter();
				inter = ConfirmIdService.instance();
				String count = inter.showData(request, response);
				System.out.println("222");
				String id = request.getParameter("id");
				if(count.equals("123")) {
					out.println(id + "는(은) 이미 사용중인 ID입니다");
				}else {
					out.println(id + "는(은)사용할 수 있는  ID입니다");
				}
			} else if (command.equals("loginbutton")) {
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out=response.getWriter();
				inter = LoginService.instance();
				viewName = inter.showData(request, response);
				int check=(int)request.getAttribute("check");
				if(check==0) {
					out.println("<script>alert('아이디나 비밀번호가 일치하지 않습니다.');</script>");
				}else {
					out.println("ok");
				}
			} else if (command.equals("signinput")) {
				response.setContentType("text/html;charset=UTF-8");
				inter = SigninsertService.instance();
				viewName = inter.showData(request, response);
				request.getRequestDispatcher(viewName).forward(request, response);
			}else if(command.equals("mypage")){
				System.out.println("111");
				inter = SignImpl.instance();
				viewName = inter.showData(request, response);		
				request.getRequestDispatcher(viewName).forward(request, response);
			}else if(command.equals("pwchange")){
				inter = PwModify.instance();
				inter.showData(request, response);
				//request.getRequestDispatcher("sangpum_insert.jsp").forward(request, response);
			}
			else if(command.equals("signmodify")){
				inter = SignModify.instance();
				viewName = inter.showData(request, response);
				request.getRequestDispatcher(viewName).forward(request, response);
				
			}else if(command.equals("signdel")){//삭제 컨트롤러 추가
				System.out.println("컨트롤러진입");
				inter = SignDel.instance();
				viewName = inter.showData(request, response);
				PrintWriter out=response.getWriter();
				int check=(int) request.getAttribute("check");
				System.out.println(check);
				if(check==0) {
					
					out.println("<script>alert('비밀번호를 확인해주세요.')</script>");
				}else {
					out.println("<script>alert('삭제가 완료되었습니다.')</script>");
				}
				
			}
			else if(command.equals("qnasearch")){  //qna 검색 출력
				System.out.println("qna 검색 출력");
				inter = QnaSearch.instance();
				viewName = inter.showData(request, response);		
				request.getRequestDispatcher(viewName).forward(request, response);
			}
			else if(command.equals("teamlist")){  //팀리스트  출력
				System.out.println("teamlist 출력");
				inter = TeamListView_Service.instance();
				viewName = inter.showData(request, response);		
				request.getRequestDispatcher(viewName).forward(request, response);
			}
			else if(command.equals("teaminfo")){  //팀정보 출력
				System.out.println("teaminfo 출력");
				inter = TeamInfoService.instance();
				viewName = inter.showData(request, response);		
				request.getRequestDispatcher(viewName).forward(request, response);
			}
			else if(command.equals("team_regist")){  //팀등록 
			
				response.setContentType("text/html;charset=UTF-8");
				inter = TeamRegistService.instance();
				viewName = inter.showData(request, response);		
				request.getRequestDispatcher(viewName).forward(request, response);
			}
			else if(command.equals("team_modify")){  //팀관리  출력
				System.out.println("team modify 출력");
				inter = TeamModifyService.instance();
				viewName = inter.showData(request, response);		
				request.getRequestDispatcher(viewName).forward(request, response);
			}
			else if(command.equals("teamsearch")){  //팀리스트 검색  출력
				System.out.println("team search 출력");
				inter = TeamSearchService.instance();
				viewName = inter.showData(request, response);		
				request.getRequestDispatcher(viewName).forward(request, response);
			}
			else if(command.equals("teamranking")){  //팀랭킹  출력
				System.out.println("team ranking 출력");
				inter = TeamRanking_Service.instance();
				viewName = inter.showData(request, response);		
				request.getRequestDispatcher(viewName).forward(request, response);
			}
			else if(command.equals("teamplayer")){  //팀랭킹  출력
				System.out.println("team player 출력");
				inter = TeamPlayer_Service.instance();
				viewName = inter.showData(request, response);		
				request.getRequestDispatcher(viewName).forward(request, response);
			}
			
			else if(command.equals("reservation_input")){ // 풋살장 대관
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out=response.getWriter();
				inter = Reservation_Service.instance();
				viewName = inter.showData(request, response);
				request.getRequestDispatcher(viewName).forward(request, response);
			}
			else if(command.equals("branchlistview")){
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out=response.getWriter();
				inter = BranchList_Service.instance();
				viewName = inter.showData(request, response);
				request.getRequestDispatcher(viewName).forward(request, response);
			}else if(command.equals("branchdetail")){
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out=response.getWriter();
				inter = BranchDetail_Service.instance();
				viewName = inter.showData(request, response);
				request.getRequestDispatcher(viewName).forward(request, response);
			}
			
			else {
				viewName = "error.html";
				response.sendRedirect(viewName);
			}
		} catch (Exception e) {
			System.out.println("service err : " + e);
		}
	}
}
