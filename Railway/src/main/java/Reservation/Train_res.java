/*servlet for reservation trains*/

package Reservation;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Train_res
 */
@WebServlet("/Train_res")
public class Train_res extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		/*calling the object*/
		request.setAttribute("trainRes", new Train_dao().selectAll() );
		
		RequestDispatcher rd = request.getRequestDispatcher("Trains.jsp");
		rd.forward(request, response);
		
	}

	

}
