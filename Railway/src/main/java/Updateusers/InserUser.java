package Updateusers;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class InserUser extends DbConnection {
	String name;
	String emil;
	String password;
	String Phone;
	
	//creating constructor
	
	public InserUser(String n , String e , String pas , String pho) {
		this.name = n;
		this.emil = e;
		this.password = pas;
		this.Phone = pho;
	}
	
	public int InserData() {
		
		try {
			InserUser ins = new InserUser(name, emil, password, Phone);
			//quary for insert users
			String query = "Insert into users (uname,upassword,uemail,uPnum) values (?,?,?,?)";
			
			PreparedStatement pst;
			
			pst = ins.getConnection().prepareStatement(query);
			
			pst.setString(1, name);
			pst.setString(2, password);
			pst.setString(3, emil);
			pst.setString(4, Phone);
			
			int j = pst.executeUpdate();
			
			return j;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return 0;
	}
}
