package fproject.admin.controller;

import java.io.IOException;

import java.util.ArrayList;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fproject.admin.dao.AdvDao;
import fproject.admin.model.AdvDto;

//import fproject.admin.dao.AdvDao;

/**
 * Servlet implementation class AdvController
 */

public class AdvController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ArrayList<AdvDto> advList = null;   
	AdvDao attdao = null;
	int pagesize = 10;
	ArrayList<AdvDto> topList = null;
    /**   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdvController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//new AdvDao();
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//request.setAttribute("topList", topList);
		//request.setAttribute("graList", advList);
		//request.setAttribute("pageset", pageset);
		//request.setAttribute("total", total);
		
		request.setAttribute("topList", topList);
		request.setAttribute("advList", null);
		request.setAttribute("pageset", null);
		request.setAttribute("total", 0);
		
		request.setAttribute("lsidepg", "/admin/left.jsp");
		request.setAttribute("pg", "/admin/advertise.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
