package com.bf.mob.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bf.log.connection.JdbcManager;
import com.bf.mob.entity.FlowEntity;

public class FlowDao {
	public FlowEntity getFlowList() {
		List<String> phlist=new ArrayList<String>();
		List<String> uplist=new ArrayList<String>();
		List<String> downlist=new ArrayList<String>();
		List<String> totallist=new ArrayList<String>();
		FlowEntity flowEntity=new FlowEntity();
		Connection con=JdbcManager.getConnection();
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
		 ps=con.prepareStatement("select phonenumber,phoneupflow,phonedownflow,phonetotalflow from mobile_phone_flow order by phonetotalflow  limit 0,10");
		rs= ps.executeQuery();
		while(rs.next()){
			String phNum=rs.getString(1);
			String phUpFlow=rs.getString(2);
			String phDownFlow=rs.getString(3);
			String phTotalFlow=rs.getString(4);
			phlist.add(phNum);
			uplist.add(phUpFlow);
			downlist.add(phDownFlow);
			totallist.add(phTotalFlow);
		}
		flowEntity.setBrand(phlist);
		flowEntity.setListData(uplist);
		flowEntity.setListData1(downlist);
		flowEntity.setListData2(totallist);
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
		return flowEntity;
	}

}
