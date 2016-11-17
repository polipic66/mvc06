package fproject.admin.model;

import java.util.Date;

public class ProDto {
	private int idx;
	private String userid;
	private int lecid;
	private int currid;
	private int proidx;
	private String currtitle;
	private int totalread;
	private int leccount;
	private String regid;
	private Date regdate;
	
	public ProDto() {
		// TODO Auto-generated constructor stub
	}

	public ProDto(int idx, String userid, int lecid, int currid, int proidx,
			String currtitle, int totalread, int leccount, String regid,
			Date regdate) {
		super();
		this.idx = idx;
		this.userid = userid;
		this.lecid = lecid;
		this.currid = currid;
		this.proidx = proidx;
		this.currtitle = currtitle;
		this.totalread = totalread;
		this.leccount = leccount;
		this.regid = regid;
		this.regdate = regdate;
	}

	public int getIdx() {
		return idx;
	}

	public String getUserid() {
		return userid;
	}

	public int getLecid() {
		return lecid;
	}

	public int getCurrid() {
		return currid;
	}

	public int getProidx() {
		return proidx;
	}

	public String getCurrtitle() {
		return currtitle;
	}

	public int getTotalread() {
		return totalread;
	}

	public int getLeccount() {
		return leccount;
	}

	public String getRegid() {
		return regid;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public void setLecid(int lecid) {
		this.lecid = lecid;
	}

	public void setCurrid(int currid) {
		this.currid = currid;
	}

	public void setProidx(int proidx) {
		this.proidx = proidx;
	}

	public void setCurrtitle(String currtitle) {
		this.currtitle = currtitle;
	}

	public void setTotalread(int totalread) {
		this.totalread = totalread;
	}

	public void setLeccount(int leccount) {
		this.leccount = leccount;
	}

	public void setRegid(String regid) {
		this.regid = regid;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "ProDto [idx=" + idx + ", userid=" + userid + ", lecid=" + lecid
				+ ", currid=" + currid + ", proidx=" + proidx + ", currtitle="
				+ currtitle + ", totalread=" + totalread + ", leccount="
				+ leccount + ", regid=" + regid + ", regdate=" + regdate + "]";
	}

}
