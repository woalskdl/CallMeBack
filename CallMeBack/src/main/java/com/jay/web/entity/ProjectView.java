package com.jay.web.entity;

import java.util.Date;

public class ProjectView {
	
	private int pid;
	private String regId;
	private Date regDate;
	private Date deadline;
	private String div;
	private String producerId;
	private int commentCnt;
	private Date recentUp;
	
	public ProjectView(int pid, String regId, Date regDate, Date deadline, String div, String producerId,
			int commentCnt, Date recentUp) {
		super();
		this.pid = pid;
		this.regId = regId;
		this.regDate = regDate;
		this.deadline = deadline;
		this.div = div;
		this.producerId = producerId;
		this.commentCnt = commentCnt;
		this.recentUp = recentUp;
	}
	
	public ProjectView() {
		super();
	}

	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getRegId() {
		return regId;
	}
	public void setRegId(String regId) {
		this.regId = regId;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Date getDeadline() {
		return deadline;
	}
	public void setDeadline(Date deadline) {
		this.deadline = deadline;
	}
	public String getDiv() {
		return div;
	}
	public void setDiv(String div) {
		this.div = div;
	}
	public String getProducerId() {
		return producerId;
	}
	public void setProducerId(String producerId) {
		this.producerId = producerId;
	}
	public int getCommentCnt() {
		return commentCnt;
	}
	public void setCommentCnt(int commentCnt) {
		this.commentCnt = commentCnt;
	}
	public Date getRecentUp() {
		return recentUp;
	}
	public void setRecentUp(Date recentUp) {
		this.recentUp = recentUp;
	}
	
	@Override
	public String toString() {
		return "ProjectView [pid=" + pid + ", regId=" + regId + ", regDate=" + regDate + ", deadline=" + deadline
				+ ", div=" + div + ", producerId=" + producerId + ", commentCnt=" + commentCnt + ", recentUp="
				+ recentUp + "]";
	}
	
}
