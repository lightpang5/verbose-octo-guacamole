import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class AdderServlet extends  HttpServlet
{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException{
		String str1 = request.getParameter("NUM1");
		String str2 = request.getParameter("NUM2");
		int num1 = Integer.parseInt(str1);
		int num2 = Integer.parseInt(str2);
		int sum = num1 + num2;
		response.setContentType("text/html;chareset=euc=kr");
		PrintWriter out = response.getWriter();
		out.println("<html><head><title>���� ���α׷� </title></head>");
		out.println("<body>");
		out.printf("%d+%d=%d",num1,num2,sum);
		out.println("</body></html>");

	
	}
}
