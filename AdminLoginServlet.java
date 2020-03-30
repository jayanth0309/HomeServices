import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String n = request.getParameter("loginname1");
		String p = request.getParameter("pass1");
		String submitType = request.getParameter("submit");
		if (submitType.equals("Login")) {
			if (MyDB.validateadmin(n, p)) {
				out.println("<html><body><b>Successfully logged in"
                        + "</b></body></html>");
//	    	request.getRequestDispatcher("HomeService1stPage.html").forward(request, response);

			} else {
	        out.print("<h1 style='color:red;'>Sorry username or password error</h1>");  
			}
		}else {
			String firstname = request.getParameter("fname");
			String lastname = request.getParameter("lname");
			String contactnumber = request.getParameter("phone");
			String email = request.getParameter("email");
			String password = request.getParameter("pass");
			AdminGetandSet a = new AdminGetandSet();
			a.setFirstname(firstname);
			a.setLastname(lastname);;
			a.setContactnumber(contactnumber);
			a.setEmailid(email);
			a.setPassword(password);
			if(MyDbImpl.adminreg(a)==1) {
				 out.println("<html><body>successfully saved in database</body></html>");
			}else {
				request.getRequestDispatcher("HomeService1stPage.html").forward(request, response);
			}
			
			
		}
		out.close();
	}
}