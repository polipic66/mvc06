package com.struts.tutorial.action;

public class TutorialAction03 {
	private String msg;
	
	public String getMsg() {
		return msg;
	}
	
	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	public String execute(){
		return "success";
	}
}
