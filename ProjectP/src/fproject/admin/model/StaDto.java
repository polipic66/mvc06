package fproject.admin.model;

import java.util.Date;

public class StaDto {
	private int idx;
	private int alltotal;
	private Date attlastreg;
	private String attlastupdater;
	private int prototal;
	private Date prolastreg;
	private String prolastupdater;
	private int gratotal;
	private Date gralastreg;
	private String gralastupdater;
	private String regid;
	private Date regdate;
	
	public StaDto() {
		// TODO Auto-generated constructor stub
	}

	public StaDto(int idx, int alltotal, Date attlastreg,
			String attlastupdater, int prototal, Date prolastreg,
			String prolastupdater, int gratotal, Date gralastreg,
			String gralastupdater, String regid, Date regdate) {
		super();
		this.idx = idx;
		this.alltotal = alltotal;
		this.attlastreg = attlastreg;
		this.attlastupdater = attlastupdater;
		this.prototal = prototal;
		this.prolastreg = prolastreg;
		this.prolastupdater = prolastupdater;
		this.gratotal = gratotal;
		this.gralastreg = gralastreg;
		this.gralastupdater = gralastupdater;
		this.regid = regid;
		this.regdate = regdate;
	}

	public int getIdx() {
		return idx;
	}

	public int getAlltotal() {
		return alltotal;
	}

	public Date getAttlastreg() {
		return attlastreg;
	}

	public String getAttlastupdater() {
		return attlastupdater;
	}

	public int getPrototal() {
		return prototal;
	}

	public Date getProlastreg() {
		return prolastreg;
	}

	public String getProlastupdater() {
		return prolastupdater;
	}

	public int getGratotal() {
		return gratotal;
	}

	public Date getGralastreg() {
		return gralastreg;
	}

	public String getGralastupdater() {
		return gralastupdater;
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

	public void setAlltotal(int alltotal) {
		this.alltotal = alltotal;
	}

	public void setAttlastreg(Date attlastreg) {
		this.attlastreg = attlastreg;
	}

	public void setAttlastupdater(String attlastupdater) {
		this.attlastupdater = attlastupdater;
	}

	public void setPrototal(int prototal) {
		this.prototal = prototal;
	}

	public void setProlastreg(Date prolastreg) {
		this.prolastreg = prolastreg;
	}

	public void setProlastupdater(String prolastupdater) {
		this.prolastupdater = prolastupdater;
	}

	public void setGratotal(int gratotal) {
		this.gratotal = gratotal;
	}

	public void setGralastreg(Date gralastreg) {
		this.gralastreg = gralastreg;
	}

	public void setGralastupdater(String gralastupdater) {
		this.gralastupdater = gralastupdater;
	}

	public void setRegid(String regid) {
		this.regid = regid;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "StaDto [idx=" + idx + ", alltotal=" + alltotal
				+ ", attlastreg=" + attlastreg + ", attlastupdater="
				+ attlastupdater + ", prototal=" + prototal + ", prolastreg="
				+ prolastreg + ", prolastupdater=" + prolastupdater
				+ ", gratotal=" + gratotal + ", gralastreg=" + gralastreg
				+ ", gralastupdater=" + gralastupdater + ", regid=" + regid
				+ ", regdate=" + regdate + "]";
	}

}
