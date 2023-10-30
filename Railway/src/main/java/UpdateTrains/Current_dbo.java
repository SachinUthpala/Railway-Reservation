//class for select values from the database
package UpdateTrains;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Current_dbo {
	public ArrayList<Current_trains> selectAll(){  //creating a array method for get data
		DbConnection con = new DbConnection();
		
		ArrayList<Current_trains> trailAll = new ArrayList<>();
		
		String sql = "select * from trains";
		
		/*  used exception handling */
		try {                
			PreparedStatement smtp;
			smtp = con.getConnection().prepareStatement(sql);
			ResultSet res = smtp.executeQuery();
			
			while(res.next()) {
				Current_trains cut = new Current_trains();
				
				cut.settId(res.getInt(1));
				cut.setTname(res.getString(2));
				cut.setT_from(res.getString(3));
				cut.setT_to(res.getString(4));
				cut.setPrice(res.getString(5));
				
				trailAll.add(cut);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return trailAll;
	}
}
