package com.struts.tutorial.action2;

import com.opensymphony.xwork2.Action;

public class Action02 implements Action {
	private String id, pw, msg;
	
	public void setId(String id) {
		this.id = id;
	}
	
	public void setPw(String pw) {
		this.pw = pw;
	}
	
	public String getMsg() {
		return msg;
	}
	
	public String getId() {
		return id;
	}
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("id:"+id);
		System.out.println("pw:"+pw);
		if("root".equals(id)){
			return ERROR; 
		}
		if("admin".equals(id) && "1234".equals(pw)){
			msg="�����ڴ� ȯ���մϴ�";
			return SUCCESS;
		}else{
			msg="�α��� ����";
			return INPUT;
		}
	}

}
