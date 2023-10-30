/*creating database connection to the reservation packahe*/

package Reservation;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
	
	 String url = "jdbc:mysql://localhost:3306/Railway";
	 String db_uname = "root";
	 String db_password = "Sachin-123";
	 
	 public Connection getConnection() {
		 
		 try {
			Connection con = DriverManager.getConnection(url,db_uname,db_password);
			 System.out.println("Database Connection Sucessfull");//only a massage
			 
			 Class.forName("com.mysql.cj.jdbc.Driver");
			 System.out.println("Driver connection Sucessfull");//only a massage
			 
			 return con;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		 return null;
	 }
}
