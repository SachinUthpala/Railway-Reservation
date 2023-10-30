package Railway.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.xdevapi.PreparableStatement;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		//get data from the registration page
		String uname = request.getParameter("name");
		String password = request.getParameter("pass");
		String email = request.getParameter("email");
		String phone = request.getParameter("contact");
		String repass = request.getParameter("re_pass");
		
		//create a connection
		Connection con = null;
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Railway","root","Sachin-123");
			PreparedStatement pst = con.prepareStatement("Insert into users (uname,upassword,uemail,uPnum) values (?,?,?,?)"); 
			
			pst.setString(1, uname);
			pst.setString(2, password);
			pst.setString(3, email);
			pst.setString(4, phone);
			
			int rows = pst.executeUpdate();
			
			if(rows>0) {
				response.sendRedirect("SignUp/login.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}		}
		
		
	}

}
