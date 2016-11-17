package fproject.member.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fproject.member.dao.MemberDao;

public class Insert1Controller extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 3650687673596378985L;
	private MemberDao dao;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String userid = request.getParameter("idin");
		String pwd = request.getParameter("pw1");
		String name = request.getParameter("name");
		String phone = request.getParameter("tel1")+"-"+request.getParameter("tel2")+"-"+request.getParameter("tel3");
		String birth = request.getParameter("bir1")+"-"+request.getParameter("bir2")+"-"+request.getParameter("bir3");
		
		System.out.println(userid);
		System.out.println(pwd);
		System.out.println(name);
		System.out.println(phone);
		System.out.println(birth);
		
		try {
			dao = new MemberDao();
			dao.insert(userid, pwd, name, phone, birth);
		} catch (Exception e) {
			e.printStackTrace();
		}
	
//		request.setAttribute("pg", "/member/insert1.jsp");
		response.sendRedirect("index.do");
	}

}
