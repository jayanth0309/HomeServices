
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CustomerLoginServlet
 */
@WebServlet("/CustomerLoginServlet")
public class CustomerLoginServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String n = request.getParameter("loginname1");
		String p = request.getParameter("pass1");
		String submitType = request.getParameter("submit");
		if (submitType.equals("Login")) {
			if (MyDB.validatecustomer(n, p)) {
				out.println("<html><body><b>Successfully logged in" + "</b></body></html>");
				request.getRequestDispatcher("HomeService1stPage.html").forward(request, response);

			} else {
//	        out.print("<h1 style='color:red;'>Sorry username or password error</h1>");  
				request.getRequestDispatcher("customerloginError.html").forward(request, response);
			}
		} else {
			String firstname = request.getParameter("fname");
			String lastname = request.getParameter("lname");
			String contactnumber = request.getParameter("phone");
			String email = request.getParameter("email");
			String password = request.getParameter("pass");
			CustomerGetandSet c = new CustomerGetandSet();
			c.setFirstname(firstname);
			c.setLastname(lastname);
			c.setContactnumber(contactnumber);
			c.setEmailid(email);
			c.setPassword(password);
			if (MyDbImpl.customerreg(c) == 1) {
				out.println("<html><body><b>Successfully Inserted" + "</b></body></html>");
//				request.getRequestDispatcher("welcom.html").forward(request, response);
			} else {
				out.println("<html><body><b>Inputs Error" + "</b></body></html>");
				request.getRequestDispatcher("customerreg.html").forward(request, response);
			}
		}
		out.close();
	}
}