package com.struts.tutorial.action;

public class TutorialAction02 {
	
	private String msg;
	
	public String getMsg() {
		return msg;
	}
	
	public String execute(){
		msg = "tutorial msg";
		return "success";
	}
}
