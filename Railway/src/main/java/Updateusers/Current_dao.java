//calss for getting data from the database
package Updateusers;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Current_dao {

	public ArrayList<Current_users> selectAll(){ //collections
		DbConnection dbc = new DbConnection();
		
		ArrayList<Current_users> userAll = new ArrayList<>();
		
		String sql = "select * from users";
		
		try {
			
			
			PreparedStatement stmt;
			stmt = dbc.getConnection().prepareStatement(sql);
			ResultSet res = stmt.executeQuery();
			
			while(res.next()) {
				
				Current_users emp = new Current_users();
				
				emp.setUdi(res.getInt(1));
				emp.setUname(res.getString(2));
				emp.setUemail(res.getString(3));
				emp.setUpassword(res.getString(4));
				emp.setuPnum(res.getString(5));
				
				userAll.add(emp);
			
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return userAll;
	}
	
	
}
