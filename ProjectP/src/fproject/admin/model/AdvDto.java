package fproject.admin.model;

import java.util.Date;

public class AdvDto {
	private int idx;
	private String regid;
	private String regname;
	private String uploadpath;
	private String filename;
	private String fullname;
	private String permit;
	private Date revstart;
	private Date revend;
	private Date regdate;
	
	public AdvDto() {
		// TODO Auto-generated constructor stub
	}

	public AdvDto(int idx, String regid, String regname, String uploadpath,
			String filename, String fullname, String permit, Date revstart,
			Date revend, Date regdate) {
		super();
		this.idx = idx;
		this.regid = regid;
		this.regname = regname;
		this.uploadpath = uploadpath;
		this.filename = filename;
		this.fullname = fullname;
		this.permit = permit;
		this.revstart = revstart;
		this.revend = revend;
		this.regdate = regdate;
	}

	public int getIdx() {
		return idx;
	}

	public String getRegid() {
		return regid;
	}

	public String getRegname() {
		return regname;
	}

	public String getUploadpath() {
		return uploadpath;
	}

	public String getFilename() {
		return filename;
	}

	public String getFullname() {
		return fullname;
	}

	public String getPermit() {
		return permit;
	}

	public Date getRevstart() {
		return revstart;
	}

	public Date getRevend() {
		return revend;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public void setRegid(String regid) {
		this.regid = regid;
	}

	public void setRegname(String regname) {
		this.regname = regname;
	}

	public void setUploadpath(String uploadpath) {
		this.uploadpath = uploadpath;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public void setPermit(String permit) {
		this.permit = permit;
	}

	public void setRevstart(Date revstart) {
		this.revstart = revstart;
	}

	public void setRevend(Date revend) {
		this.revend = revend;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "AdvDto [idx=" + idx + ", regid=" + regid + ", regname="
				+ regname + ", uploadpath=" + uploadpath + ", filename="
				+ filename + ", fullname=" + fullname + ", permit=" + permit
				+ ", revstart=" + revstart + ", revend=" + revend
				+ ", regdate=" + regdate + "]";
	}
	
}
