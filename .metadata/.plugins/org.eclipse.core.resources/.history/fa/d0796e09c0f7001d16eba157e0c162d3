package UpdateAdmin;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import UpdateTrains.Delete_data;

public class Del_Admin extends DbConnection {
	
	int adminId;
	
	public Del_Admin(int adminId2) {
		this.adminId = adminId2;
	}

	
	public int  Del_Admin() {
		
		System.out.print("Value --" + adminId);
		
		Delete_data d_data = new Delete_data(adminId);
		
		String query = "delete from admins where adi = ? ";
		
		PreparedStatement psd;
		
		try {
			psd= d_data.getConnection().prepareStatement(query);
			psd.setInt(1, adminId);
			psd.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return 0;
		
	}
	
	
}
