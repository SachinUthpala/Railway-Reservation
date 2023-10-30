package Reservation;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Train_dao {
	public ArrayList<Trains> selectAll(){
		
		/*create a database connection*/
		DbConnection dbc = new DbConnection();
		
		ArrayList<Trains> trainAll = new ArrayList<>();
		
		String query = "Select * from trains";
		
		try {
			PreparedStatement smtp ;
			smtp = dbc.getConnection().prepareStatement(query);
			
			ResultSet res = smtp.executeQuery();
			
			while(res.next()) {
				
				
				/*pasing values to the sql query*/
				Trains trins = new Trains();
				trins.setTname(res.getString(2));
				trins.setT_from(res.getString(3));
				trins.setT_to(res.getString(4));
				trins.setPrice(res.getString(5));
				
				trainAll.add(trins);
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return trainAll;
		
	}
}
