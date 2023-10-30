//class for insert data
package UpdateTrains;

import java.sql.PreparedStatement;
import java.sql.SQLException;



public class InsertData extends DbConnection  { //inheitance used   
	
	String name_t;
	String t_fromn;
	String t_to;
	String t_price;
	
	//constructor
	public InsertData(String tname , String tferom , String t_to , String tprice) {
		this.name_t = tname;
		this.t_fromn = tferom;
		this.t_to = t_to;
		this.t_price = tprice;
	}
	
	public int insertTrains () {
		
		try {
			InsertData i = new InsertData(name_t, t_fromn, t_to, t_price);
			
			String query = "Insert into trains(tname,t_from,t_to,price) values(?,?,?,?)";
			
			PreparedStatement dmtp;
			
			dmtp = i.getConnection().prepareStatement(query);
			
			dmtp.setString(1, name_t);
			dmtp.setString(2, t_fromn);
			dmtp.setString(3, t_to);
			dmtp.setString(4, t_price);
			
			 dmtp.executeUpdate();

			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return 0;
	}
	
	
}
