//class for delete data

package UpdateTrains;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Delete_data extends DbConnection {  //using inheritance
	int uid;
	
	public Delete_data(int id) {  
		this.uid = id;
	}
	

	
	public int deleteData() {
		
		System.out.print("Value --" + uid);
		
		Delete_data d_data = new Delete_data(uid);
		
		String query = "delete from trains where tid = ? ";
		
		PreparedStatement psd;
		
		try {
			psd= d_data.getConnection().prepareStatement(query);
			psd.setInt(1, uid);
			psd.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return 0;
	}
}
