package UpdateTrains;

//controler class
//servlet for select data from the data base

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Cur_train_sev
 */
@WebServlet("/Cur_train_sev")
public class Cur_train_sev extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setAttribute("trainres", new Current_dbo().selectAll());
		
		//creating a dispacture object
		RequestDispatcher rd = request.getRequestDispatcher("Admin/UpdateTrains/Currenttrains.jsp");
		rd.forward(request, response);
	}

	
}
