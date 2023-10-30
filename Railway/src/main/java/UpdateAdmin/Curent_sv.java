//servlet for update admins
package UpdateAdmin;


//controller class

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Curent_sv
 */
@WebServlet("/Curent_sv")
public class Curent_sv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setAttribute("current_emp", new Current_dao().selectAll());
		
		RequestDispatcher rd = request.getRequestDispatcher("Admin/updateAdmin/CurrentAdmins.jsp");
		rd.forward(request, response);
	}

	

}
