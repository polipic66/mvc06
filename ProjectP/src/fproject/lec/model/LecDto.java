package fproject.lec.model;

import java.util.Date;

public class LecDto {			//	LectureDto
	private int Lecid;			//	Lecture ID
	private String teachid;		//	Teacher ID
	private int currid;			//	Curriculum ID
	private String lectitle;	//	Lecture Title
	private String leccategory;	//	Lecture Category
	private String lecopen;		//	Lecture Open/Not Open
	private int lecviewcnt;		//	Lecture View Count
	private String leccontent;	//	Lecture Content
	private String orifilename;	//	Original File Name
	private String sysfilename;	//	Renamed System File Name
	private Date lecdate;		//	Lecture Added Date

	public LecDto() {
	}
	
	public LecDto(int lecid, String teachid, int currid, String lectitle,
			String leccategory, String lecopen, int lecviewcnt,
			String leccontent, String orifilename, String sysfilename,
			Date lecdate) {
		super();
		this.Lecid = lecid;
		this.teachid = teachid;
		this.currid = currid;
		this.lectitle = lectitle;
		this.leccategory = leccategory;
		this.lecopen = lecopen;
		this.lecviewcnt = lecviewcnt;
		this.leccontent = leccontent;
		this.orifilename = orifilename;
		this.sysfilename = sysfilename;
		this.lecdate = lecdate;
	}
	
	public int getLecid() {
		return Lecid;
	}
	public void setLecid(int lecid) {
		Lecid = lecid;
	}
	public String getTeachid() {
		return teachid;
	}
	public void setTeachid(String teachid) {
		this.teachid = teachid;
	}
	public int getCurrid() {
		return currid;
	}
	public void setCurrid(int currid) {
		this.currid = currid;
	}
	public String getLectitle() {
		return lectitle;
	}
	public void setLectitle(String lectitle) {
		this.lectitle = lectitle;
	}
	public String getLeccategory() {
		return leccategory;
	}
	public void setLeccategory(String leccategory) {
		this.leccategory = leccategory;
	}
	public String getLecopen() {
		return lecopen;
	}
	public void setLecopen(String lecopen) {
		this.lecopen = lecopen;
	}
	public int getLecviewcnt() {
		return lecviewcnt;
	}
	public void setLecviewcnt(int lecviewcnt) {
		this.lecviewcnt = lecviewcnt;
	}
	public String getLeccontent() {
		return leccontent;
	}
	public void setLeccontent(String leccontent) {
		this.leccontent = leccontent;
	}
	public String getOrifilename() {
		return orifilename;
	}
	public void setOrifilename(String orifilename) {
		this.orifilename = orifilename;
	}
	public String getSysfilename() {
		return sysfilename;
	}
	public void setSysfilename(String sysfilename) {
		this.sysfilename = sysfilename;
	}
	public Date getLecdate() {
		return lecdate;
	}
	public void setLecdate(Date lecdate) {
		this.lecdate = lecdate;
	}
	
	@Override
	public String toString() {
		return "LecDto [Lecid=" + Lecid + ", teachid=" + teachid + ", currid="
				+ currid + ", lectitle=" + lectitle + ", leccategory="
				+ leccategory + ", lecopen=" + lecopen + ", lecviewcnt="
				+ lecviewcnt + ", leccontent=" + leccontent + ", orifilename="
				+ orifilename + ", sysfilename=" + sysfilename + ", lecdate="
				+ lecdate + "]";
	}
}