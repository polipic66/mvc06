package fproject.admin.model;

import java.util.Date;

public class AttDto {
	private int idx;
	private String userid;
	private int attidx;
	private Date attdate;
	private String attyn;
	private String regid;
	private Date regdate;
	private String percent;
	
	public AttDto() {
		// TODO Auto-generated constructor stub
		
	}

	public AttDto(int idx, String userid, int attidx, Date attdate,
			String attyn, String regid, Date regdate, String percent) {
		super();
		this.idx = idx;
		this.userid = userid;
		this.attidx = attidx;
		this.attdate = attdate;
		this.attyn = attyn;
		this.regid = regid;
		this.regdate = regdate;
		this.percent = percent;
	}

	public int getIdx() {
		return idx;
	}

	public String getUserid() {
		return userid;
	}

	public int getAttidx() {
		return attidx;
	}

	public Date getAttdate() {
		return attdate;
	}

	public String getAttyn() {
		return attyn;
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

	public void setAttidx(int attidx) {
		this.attidx = attidx;
	}

	public void setAttdate(Date attdate) {
		this.attdate = attdate;
	}

	public void setAttyn(String attyn) {
		this.attyn = attyn;
	}

	public void setRegid(String regid) {
		this.regid = regid;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getPercent() {
		return percent;
	}

	public void setPercent(String percent) {
		this.percent = percent;
	}

	@Override
	public String toString() {
		return "AttDto [idx=" + idx + ", userid=" + userid + ", attidx="
				+ attidx + ", attdate=" + attdate + ", attyn=" + attyn
				+ ", regid=" + regid + ", regdate=" + regdate + ", percent="
				+ percent + "]";
	}
		
}
