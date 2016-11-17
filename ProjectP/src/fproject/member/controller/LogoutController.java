package fproject.member.controller;

import java.io.IOException;

//import java.sql.SQLException;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import fproject.member.dao.MemberDao;
//import fproject.member.model.MemberDto;

/**
 * Servlet implementation class login
 */
public class LogoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogoutController() {
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
//		// TODO Auto-generated method stub
//		//request.setAttribute("loginpg", "/member/loginok.jsp");
//		//else request.setAttribute("loginpg", "/member/login.jsp");
//		request.setCharacterEncoding("UTF-8");
//		String userid = (String)request.getParameter("userid");
//		String pw = (String)request.getParameter("pw");
//		System.out.println(userid+pw);
//		int cnt=0;
//		try {
//			cnt=new MemberDao().selectIDPW(userid, pw);
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		String pg="/member/login.jsp";
//		request.setAttribute("ok", "no");
//		
//		MemberDto mdt=null;
//		if(cnt>0){	
//			try {
//				mdt= new MemberDao().selectname(userid);
//			} catch (Exception e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//			
//			request.setAttribute("ok", "ok");
//			request.setAttribute("mdt", mdt);
//			
//			pg="/member/loginok.jsp";
//		}
//		//request.setAttribute("loginpg", pg);
//		
//		HttpSession se = request.getSession();
//		se.setAttribute("loginpg", pg);
//		se.setAttribute("userid", null);
//		se.setAttribute("name", null);
//		
//		
//		request.getRequestDispatcher(pg).forward(request, response);
//		
//		
        HttpSession se = request.getSession();
		
		//String userid = (String)se.getAttribute("userid");
		se.invalidate();
		
		response.sendRedirect("index.do");
	}

}
