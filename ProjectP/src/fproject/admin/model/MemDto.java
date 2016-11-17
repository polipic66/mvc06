package fproject.admin.model;

import java.util.Date;

public class MemDto {
	private String userid;
	private String name;
	private String birth;
	private String phone;
	private String pwd;
	private String permit;
	private String email;
	private String position;
	private int cnt;
	private Date logintime;
	private String regid;
	private Date regdate;
	
	public MemDto() {
		// TODO Auto-generated constructor stub
	}

	public MemDto(String userid, String name, String birth, String phone,
			String pwd, String permit, String email, String position, int cnt,
			Date logintime, String regid, Date regdate) {
		super();
		this.userid = userid;
		this.name = name;
		this.birth = birth;
		this.phone = phone;
		this.pwd = pwd;
		this.permit = permit;
		this.email = email;
		this.position = position;
		this.cnt = cnt;
		this.logintime = logintime;
		this.regid = regid;
		this.regdate = regdate;
	}

	public String getUserid() {
		return userid;
	}

	public String getName() {
		return name;
	}

	public String getBirth() {
		return birth;
	}

	public String getPhone() {
		return phone;
	}

	public String getPwd() {
		return pwd;
	}

	public String getPermit() {
		return permit;
	}

	public String getEmail() {
		return email;
	}

	public String getPosition() {
		return position;
	}

	public int getCnt() {
		return cnt;
	}

	public Date getLogintime() {
		return logintime;
	}

	public String getRegid() {
		return regid;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public void setPermit(String permit) {
		this.permit = permit;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public void setLogintime(Date logintime) {
		this.logintime = logintime;
	}

	public void setRegid(String regid) {
		this.regid = regid;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "MemDto [userid=" + userid + ", name=" + name + ", birth="
				+ birth + ", phone=" + phone + ", pwd=" + pwd + ", permit="
				+ permit + ", email=" + email + ", position=" + position
				+ ", cnt=" + cnt + ", logintime=" + logintime + ", regid="
				+ regid + ", regdate=" + regdate + "]";
	}
	
}
