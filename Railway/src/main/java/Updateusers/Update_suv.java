//servelet for update users

package Updateusers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Update_suv
 */
@WebServlet("/Update_suv")
public class Update_suv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// getting data from jsp file
		int id =  Integer.parseInt(request.getParameter("id"));
		String name =  request.getParameter("username");
		String password =  request.getParameter("pass");
		String email =  request.getParameter("mail");
		String phone =  request.getParameter("phone");
		
		System.out.print("Update : + :"+id+"\n"+name+"\n"+password+"\n"+email+"\n"+phone);
		
		Update_Users ups = new Update_Users(id, name, password, email, phone);
		int j = ups.Update();
		
		if(j>0) {
			response.sendRedirect("Admin/UpdateUsers/CurrentUsers.jsp");
		}
		response.sendRedirect("Admin/UpdateUsers/UpdateUsers.jsp");
	}

	

}
