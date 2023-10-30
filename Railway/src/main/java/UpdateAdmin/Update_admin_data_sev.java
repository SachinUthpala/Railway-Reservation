package UpdateAdmin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Update_admin_data_sev
 */
@WebServlet("/Update_admin_data_sev")
public class Update_admin_data_sev extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("Id"));
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		
		System.out.print("Admin Update data : " + id+name+password);
		
		Update_admin_data_class ups = new Update_admin_data_class(id, name, password);
		
		int j = ups.UpdateAdminData();
		
		if(j>0) {
			response.sendRedirect("Admin/updateAdmin/UpdateAdmin.jsp");
		}
		response.sendRedirect("Admin/updateAdmin/UpdateAdmin.jsp");
		
	}

	

}
