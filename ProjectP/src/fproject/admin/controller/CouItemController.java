package fproject.admin.controller;

import java.io.IOException;

//import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
//import java.util.HashMap;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fproject.admin.dao.CouDao;
import fproject.admin.model.CouDto;

/**
 * Servlet implementation class CouItemController
 */
public class CouItemController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	CouDto couitem = null;
	ArrayList<CouDto> couList = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CouItemController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 request.setCharacterEncoding("UTF-8");
		
		 String idx = (String)request.getParameter("idx");

		 try {
				couitem = new CouDao().selectItem(idx);
		 } catch (SQLException e) {
				// TODO Auto-generated catch block
			e.printStackTrace();
		 }	  
			
		//request.setAttribute("lsidepg", "/admin/left.jsp");
		//request.setAttribute("pg", "/admin/couitem.jsp");
	    request.setAttribute("couitem", couitem);
	
	    request.getRequestDispatcher("/admin/couitem.jsp").forward(request, response);
	}

}
