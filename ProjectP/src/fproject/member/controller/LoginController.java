package fproject.member.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fproject.member.dao.MemberDao;
import fproject.member.model.MemberDto;

/**
 * Servlet implementation class login
 */
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//if
		//request.setAttribute("loginpg", "/member/loginok.jsp");
		//else request.setAttribute("loginpg", "/member/login.jsp");
	//request.getRequestDispatcher("index.do").forward(request, response);
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//request.setAttribute("loginpg", "/member/loginok.jsp");
		//else request.setAttribute("loginpg", "/member/login.jsp");
		request.setCharacterEncoding("UTF-8");
		String userid = (String)request.getParameter("userid");
		String pw = (String)request.getParameter("pw");
		System.out.println(userid+pw);
		int cnt=0;
		try {
			cnt=new MemberDao().selectIDPW(userid, pw);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String loginpg="/member/login.jsp";
		request.setAttribute("ok", "no");
		System.out.println("cnt:"+cnt);
		
		MemberDto mdt=null;
		if(cnt>0){	
			try {
				mdt= new MemberDao().selectname(userid);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			request.setAttribute("ok", "ok");
			request.setAttribute("mdt", mdt);
			
			loginpg="/member/loginok.jsp";
		}
		//request.setAttribute("loginpg", pg);
		//
		try {
			MemberDao dao = new MemberDao();
			dao.att(mdt);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		HttpSession se = request.getSession();
		se.setAttribute("loginpg", loginpg);
		se.setAttribute("userid", mdt.getUserid());
		se.setAttribute("name", mdt.getName());
		se.setAttribute("position", mdt.getPosition());
		se.setAttribute("count", "true");
		
		//request.setAttribute("loginpg", loginpg);
        request.setAttribute("loginpg", se.getAttribute("loginpg"));
		request.setAttribute("lsidepg", "/content/left.jsp");
		String position = (String)se.getAttribute("position");
		if(position != null && position.equals("학생")){
			//request.setAttribute("pg", "/lec/stucurr.jsp");
			request.setAttribute("pg", "/content/main.jsp");
		}else if(position != null && position.equals("강사")){
			//request.setAttribute("pg", "/lec/lec.jsp");
			request.setAttribute("pg", "/content/main.jsp");
		}else if(position != null && position.equals("관리")){
			request.setAttribute("pg", "/admin/adminmain.jsp");
			//request.setAttribute("pg", "/content/main.jsp");
		}else{
			request.setAttribute("pg", "/content/main.jsp");
		}
		
		request.getRequestDispatcher("/member/loginPermit.jsp").forward(request, response);
		
		//request.setAttribute("loginpg", pg);
		//request.getRequestDispatcher("index.do").forward(request, response);
		//response.sendRedirect("index.do");
	}

}
