package com.bf.mob.entity;

import java.util.List;

public class BrowserEntity {
	private List<String> date;
	private List<String> adduserCount;
	private List<String> visitCount;
	private List<String> userCount;
	private List<String> addmemberCount;
	private List<String> activeCount;
	private List<String> memberCount;
	private List<String> sessionnumberCount;//会话个数
	private List<String> sessionlengthDValue;//会话差值
	private List<String> averagesessionlength;//平均会话长度
	private List<String> browserPV;//页面浏览量
	public List<String> getDate() {
		return date;
	}
	public void setDate(List<String> date) {
		this.date = date;
	}
	public List<String> getAdduserCount() {
		return adduserCount;
	}
	public void setAdduserCount(List<String> adduserCount) {
		this.adduserCount = adduserCount;
	}
	public List<String> getVisitCount() {
		return visitCount;
	}
	public void setVisitCount(List<String> visitCount) {
		this.visitCount = visitCount;
	}
	public List<String> getUserCount() {
		return userCount;
	}
	public void setUserCount(List<String> userCount) {
		this.userCount = userCount;
	}
	public List<String> getAddmemberCount() {
		return addmemberCount;
	}
	public void setAddmemberCount(List<String> addmemberCount) {
		this.addmemberCount = addmemberCount;
	}
	public List<String> getActiveCount() {
		return activeCount;
	}
	public void setActiveCount(List<String> activeCount) {
		this.activeCount = activeCount;
	}
	public List<String> getMemberCount() {
		return memberCount;
	}
	public void setMemberCount(List<String> memberCount) {
		this.memberCount = memberCount;
	}
	public List<String> getSessionnumberCount() {
		return sessionnumberCount;
	}
	public void setSessionnumberCount(List<String> sessionnumberCount) {
		this.sessionnumberCount = sessionnumberCount;
	}
	public List<String> getSessionlengthDValue() {
		return sessionlengthDValue;
	}
	public void setSessionlengthDValue(List<String> sessionlengthDValue) {
		this.sessionlengthDValue = sessionlengthDValue;
	}
	public List<String> getAveragesessionlength() {
		return averagesessionlength;
	}
	public void setAveragesessionlength(List<String> averagesessionlength) {
		this.averagesessionlength = averagesessionlength;
	}
	public List<String> getBrowserPV() {
		return browserPV;
	}
	public void setBrowserPV(List<String> browserPV) {
		this.browserPV = browserPV;
	}
	@Override
	public String toString() {
		return "BrowserEntity [date=" + date + ", adduserCount=" + adduserCount + ", visitCount=" + visitCount
				+ ", userCount=" + userCount + ", addmemberCount=" + addmemberCount + ", activeCount=" + activeCount
				+ ", memberCount=" + memberCount + ", sessionnumberCount=" + sessionnumberCount
				+ ", sessionlengthDValue=" + sessionlengthDValue + ", averagesessionlength=" + averagesessionlength
				+ ", browserPV=" + browserPV + "]";
	}
	
}
