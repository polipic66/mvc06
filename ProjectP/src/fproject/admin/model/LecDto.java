package fproject.admin.model;

import java.util.Date;

public class LecDto {
   private int lecid;
   private String userid;
   private String name;
   private int currid;
   private String currtitle;
   private String title;
   private String category;
   private String open;
   private int count;
   private String content;
   private String orifilename;
   private String refilename;
   private Date lecdate;
   
   public LecDto() {
	   super();
	   // TODO Auto-generated constructor stub
   }

	public LecDto(int lecid, String userid, String name, int currid,
			String currtitle, String title, String category, String open,
			int count, String content, String orifilename, String refilename,
			Date lecdate) {
		super();
		this.lecid = lecid;
		this.userid = userid;
		this.name = name;
		this.currid = currid;
		this.currtitle = currtitle;
		this.title = title;
		this.category = category;
		this.open = open;
		this.count = count;
		this.content = content;
		this.orifilename = orifilename;
		this.refilename = refilename;
		this.lecdate = lecdate;
	}

	public int getLecid() {
		return lecid;
	}

	public void setLecid(int lecid) {
		this.lecid = lecid;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getCurrid() {
		return currid;
	}

	public void setCurrid(int currid) {
		this.currid = currid;
	}

	public String getCurrtitle() {
		return currtitle;
	}

	public void setCurrtitle(String currtitle) {
		this.currtitle = currtitle;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getOpen() {
		return open;
	}

	public void setOpen(String open) {
		this.open = open;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getOrifilename() {
		return orifilename;
	}

	public void setOrifilename(String orifilename) {
		this.orifilename = orifilename;
	}

	public String getRefilename() {
		return refilename;
	}

	public void setRefilename(String refilename) {
		this.refilename = refilename;
	}

	public Date getLecdate() {
		return lecdate;
	}

	public void setLecdate(Date lecdate) {
		this.lecdate = lecdate;
	}

	@Override
	public String toString() {
		return "LecDto [lecid=" + lecid + ", userid=" + userid + ", name="
				+ name + ", currid=" + currid + ", currtitle=" + currtitle
				+ ", title=" + title + ", category=" + category + ", open="
				+ open + ", count=" + count + ", content=" + content
				+ ", orifilename=" + orifilename + ", refilename=" + refilename
				+ ", lecdate=" + lecdate + "]";
	}
	
}
