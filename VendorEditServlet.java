

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class VendorEditServlet
 */
@WebServlet("/VendorEditServlet")
public class VendorEditServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String submitType = request.getParameter("submit");
		if (submitType.equals("Add Personal Details")) {
//			String vendorid = request.getParameter("loginname1");
			String vendorid = "v001";
			String email = request.getParameter("email1");
			String address = request.getParameter("address");
			if (MyDbImpl.vendorreg(vendorid,email,address) == 1) {
				out.println("<html><body><b>Successfully Insert" + "</b></body></html>");
//				request.getRequestDispatcher("welcom.html").forward(request, response);
			} else {
				out.println("<html><body><b>Not updated" + "</b></body></html>");
//				request.getRequestDispatcher("HomeService1stPage.html").forward(request, response);
			}
		}


		out.close();
	}
}
