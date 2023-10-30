package Updateusers;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeleteUser extends DbConnection {
	int uid;

	public DeleteUser(int uid2) {
		uid = uid2;
	}


	
	
	
	public int deleteData() {
		
		DeleteUser delUse = new DeleteUser(uid);
		
		System.out.print("User Id in DELETE : "+ uid+"\n");

		
		String query = "delete from users where udi = ? ";
		PreparedStatement psd;
		
		System.out.println("psd");
		
		try {
			psd= delUse.getConnection().prepareStatement(query);
			psd.setInt(1, uid);
			psd.executeUpdate();
			System.out.println("psd : ; ; "+psd);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return 0;
		
		
	}
}
