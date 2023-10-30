/*current my reservation servlet*/
package Reservation;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class My_res_sv
 */
@WebServlet("/My_res_sv")
public class My_res_sv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		/*getting the values from the jsp file*/
		String name = request.getParameter("name");
		
		request.setAttribute("My_current_res", new Curr_res_dao().selectAll(name));
		
		
		
		RequestDispatcher rd = request.getRequestDispatcher("Reserve/myReservation.jsp");
		rd.forward(request, response);
		
	}

	
}
