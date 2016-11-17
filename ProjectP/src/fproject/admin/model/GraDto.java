package fproject.admin.model;

import java.util.Date;

public class GraDto {
	private int idx;
	private String userid;
	private int currid;
	private int graidx;
	private String stuid;
	private String currtitle;
	private int score;
	private int rank;
	private String regid;
	private Date regdate;
	
	public GraDto() {
		// TODO Auto-generated constructor stub
	}

	public GraDto(int idx, String userid, int currid, int graidx, String stuid,
			String currtitle, int score, int rank, String regid, Date regdate) {
		super();
		this.idx = idx;
		this.userid = userid;
		this.currid = currid;
		this.graidx = graidx;
		this.stuid = stuid;
		this.currtitle = currtitle;
		this.score = score;
		this.rank = rank;
		this.regid = regid;
		this.regdate = regdate;
	}

	public int getIdx() {
		return idx;
	}

	public String getUserid() {
		return userid;
	}

	public int getCurrid() {
		return currid;
	}

	public int getGraidx() {
		return graidx;
	}

	public String getStuid() {
		return stuid;
	}

	public String getCurrtitle() {
		return currtitle;
	}

	public int getScore() {
		return score;
	}

	public int getRank() {
		return rank;
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

	public void setCurrid(int currid) {
		this.currid = currid;
	}

	public void setGraidx(int graidx) {
		this.graidx = graidx;
	}

	public void setStuid(String stuid) {
		this.stuid = stuid;
	}

	public void setCurrtitle(String currtitle) {
		this.currtitle = currtitle;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}

	public void setRegid(String regid) {
		this.regid = regid;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "GraDto [idx=" + idx + ", userid=" + userid + ", currid="
				+ currid + ", graidx=" + graidx + ", stuid=" + stuid
				+ ", currtitle=" + currtitle + ", score=" + score + ", rank="
				+ rank + ", regid=" + regid + ", regdate=" + regdate + "]";
	}

}
