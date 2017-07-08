package com.bf.mob.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bf.log.connection.JdbcManager;
import com.bf.mob.entity.RegionPVEntity;

public class RegionPVDao {
		public RegionPVEntity getregionPVEntity(){
			
			Connection con= JdbcManager.getConnection();
			PreparedStatement ps=null;
			ResultSet rs=null;
			RegionPVEntity regionPVEntity=new RegionPVEntity();
			List<String> listDate=new ArrayList<String>();
			List<String> listSessionNum=new ArrayList<String>();
			List<String> listJumpNum=new ArrayList<String>();
			List<String> listRate=new ArrayList<String>();
			
			
			try {
				ps=con.prepareStatement("SELECT date,sessionnumber,sessionjumpnumber,jumpRate FROM pro_region");
				rs=ps.executeQuery();
				while(rs.next()){
					listDate.add(rs.getString(1));
					listSessionNum.add(rs.getString(2));
					listJumpNum.add(rs.getString(3));
					listRate.add(rs.getString(4));
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally{
				try {
					rs.close();
					ps.close();
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
			regionPVEntity.setDates(listDate);
			regionPVEntity.setSessionNumber(listSessionNum);
			regionPVEntity.setSessionJump(listJumpNum);
			regionPVEntity.setJumpRate(listJumpNum);
			return regionPVEntity;
		}
}
