package com.bf.mob.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bf.log.connection.JdbcManager;
import com.bf.mob.entity.BrowserEntity;


public class BrowserDao {
		public BrowserEntity getBrowserInfo(String browserType){
			List<String> listDate=new ArrayList<String>();
			List<String> listaddUserCount=new ArrayList<String>();
			List<String> listvisitCount=new ArrayList<String>();
			List<String> listuserCount=new ArrayList<String>();
			List<String> listaddmemberCount=new ArrayList<String>();
			List<String> listactiveCount=new ArrayList<String>();
			List<String> listmemberCount=new ArrayList<String>();
			List<String> listsessionnumberCount=new ArrayList<String>();
			List<String> listsessionlengthDValue=new ArrayList<String>();
			List<String> listaveragesessionlength=new ArrayList<String>();
			List<String> listBrowserPV=new ArrayList<String>();
			BrowserEntity browserEntity=new BrowserEntity();
			Connection con=JdbcManager.getConnection();
			PreparedStatement ps=null;
			ResultSet rs=null;
			
			try {
				ps= con.prepareStatement("select date,adduserCount,visitCount,userCount,addmemberCount,activeCount,"+
						"memberCount,sessionnumberCount,sessionlengthdvalue,"
						+"averagesessionLength,browserPv from pro_bigtablebrowser where browser=?");
				//System.out.println("sql:"+browserType);
				ps.setString(1,browserType);
				
				rs=ps.executeQuery();
				while(rs.next()){
					//System.out.println(rs.getString(1));
					listDate.add(rs.getString(1)) ;
					listaddUserCount.add(rs.getString(2)) ;
					listvisitCount.add(rs.getString(3));
					listuserCount.add(rs.getString(4));
					listaddmemberCount.add(rs.getString(5)) ;
					listactiveCount.add(rs.getString(6)) ;
					listmemberCount.add(rs.getString(7));
					listsessionnumberCount.add(rs.getString(8));
					listsessionlengthDValue.add(rs.getString(9)) ;
					listaveragesessionlength.add(rs.getString(10)) ;
					listBrowserPV.add(rs.getString(11));
				}
				
				browserEntity.setDate(listDate);
				browserEntity.setAdduserCount(listaddUserCount);
				browserEntity.setVisitCount(listvisitCount);
				browserEntity.setUserCount(listuserCount);
				browserEntity.setAddmemberCount(listaddmemberCount);
				browserEntity.setActiveCount(listactiveCount);
				browserEntity.setMemberCount(listmemberCount);
				browserEntity.setSessionnumberCount(listsessionnumberCount);
				browserEntity.setSessionlengthDValue(listsessionlengthDValue);
				browserEntity.setAveragesessionlength(listaveragesessionlength);
				browserEntity.setBrowserPV(listBrowserPV);
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
			
			return browserEntity;
		}
}
