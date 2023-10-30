package Reservation;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Curr_res_dao {
	public ArrayList<My_current_res> selectAll(String name) {
		String names = name;
		
		ArrayList<My_current_res> res_all = new ArrayList<>();
		
		DbConnection new_con = new DbConnection();
		
		
		
		System.out.print("=============*********============="+names);
		
		
		try {
			/*sql query for the select users*/
			String sql = "select * from user_reservation where Rname = ?";
			PreparedStatement stmt;
			
			stmt = new_con.getConnection().prepareStatement(sql);
			stmt.setString(1, names);
			ResultSet res = stmt.executeQuery();
			
			
			
			
			
			while(res.next()) {
				
				
				
				My_current_res res_ve = new My_current_res();
				
				res_ve.setRid(res.getInt(1));
				res_ve.setRname(res.getString(2));
				res_ve.setRemail(res.getString(3));
				res_ve.setRphone(res.getString(4));
				res_ve.setRpax(res.getString(5));
				res_ve.setRfrom(res.getString(6));
				res_ve.setRto(res.getString(7));
				
				
				res_all.add(res_ve);
				
				
			
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return res_all;
		
	}
}
