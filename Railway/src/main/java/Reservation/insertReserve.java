package Reservation;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class insertReserve
 * Sachin Uthpala Dias Abewikarama Gunasekara
 */
@WebServlet("/insertReserve")
public class insertReserve extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		/*getting values from the jsp file*/
		
		String name = request.getParameter("uname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String from = request.getParameter("from");
		String t_o = request.getParameter("to");
		String num_of_pax = request.getParameter("pax");
		
		System.out.println(name+email+phone+from+t_o+num_of_pax);
		
		Insert_Res ins = new Insert_Res(name,email,phone,num_of_pax,from,t_o);
		
		int i = ins.insertData();
		System.out.println(i);
		
		HttpSession session = request.getSession();
		String user_name = (String) session.getAttribute("user_name"); 
		
		System.out.println("session Attribute :" + user_name);
		
		response.sendRedirect("Reserve/reserve.jsp");
		
	}
	
	
	

}
