package Reservation;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Insert_Res extends DbConnection {
	String name;
	String email;
	String phone;
	String pax_s;
	String from;
	String to;
	
	public Insert_Res(String name2, String email2, String phone2, String num_of_pax, String from2, String t_o) {
		this.name = name2;
		this.email = email2;
		this.phone = phone2;
		this.pax_s = num_of_pax;
		this.from = from2;
		this.to = t_o;
	}
	
	public int insertData() {
		
		try {
			Insert_Res i = new Insert_Res(name, email, phone, pax_s, from, to);
			
			/*query for the insert data*/
			String query = "Insert into user_reservation(Rname,Remail,Rphone,Rpax,Rfrom,Rto) values(?,?,?,?,?,?)";
			
			PreparedStatement dmtp;
			
			/*passing the value to the sql query*/
			dmtp = i.getConnection().prepareStatement(query);
			dmtp.setString(1, name);
			dmtp.setString(2, email);
			dmtp.setString(3, phone);
			dmtp.setString(4, pax_s);
			dmtp.setString(5, from);
			dmtp.setString(6, to);
			
			/*execute the query*/
			int j = dmtp.executeUpdate();
			
			
			return j;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	 

	
}
