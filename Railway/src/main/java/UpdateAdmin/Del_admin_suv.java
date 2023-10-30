//servlet  for delete data
package UpdateAdmin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Del_admin_suv
 */
@WebServlet("/Del_admin_suv")
public class Del_admin_suv extends HttpServlet { //inheritance
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int adminId =Integer.parseInt( request.getParameter("adminId"));
		System.out.print("Admin Id for Delete :" + adminId);
		
		
		Del_Admin delete_data = new Del_Admin(adminId);
		int j = delete_data.Del_Admin();
		
		if(j>0) {
			response.sendRedirect("Admin/admin.jsp");
			System.out.print(j);
		}
		response.sendRedirect("Admin/admin.jsp");
		System.out.print(j);
	}

	

}
