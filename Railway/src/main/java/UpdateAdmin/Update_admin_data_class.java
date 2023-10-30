package UpdateAdmin;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Update_admin_data_class  extends DbConnection {
	int id;
	String name;
	String password;
	
	public Update_admin_data_class(int i , String name, String pass) {
		this.id = i;
		this.name = name;
		this.password = pass;
	}
	
	public int UpdateAdminData() {
		Update_admin_data_class uad = new Update_admin_data_class(id, name, password);
		
		String sql = "update admins set anme=?,apassword=? where adi = ?";
		
		PreparedStatement psd;
		
		try {
			psd = uad.getConnection().prepareStatement(sql);
			
			psd.setString(1, name);
			psd.setString(2, password);
			psd.setInt(3, id);
			
			int j = psd.executeUpdate();
			
			if(j>0) {
				System.out.println("Sucessfulll");
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return 0;
	}
}
