//servlet for inser users
package Updateusers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddUser_servlet
 */
@WebServlet("/AddUser_servlet")
public class AddUser_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		//getting parameters form the jsp file
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String repass = request.getParameter("repassword");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		
		System.out.print(name+"/////"+password+"/////"+email+"/////"+phone);
		
		InserUser inss = new InserUser(name, email, password, phone);
		
		//calling insert method
		int i = inss.InserData();
		
		if(i>0) {
			System.out.println(i);
			response.sendRedirect("Admin/UpdateUsers/UpdateUsers.jsp");
			
		}
		
	}

}
