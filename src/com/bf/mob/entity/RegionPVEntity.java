package com.bf.mob.entity;

import java.util.List;

public class RegionPVEntity {
		private List<String> dates;
		private List<String> sessionNumber;
		private List<String> sessionJump;
		private List<String> jumpRate;
		public List<String> getDates() {
			return dates;
		}
		
		public void setDates(List<String> dates) {
			this.dates = dates;
		}
		public List<String> getSessionNumber() {
			return sessionNumber;
		}
		public void setSessionNumber(List<String> sessionNumber) {
			this.sessionNumber = sessionNumber;
		}
		public List<String> getSessionJump() {
			return sessionJump;
		}
		public void setSessionJump(List<String> sessionJump) {
			this.sessionJump = sessionJump;
		}
		public List<String> getJumpRate() {
			return jumpRate;
		}
		public void setJumpRate(List<String> jumpRate) {
			this.jumpRate = jumpRate;
		}
}
