package com.bf.mob.entity;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class RegionEntity {
	/*private List<HashMap<String,String>> list=new ArrayList();*/
	private HashMap<String,List<ERegion>> hashRegion;

	public HashMap<String, List<ERegion>> getHashRegion() {
		return hashRegion;
	}

	public void setHashRegion(HashMap<String, List<ERegion>> hashRegion) {
		this.hashRegion = hashRegion;
	}

	
	
		/*private List<String> dates;
		private List<String> region;
		private List<String> regionCount;
		public List<String> getDates() {
			return dates;
		}
		public void setDates(List<String> dates) {
			this.dates = dates;
		}
		public List<String> getRegion() {
			return region;
		}
		public void setRegion(List<String> region) {
			this.region = region;
		}
		public List<String> getRegionCount() {
			return regionCount;
		}
		public void setRegionCount(List<String> regionCount) {
			this.regionCount = regionCount;
		}*/
}
