//servlet for update trains
package UpdateTrains;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Update_trains_sev
 */                                                   
@WebServlet("/Update_trains_sev")
public class Update_trains_sev extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("Id"));
		String name = request.getParameter("name");
		String from = request.getParameter("from");
		String to =request.getParameter("to");
		String price = request.getParameter("price");
		
		System.out.print("Data In Update Train : "+id+name+from+to+price);
		
		Update_train_class uts = new Update_train_class(id, name, from, to, price);
		int j = uts.UpdateData();
		
		if(j>0) {
			response.sendRedirect("Admin/UpdateTrains/updateTrains.jsp");
		}
		response.sendRedirect("Admin/UpdateTrains/updateTrains.jsp");
	}

	

}
