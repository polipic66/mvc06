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
 * Servlet implementation class PwchangeController
 */
@WebServlet("/PwchangeController")
public class PwchangeController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private MemberDao dao;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public PwchangeController() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        @SuppressWarnings("unused")
		int cnt = 0;
        @SuppressWarnings("unused")
		HttpSession se = request.getSession();
        String userid = request.getParameter("repwid");
        String pwd = request.getParameter("repwpass1");

        try {
            dao = new MemberDao();
            dao.repass(pwd, userid);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        request.setAttribute("lsidepg", "/content/left.jsp");
        request.setAttribute("pg", "/content/main.jsp");
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
    }

}
