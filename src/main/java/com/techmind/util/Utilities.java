package com.techmind.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class Utilities {
	
	public static Connection getDbConnection() {                                 
        
		Connection con = null;        	                                                                                                                 	 		               
		try{ 
			Class.forName("org.postgresql.Driver").newInstance();    
			con = DriverManager.getConnection("jdbc:postgresql://202.51.1.100:5432/nmbremit","postgres","jTvcg5CS" ); //connecting from public ip to ofc. 
			System.out.println("con "+con);
		} catch (Exception err){ 
			System.out.println("wwwwwwwwww:"+err);
		}         
		return con;	           	   	                         			        		   
	}  
	
	              

}
