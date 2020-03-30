import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/VendorLoginServlet")
public class VendorLoginServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String n = request.getParameter("loginname1");
		String p = request.getParameter("pass1");
		String submitType = request.getParameter("submit");
		if (submitType.equals("Login")) {
			if (MyDB.validatevendor(n, p)) {
				System.out.println("login servlet"+n);
				login l = new login();
				l.setVendorid(n);
//				out.println("<html><body><b>Successfully logged in" + "</b></body></html>");
				request.getRequestDispatcher("vendorafterlogin.jsp").include(request, response);
//				request.getRequestDispatcher("vendorupdatingdetails").forward(request, response);
				
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("vendorloginError.html");
				rd.include(request, response);
			}
		} else if (submitType.equals("Register")) {
			String firstname = request.getParameter("fname");
			String lastname = request.getParameter("lname");
			String personage = request.getParameter("personage");
			String gender = request.getParameter("gender");

			String contactnumber = request.getParameter("phone");
			String vendorid = request.getParameter("vid");
			String password = request.getParameter("pass");
			VendorGetandSet v = new VendorGetandSet();
			v.setFirstname(firstname);
			v.setLastname(lastname);
			v.setAge(personage);
			v.setGender(gender);
			v.setContactnumber(contactnumber);
			v.setVendorid(vendorid);
			v.setPassword(password);
			if (MyDbImpl.vendorreg(v) == 1) {
				out.println("<html><body><b>Successfully Inserted" + "</b></body></html>");
//				request.getRequestDispatcher("welcom.html").forward(request, response);
			} else {
				request.getRequestDispatcher("HomeService1stPage.html").forward(request, response);
			}

		}
		else {
			login l = new login();
			String vendorid =l.getVendorid();
//			System.out.println(vendorid);
			String emailid = request.getParameter("email1");
			String address = request.getParameter("address");
			if (MyDbImpl.vendorreg(vendorid,emailid,address) == 1) {
				out.println("<html><body><b>Successfully Insert" + "</b></body></html>");
//				request.getRequestDispatcher("welcom.html").forward(request, response);
			} else {
				request.getRequestDispatcher("Vendorapdatingdetails").forward(request, response);
			}
		}

		out.close();
	}
}