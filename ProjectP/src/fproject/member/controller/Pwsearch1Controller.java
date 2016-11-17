package fproject.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fproject.member.dao.MemberDao;

/**
 * Servlet implementation class Pwsearch1Controller
 */
@WebServlet("/Pwsearch1Controller")
public class Pwsearch1Controller extends HttpServlet {
	private MemberDao dao;

	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Pwsearch1Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String userid = request.getParameter("pwid");
		String name = request.getParameter("pwname");
		String phone = request.getParameter("pwtel1")+"-"+request.getParameter("pwtel2")+"-"+request.getParameter("pwtel3");
		
		try {
			dao = new MemberDao();
			String bir = dao.selectpw(userid,name,phone);

			if (!bir.equals("")) {
				request.setAttribute("pg", "/member/pwsearchok.jsp");
				request.setAttribute("userid",userid);
				request.getRequestDispatcher("index.do").forward(request,
						response);
			} else {
				request.setAttribute("pg", "/member/idsearch.jsp");
//				request.setAttribute("userid", id);
				request.getRequestDispatcher("index.do").forward(request,
						response);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
		request.setAttribute("pg", "/member/pwsearchok.jsp");
		request.getRequestDispatcher("index.do");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
	}

}
