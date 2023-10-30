//servlet for dlete trains
package UpdateTrains;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Deleter_train_sev
 */
@WebServlet("/Deleter_train_sev")
public class Deleter_train_sev extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int trainId =Integer.parseInt( request.getParameter("trid"));
		System.out.print(trainId);
		
		Delete_data delete_data = new Delete_data(trainId);
		int j = delete_data.deleteData();
		
		if(j>0) {
			response.sendRedirect("Admin/UpdateTrains/updateTrains.jsp");
		}else {
			
		}
		response.sendRedirect("Admin/UpdateTrains/updateTrains.jsp");
		System.out.print(j);
	}

	

}
