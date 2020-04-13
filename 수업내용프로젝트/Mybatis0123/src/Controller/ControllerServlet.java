package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("*.do")  
public class ControllerServlet extends HttpServlet{

	@Override

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("service err : " );
		String command = request.getParameter("command");
		CommandInter inter = null;
		String viewName = "";

		
		try {
			if(command.equals("sangpum")){
				System.out.println("111");
				inter = SangpumImpl.instance();
				viewName = inter.showData(request, response);		
				request.getRequestDispatcher(viewName).forward(request, response);
			}

			else if(command.equals("insert")){
			
				inter = SangpumInsert.instance();
			
				viewName = inter.showData(request, response);		
				
				request.getRequestDispatcher(viewName).forward(request, response);
			} else if(command.equals("modify")){
				inter = SangpumModify.instance();
				viewName = inter.showData(request, response);
			
				request.getRequestDispatcher(viewName).forward(request, response);
			} else if(command.equals("delete")){
				inter = SangpumDelete.instance();
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






