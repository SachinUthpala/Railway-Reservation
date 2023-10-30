/*insert admin data */

package UpdateAdmin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class updateAdmins
 */
@WebServlet("/updateAdmins")
public class updateAdmins extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String admin_name = request.getParameter("name");
		String admin_password = request.getParameter("password");
		String admin_re_password = request.getParameter("repassword");
		
		System.out.println("Admin name ;"+admin_name);
		System.out.println("Admin Password :" + admin_password);
		System.out.println("Admin Password Re Entered :" + admin_re_password);
		
	
		InsertAdminData iadata = new InsertAdminData(admin_name, admin_password, admin_re_password);
		
		int j = iadata.insertData();
		
		if(j > 0) {
			response.sendRedirect("Admin/admin.jsp");
		}else {
			response.sendRedirect("Admin/admin.jsp");
		}
		
	}

}
