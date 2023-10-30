//servelet for delete users

package Updateusers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Delete_use_sev
 */
@WebServlet("/Delete_use_sev")
public class Delete_use_sev extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   //method for getting parameters
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int uid = Integer.parseInt(request.getParameter("uid"));
		System.out.print("delete user ++++:"+uid);
		
		DeleteUser delete_data = new DeleteUser(uid);
		int j = delete_data.deleteData();
		
		
		
		if(j>0) {
			response.sendRedirect("Admin/admin.jsp");
			System.out.print(j);
		}else {
			response.sendRedirect("Admin/admin.jsp");
			System.out.print(j);
		}
		
	}

	

}
