package com.bf.mob.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.bf.log.connection.JdbcManager;
import com.bf.mob.entity.ERegion;
import com.bf.mob.entity.RegionEntity;


public class RegionDao {
		public RegionEntity getRegionInfo(){
		
			
		Connection con=	JdbcManager.getConnection();
		
		RegionEntity regionEntity =new RegionEntity();
		
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
		ps=	con.prepareStatement("SELECT date,region,regioncount FROM pro_region");
		rs= ps.executeQuery();
		HashMap<String, List<ERegion>> hash=new HashMap<String, List<ERegion>>();
		
			while(rs.next()){
				ERegion eRegion=new ERegion();
				eRegion.setName( rs.getString(2).split(" ")[1].substring(0, 2));
				eRegion.setValue(rs.getString(3));
				
				List<ERegion> list =new ArrayList<ERegion>();
				
				list=(List<ERegion>) (hash.get(rs.getString(1))==null?list:hash.get(rs.getString(1)));
				list.add(eRegion);
				hash.put(rs.getString(1), list);
				regionEntity.setHashRegion(hash);
				/*HashMap hash=new HashMap();
				hash.put(rs.getString(2),rs.getString(3));
				
				has.put(rs.getString(1), hash);*/
				/*String value="name:"+ rs.getString(2).split(" ")[1].substring(0, 2)+",value:"+rs.getString(3)+"";
				
				hash.put(rs.getString(1), new ArrayList());
				String value="name:"+ rs.getString(2).split(" ")[1].substring(0, 2)+",value:"+rs.getString(3);
				System.out.println(value);
				(hash.get(rs.getString(1))==null?new ArrayList():hash.get(rs.getString(1))).add(value);*/
				/*List list=new ArrayList();
				list.add(value);
				hash.put(rs.getString(1), list);
				System.out.println(hash.get(rs.getString(1)));*/
				//regionEntity.setHashRegion(hash);
			}
		
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
			
			return regionEntity;
		}
}
