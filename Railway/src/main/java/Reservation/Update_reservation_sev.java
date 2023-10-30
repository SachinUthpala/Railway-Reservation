/*Sservlet controler class for update the reservation*/

package Reservation;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Update_reservation_sev
 */
@WebServlet("/Update_reservation_sev")
public class Update_reservation_sev extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/* getting data from the jsp file */
		int id = 	Integer.parseInt(request.getParameter("Id"));
		String  name = 	request.getParameter("name");
		String  from = 	request.getParameter("from");
		String  to = 	request.getParameter("to");
		String  phone = 	request.getParameter("phone");
		String  mail = 	request.getParameter("email");
		
		Update_res_class ups = new Update_res_class(id, name, from, to, phone, mail);
		int j = ups.UpdateData();
		
		
		/*if the code run without any error the page redirect to the need location*/
		if(j>0) {
			response.sendRedirect("Reserve/reserve.jsp");
		}
		
		
		response.sendRedirect("Reserve/reserve.jsp");
	}

	

}
