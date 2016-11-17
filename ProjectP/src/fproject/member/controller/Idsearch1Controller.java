package fproject.member.controller;

import java.io.IOException;

//import java.util.ArrayList;
//import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fproject.member.dao.MemberDao;
//import fproject.member.model.MemberDto;

/**
 * Servlet implementation class Idsearch1Controller
 */
@WebServlet("/Idsearch1Controller")
public class Idsearch1Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MemberDao dao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Idsearch1Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("scname");
		String birth = request.getParameter("scbir1")+"-"+request.getParameter("scbir2")+"-"+request.getParameter("scbir3");
		
		try {
			dao = new MemberDao();
			String id = dao.selectid(name, birth);

			if (!id.equals("")) {
				request.setAttribute("pg", "/member/idsearchok.jsp");
				request.setAttribute("userid", id);
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

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
