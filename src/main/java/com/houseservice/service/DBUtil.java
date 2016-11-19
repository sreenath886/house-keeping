package com.houseservice.service;

import java.sql.*;

public class DBUtil {
private static final String oraUser ="Event";
private static final String oraPwd ="Mju89yhn$#";
private static final String mysqlUser ="root";
private static final String mysqlPwd ="root";
private static final String oraCS = "jdbc:oracle:thin:@//dvrdfappdb001uk.dev.global.tesco.org:1521/DHORDF01.dev.global.tesco.org";
private static final String mysqlCS ="jdbc:mysql://localhost:3306/cleanu";


public static Connection getConnection(DBType dbType) throws SQLException{
       switch(dbType){
             case ORADB:
	              return DriverManager.getConnection(oraCS,oraUser,oraPwd);
             case MYSQLDB:
            	  return DriverManager.getConnection(mysqlCS,mysqlUser,mysqlPwd);
             default:
            	  return null;
     }
       
}


public static void showErrorMessages(SQLException e){
	System.err.println("Error :" + e.getErrorCode());
	System.err.println("Error :" + e.getMessage());
}	
}
