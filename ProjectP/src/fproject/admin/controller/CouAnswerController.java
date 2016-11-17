package fproject.admin.controller;

import java.io.IOException;
import java.sql.SQLException;
//import java.util.ArrayList;


import java.util.ArrayList;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




//import fproject.admin.dao.CommonDao;
import fproject.admin.dao.CouDao;
import fproject.admin.model.CouDto;
//import fproject.admin.model.PagingSet;


/**
 * Servlet implementation class CouAnswerController
 */
public class CouAnswerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//CouDto couitem = null;
	CouDto couitem = null;
	int result = -1;
	ArrayList<CouDto> couList = null;
    int pagesize = 10;   
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CouAnswerController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 request.setCharacterEncoding("UTF-8");
		
		 String idx = (String)request.getParameter("idx");
		 String acontent = (String)request.getParameter("acontent");

		 HttpSession se = request.getSession();
	     String userid = (String)se.getAttribute("userid");
			
		 try {
			  result = new CouDao().writeAnswer(idx,acontent,userid);
		 } catch (SQLException e) {
				// TODO Auto-generated catch block
			e.printStackTrace();
		 }	  
			
		//request.setAttribute("lsidepg", "/admin/left.jsp");
		//request.setAttribute("pg", "/admin/couitem.jsp");
	    //request.setAttribute("couitem", couitem);
	    
		 try {
				couitem = new CouDao().selectItem(idx);
		 } catch (SQLException e) {
				// TODO Auto-generated catch block
			e.printStackTrace();
		 }	  
			
		//request.setAttribute("lsidepg", "/admin/left.jsp");
		//request.setAttribute("pg", "/admin/couitem.jsp");
	    request.setAttribute("couitem", couitem);
	    request.setAttribute("idx", idx);
	
	    request.getRequestDispatcher("/admin/couitem.jsp").forward(request, response);
	}

}
