package Reservation;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Del_reservation extends DbConnection {
	int id;
	
public Del_reservation(int id2) {
		id= id2;
	}

public int deleteData() {
		
		System.out.print("Value --" + id);
		
		Del_reservation d_data = new Del_reservation(id);
		
		String query = "delete from user_reservation where Rid = ? ";
		
		PreparedStatement psd;
		
		try {
			/*getting the connection and execute the qury*/
			psd= d_data.getConnection().prepareStatement(query);
			/*passing the cvalue to the sql query*/
			psd.setInt(1, id);
			psd.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return 0;
	
}}
