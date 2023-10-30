package Updateusers;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Update_Users extends DbConnection {
	
	int id;
	String name;
	String password;
	String email;
	String phone;
	
	//createing constructor
	public Update_Users(int i,String name,String pass,String email,String phone) {
		this.id = i;
		this.name = name;
		this.password = pass;
		this.email = email;
		this.phone = phone;
	}
	
	public int Update() {
		
		System.out.print("Update :In class + :"+id+"\n"+name+"\n"+password+"\n"+email+"\n"+phone);
		
		try {
			Update_Users ups = new Update_Users(id, name, password, email, phone);
			//sql quary
			String sql ="UPDATE users SET uname=?,upassword=?,uemail=?,uPnum = ? where udi=?";
			
			PreparedStatement pst;
			
			pst = ups.getConnection().prepareStatement(sql);
			//passing values to the sql quary
			pst.setString(1, name);
			pst.setString(2, password);
			pst.setString(3, email);
			pst.setString(4, phone);
			pst.setInt(5, id);
			
			//execute the quary
			int j = pst.executeUpdate();
			
			if(j>0) {
				System.out.println("Sucess");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return 0;
	}
}
