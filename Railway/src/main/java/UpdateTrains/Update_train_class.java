package UpdateTrains;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Update_train_class extends DbConnection {
	int Id;
	String name;
	String from;
	String to;
	String price;
	
	//constructor
	public Update_train_class(int i,String name,String from,String to,String price) { //constructor
		this.Id = i;
		this.name = name;
		this.from = from;
		this.to = to;
		this.price = price;
	}
	
	public int UpdateData() {
		
		Update_train_class utc = new Update_train_class(Id, name, from, to, price);
		
		String sql = "UPDATE trains set tname = ?, t_from=? , t_to =? , price = ? where tid = ?";
		
		PreparedStatement pst;
		
		try {
			pst = utc.getConnection().prepareStatement(sql);
			
			pst.setString(1, name);
			pst.setString(2, from);
			pst.setString(3, to);
			pst.setString(4, price);
			pst.setInt(5, Id);
			
			int j = pst.executeUpdate();
			
			if(j>0) {
				System.out.println("Sucessfull");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return 0;
		
	}
}
