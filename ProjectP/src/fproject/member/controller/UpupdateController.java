package fproject.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fproject.member.dao.MemberDao;

/**
 * Servlet implementation class UpupdateController
 */
@WebServlet("/UpupdateController")
public class UpupdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MemberDao dao ;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpupdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//int	cnt=0;
		HttpSession se = request.getSession();
		String userid = (String)se.getAttribute("userid");
		String pwd = request.getParameter("uppw1");
		String name = request.getParameter("upname");
		String email ="";
		email=request.getParameter("upemail");
		String phone = request.getParameter("uptel1")+"-"+request.getParameter("uptel2")+"-"+request.getParameter("uptel3");
		String birth = request.getParameter("upbir1")+"-"+request.getParameter("upbir2")+"-"+request.getParameter("upbir3");
		
		try {
		dao = new MemberDao();
		dao.update(pwd,name,email,phone,birth,userid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
//		se.setAttribute("userid", userid);
//		request.setAttribute("pg", "/member/insert.jsp");
		response.sendRedirect("index.do");
//		request.getRequestDispatcher("index.do").forward(request, response);
//		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}
	}


