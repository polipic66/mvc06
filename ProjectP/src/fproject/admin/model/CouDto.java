package fproject.admin.model;

import java.util.Date;

public class CouDto {
	private int idx;
	private String aid;
	private String wid;
	private String aname;
	private String wname;
	private String wemail;
	private String wtel;
	private String wtitle;
	private String wcontent;
	private Date wregdate;
	private String atitle;
	private Date aregdate;
	private String state;
	private String acontent;
	
	public CouDto() {
		// TODO Auto-generated constructor stub
	}

	public CouDto(int idx, String aid, String wid, String aname, String wname,
			String wemail, String wtel, String wtitle, String wcontent,
			Date wregdate, String atitle, Date aregdate, String state,
			String acontent) {
		super();
		this.idx = idx;
		this.aid = aid;
		this.wid = wid;
		this.aname = aname;
		this.wname = wname;
		this.wemail = wemail;
		this.wtel = wtel;
		this.wtitle = wtitle;
		this.wcontent = wcontent;
		this.wregdate = wregdate;
		this.atitle = atitle;
		this.aregdate = aregdate;
		this.state = state;
		this.acontent = acontent;
	}

	public int getIdx() {
		return idx;
	}

	public String getAid() {
		return aid;
	}

	public String getWid() {
		return wid;
	}

	public String getAname() {
		return aname;
	}

	public String getWname() {
		return wname;
	}

	public String getWemail() {
		return wemail;
	}

	public String getWtel() {
		return wtel;
	}

	public String getWtitle() {
		return wtitle;
	}

	public String getWcontent() {
		return wcontent;
	}

	public Date getWregdate() {
		return wregdate;
	}

	public String getAtitle() {
		return atitle;
	}

	public Date getAregdate() {
		return aregdate;
	}

	public String getState() {
		return state;
	}

	public String getAcontent() {
		return acontent;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public void setAid(String aid) {
		this.aid = aid;
	}

	public void setWid(String wid) {
		this.wid = wid;
	}

	public void setAname(String aname) {
		this.aname = aname;
	}

	public void setWname(String wname) {
		this.wname = wname;
	}

	public void setWemail(String wemail) {
		this.wemail = wemail;
	}

	public void setWtel(String wtel) {
		this.wtel = wtel;
	}

	public void setWtitle(String wtitle) {
		this.wtitle = wtitle;
	}

	public void setWcontent(String wcontent) {
		this.wcontent = wcontent;
	}

	public void setWregdate(Date wregdate) {
		this.wregdate = wregdate;
	}

	public void setAtitle(String atitle) {
		this.atitle = atitle;
	}

	public void setAregdate(Date aregdate) {
		this.aregdate = aregdate;
	}

	public void setState(String state) {
		this.state = state;
	}

	public void setAcontent(String acontent) {
		this.acontent = acontent;
	}

	@Override
	public String toString() {
		return "CouDto [idx=" + idx + ", aid=" + aid + ", wid=" + wid
				+ ", aname=" + aname + ", wname=" + wname + ", wemail="
				+ wemail + ", wtel=" + wtel + ", wtitle=" + wtitle
				+ ", wcontent=" + wcontent + ", wregdate=" + wregdate
				+ ", atitle=" + atitle + ", aregdate=" + aregdate + ", state="
				+ state + ", acontent=" + acontent + "]";
	}

}
