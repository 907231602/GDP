package com.bf.mob.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bf.log.connection.JdbcManager;
import com.bf.mob.entity.UserEntity;

public class UserDao {
		public UserEntity getUserInfo(){
			List<String> listDate=new ArrayList<String>();
			List<String> listaddUserCount=new ArrayList<String>();
			List<String> listvisitCount=new ArrayList<String>();
			List<String> listuserCount=new ArrayList<String>();
			List<String> listaddmemberCount=new ArrayList<String>();
			List<String> listactiveCount=new ArrayList<String>();
			List<String> listmemberCount=new ArrayList<String>();
			List<String> listsessionnumberCount=new ArrayList<String>();
			List<String> listsessionlengthCount=new ArrayList<String>();
			List<String> listaveragesessionlength=new ArrayList<String>();
			UserEntity userEntity=new UserEntity();
			Connection con=JdbcManager.getConnection();
			PreparedStatement ps=null;
			ResultSet rs=null;
			
			try {
				ps= con.prepareStatement("select dates,adduserCount,visitCount,userCount,addmemberCount,activeCount,memberCount,sessionnumberCount,sessionlengthCount,averagesessionlength from pro_bigtable");
				
				rs=ps.executeQuery();
				while(rs.next()){
					listDate.add(rs.getString(1)) ;
					listaddUserCount.add(rs.getString(2)) ;
					listvisitCount.add(rs.getString(3));
					listuserCount.add(rs.getString(4));
					listaddmemberCount.add(rs.getString(5)) ;
					listactiveCount.add(rs.getString(6)) ;
					listmemberCount.add(rs.getString(7));
					listsessionnumberCount.add(rs.getString(8));
					listsessionlengthCount.add(rs.getString(9)) ;
					listaveragesessionlength.add(rs.getString(10)) ;
				
					//listuserCount.add(rs.getString(4));
				}
				userEntity.setDate(listDate);
				userEntity.setAdduserCount(listaddUserCount);
				userEntity.setVisitCount(listvisitCount);
				userEntity.setUserCount(listuserCount);
				userEntity.setAddmemberCount(listaddmemberCount);
				userEntity.setActiveCount(listactiveCount);
				userEntity.setMemberCount(listmemberCount);
				userEntity.setSessionnumberCount(listsessionnumberCount);
				userEntity.setSessionlengthCount(listsessionlengthCount);
				userEntity.setAveragesessionlength(listaveragesessionlength);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				try {
					rs.close();
					ps.close();
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			//System.out.println(userEntity);
			
			return userEntity;
		}
}
