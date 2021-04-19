package com.jay.web.entity;

public class ProjectCnt {
	
	private int newCnt;
	private int deadlineCnt;
	private int myCnt;
	private int totalCnt;
	private int todayCnt;
	private int imgCnt;
	private int videoCnt;
	
	public ProjectCnt(int newCnt, int deadlineCnt, int myCnt, int totalCnt, int todayCnt, int imgCnt,
			int videoCnt) {
		super();
		this.newCnt = newCnt;
		this.deadlineCnt = deadlineCnt;
		this.myCnt = myCnt;
		this.totalCnt = totalCnt;
		this.todayCnt = todayCnt;
		this.imgCnt = imgCnt;
		this.videoCnt = videoCnt;
	}

	public ProjectCnt() {
		super();
	}
	
	public int getNewCnt() {
		return newCnt;
	}
	public void setNewCnt(int newCnt) {
		this.newCnt = newCnt;
	}
	public int getDeadlineCnt() {
		return deadlineCnt;
	}
	public void setDeadlineCnt(int deadlineCnt) {
		this.deadlineCnt = deadlineCnt;
	}
	public int getMyCnt() {
		return myCnt;
	}
	public void setMyCnt(int myCnt) {
		this.myCnt = myCnt;
	}
	public int getTotalCnt() {
		return totalCnt;
	}
	public void setTotalCnt(int totalCnt) {
		this.totalCnt = totalCnt;
	}
	public int getTodayCnt() {
		return todayCnt;
	}
	public void setTodayCnt(int todayCnt) {
		this.todayCnt = todayCnt;
	}
	public int getImgCnt() {
		return imgCnt;
	}
	public void setImgCnt(int imgCnt) {
		this.imgCnt = imgCnt;
	}
	public int getVideoCnt() {
		return videoCnt;
	}
	public void setVideoCnt(int videoCnt) {
		this.videoCnt = videoCnt;
	}

	@Override
	public String toString() {
		return "ProjectCnt [newCnt=" + newCnt + ", deadlineCnt=" + deadlineCnt + ", myCnt=" + myCnt
				+ ", totalCnt=" + totalCnt + ", todayCnt=" + todayCnt + ", imgCnt=" + imgCnt + ", videoCnt=" + videoCnt
				+ "]";
	}
}
