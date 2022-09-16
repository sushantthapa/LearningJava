package com.techmind.dropdown;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.techmind.util.Utilities;

public class DropDown {
	
	
	public static List getDropDownList()
	{
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		Map resultMap = null;
		List result = null;
		String sql = "";
		System.out.println("Testing 11111111111111111111111111!!!");
		try {
			con = Utilities.getDbConnection();
			sql ="select name from users order by name ASC;";
			stmt = con.prepareStatement(sql);
			
			rs = stmt.executeQuery();
			System.out.println("Testing 444444444444444444444!!!");
			result = new ArrayList();
			while(rs.next())
			{
				
				
				result.add(rs.getString(1));
				
				
			}
			
			
			
		} catch (SQLException errSql) {
			System.out.println("Erooooooooooooooooooooor: "+ errSql);
			
			// log.error("Unable to check if branch exists");
		} catch (Exception errCon) {
			System.out.println("EEEEEEEEEEEEEEEERRRRRRrrrrr:"+ errCon);
			
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (stmt != null)
					stmt.close();
				if (con != null)
					con.close();
			} catch (SQLException errSql) {
			}
		}
		
		return result;

		
		
	}
	

}
