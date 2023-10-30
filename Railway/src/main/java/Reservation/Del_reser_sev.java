
/*delete user reservation servlet*/
package Reservation;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Del_reser_sev
 */
@WebServlet("/Del_reser_sev")
public class Del_reser_sev extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*getting data from the jsp file*/
		int res_Id =Integer.parseInt( request.getParameter("id"));
		System.out.print(res_Id);
		
		Del_reservation delete_data = new Del_reservation(res_Id);
		int j = delete_data.deleteData();
		
		if(j>0) {
			response.sendRedirect("Reserve/reserve.jsp");
		}
		response.sendRedirect("Reserve/reserve.jsp");
	}

	

}
