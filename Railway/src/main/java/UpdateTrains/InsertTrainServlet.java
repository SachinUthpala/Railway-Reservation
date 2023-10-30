
//servlet for insert data
package UpdateTrains;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InsertTrainServlet
 */
@WebServlet("/InsertTrainServlet")
public class InsertTrainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
				
		
				String train_name  = request.getParameter("name");
				String to = request.getParameter("to");
				String from = request.getParameter("from");
				String price = request.getParameter("price");
				
				//display items
				
				System.out.println("Name : "+ train_name + to + from + price);
				
				InsertData inseertdata = new InsertData(train_name, from, to, price);
				
				int j = inseertdata.insertTrains();
				
				if(j > 0) {
					response.sendRedirect("Admin/admin.jsp");
				}else {
					response.sendRedirect("Admin/admin.jsp");
				}
				
				System.out.print(j);
	}

}
