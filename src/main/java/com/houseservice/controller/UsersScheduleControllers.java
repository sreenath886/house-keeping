package com.houseservice.controller;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.houseservice.service.DBType;
import com.houseservice.service.DBUtil;

/**
 * Class gives available time list
 */
@Controller
@RequestMapping("api/v1/")
public class UsersScheduleControllers {

  @RequestMapping(value="empschedule",method = RequestMethod.GET)
  @ResponseBody
 public Object getSchedule(String hk_date,String hk_zone){


    	//vj
    	Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs= null;
		//System.out.println("reached vj2");
		
		try {
			//System.out.println("reached vj2.5");
             conn = DBUtil.getConnection(DBType.MYSQLDB);
			 String sql = "select A.hk_starttime,CASE WHEN B.AVAILABLE ='0' THEN '0' ELSE '1' END AS AVAILABLE FROM cleanu.employeeTimePool A "
			 		+ "LEFT JOIN (SELECT DISTINCT hk_starttime,0 AS AVAILABLE FROM  cleanu.employeeTimePool B "
			 		+ "WHERE B.hk_zone=? and B.hk_date=? AND B.hk_callid = '0') B ON A.hk_starttime = B.hk_starttime where A.hk_zone=? and A.hk_date=? group by A.hk_starttime";
			 pstmt = conn.prepareStatement(sql,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
			 pstmt.setString(1, hk_zone);
			 pstmt.setString(2, hk_date);
			 pstmt.setString(3, hk_zone);
			 pstmt.setString(4, hk_date);
			 
			 rs = pstmt.executeQuery();
             
             JSONArray jsonArray = new JSONArray();
				while(rs.next()){
					JSONObject json = new JSONObject();
					json.put("hk_starttime",rs.getInt("hk_starttime"));
					json.put("hk_available",rs.getInt("AVAILABLE"));
					jsonArray.add(json);

				}

				return jsonArray;
			 
		    }
		 catch (SQLException ex) {
			//e.printStackTrace();
			DBUtil.showErrorMessages(ex);
	      	JSONObject json = new JSONObject();
	      	json.put("response", "1"); //1 is error
	      	System.out.println(ex + " errrror");
	        return (json).toString();
		}
		
  	  
    }


/* update user selected time, in time pool */

  @RequestMapping(value="updatetimepool",method = RequestMethod.POST)
  @ResponseBody
 public Object updateSchedule(String hk_date,int hk_starttime,String hk_zone,String hk_callid,int flag){

    	//vj
    	Connection conn = null;
		PreparedStatement pstmt = null;
		int rs;
		//System.out.println("reached vj2");
		
		try {
			//System.out.println("reached vj2.5");
             conn = DBUtil.getConnection(DBType.MYSQLDB);
			 String sql = "Update employeeTimePool as etp inner join (select min(hk_pid) as id FROM cleanu.employeeTimePool "
			 		+ "WHERE hk_date =? AND hk_starttime=? AND hk_zone like ? AND hk_callid = '0') as A on etp.hk_pid = A.id "
			 		+ "set etp.hk_callid = ?,etp.flag=? ";
			 pstmt = conn.prepareStatement(sql,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
			 pstmt.setString(1, hk_date);
			 pstmt.setInt(2, hk_starttime);
			 pstmt.setString(3, hk_zone + "%");
			 pstmt.setString(4, hk_callid);
			 pstmt.setInt(5, flag);
			 
			 rs = pstmt.executeUpdate();
 
		      	JSONObject json = new JSONObject();
		      	json.put("response", "0"); //1 is error
		        return (json).toString();
		        
		    }
		 catch (SQLException ex) {
			//e.printStackTrace();
			DBUtil.showErrorMessages(ex);
	      	JSONObject json = new JSONObject();
	      	json.put("response", "1"); //1 is error
	      	System.out.println(ex + " errrror");
	        return (json).toString();
		}
		
  	  
    }

  /* update user selected time, in time pool */



  /* reset user selected time, in time pool */ 

  @RequestMapping(value="resettimepool",method = RequestMethod.POST)
  @ResponseBody
 public Object resetSchedule(int hk_pid){

    	//vj
    	Connection conn = null;
		PreparedStatement pstmt = null;
		int rs;
		//System.out.println("reached vj2");
		
		try {
			//System.out.println("reached vj2.5");
             conn = DBUtil.getConnection(DBType.MYSQLDB);
			 String sql = "Update employeeTimePool as etp set etp.hk_callid = '0' where etp.hk_pid= ? "
			 		+ " ";
			 pstmt = conn.prepareStatement(sql,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
			 pstmt.setInt(1, hk_pid);
			 
			 rs = pstmt.executeUpdate();
 
		      	JSONObject json = new JSONObject();
		      	json.put("response", "0"); //1 is error
		        return (json).toString();
		        
		    }
		 catch (SQLException ex) {
			//e.printStackTrace();
			DBUtil.showErrorMessages(ex);
	      	JSONObject json = new JSONObject();
	      	json.put("response", "1"); //1 is error
	      	System.out.println(ex + " errrror");
	        return (json).toString();
		}
		
  	  
    }
  /* reset user selected time, in time pool */













}

  
  // Wire the UserDao used inside this controller.
// @Autowired












