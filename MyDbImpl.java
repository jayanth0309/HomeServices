import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MyDbImpl {
	public static int adminreg(AdminGetandSet a) {
		int status = 0;
		
		try {
//			AdminGetandSet a = new AdminGetandSet();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeService1", "root",
					"password-1");

			PreparedStatement ps = con.prepareStatement("insert into adminreg values(?,?,?,?,?)");
			ps.setString(1, a.getFirstname());
			ps.setString(2, a.getLastname());
			ps.setString(3, a.getContactnumber());
			ps.setString(4, a.getEmailid());
			ps.setString(5, a.getPassword());

			status = ps.executeUpdate();
			ps.close();
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}	
	public static int customerreg(CustomerGetandSet c) {
		int status = 0;
		
		try {
//			AdminGetandSet a = new AdminGetandSet();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeService1", "root",
					"password-1");

			PreparedStatement ps = con.prepareStatement("insert into customerreg values(?,?,?,?,?)");
			ps.setString(1, c.getFirstname());
			ps.setString(2, c.getLastname());
			ps.setString(3, c.getContactnumber());
			ps.setString(4, c.getEmailid());
			ps.setString(5, c.getPassword());

			status = ps.executeUpdate();
			ps.close();
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	public static int vendorreg(VendorGetandSet v) {
		int status = 0;
		
		try {
//			AdminGetandSet a = new AdminGetandSet();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeService1", "root",
					"password-1");

			PreparedStatement ps = con.prepareStatement("insert into vendorreg values(?,?,?,?,?,?,?)");
			ps.setString(1, v.getFirstname());
			ps.setString(2, v.getLastname());
			ps.setString(3, v.getAge());
			ps.setString(4, v.getGender());
			ps.setString(5, v.getContactnumber());
			ps.setString(6, v.getVendorid());
			ps.setString(7, v.getPassword());

			status = ps.executeUpdate();
			ps.close();
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	public static int vendorreg(String vendorid, String email, String address) {
int status = 0;
		
		try {
//			AdminGetandSet a = new AdminGetandSet();
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HomeService1", "root",
					"password-1");

			PreparedStatement ps = con.prepareStatement("insert into vendorupdatedetails values(?,?,?)");
			ps.setString(1, vendorid);
			ps.setString(2, email);
			ps.setString(3, address);
			status = ps.executeUpdate();
			ps.close();
			con.close();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
}
