package com.child.protect;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.child.dao.ConnectionManager;

public class GetGcmId {
	static String gcm_id = null;
	static Connection conn = ConnectionManager.getConnection();
	
	public static String getGcm(String email) {
		ArrayList<String> list = new ArrayList<String>();
		try {
			Statement st = conn.createStatement();
			ResultSet rt = st.executeQuery("SELECT * FROM usertable WHERE email='"+email+"'");
			if(rt != null){
				
				while(rt .next()){
					list.add(rt.getString("gcm_id"));
				}
				System.out.println("Location...."+list.toString());
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return gcm_id; 
	}

}
