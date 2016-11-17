package fproject.admin.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;


//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
//import javax.servlet.ServletRequest;
//import javax.servlet.ServletResponse;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fproject.admin.dao.CommonDao;
import fproject.admin.dao.CouDao;
import fproject.admin.model.CouDto;
import fproject.admin.model.PagingSet;

/**
 * Servlet implementation class CouController
 */

public class CouMemController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ArrayList<CouDto> couList = null;
    int pagesize = 10;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CouMemController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//new CouDao();
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		HttpSession se = request.getSession();
		String userid = (String)se.getAttribute("userid");
		
		
		String tblname = "council";
		String pagenum = (String)request.getParameter("pagenum");
		if(pagenum == null || "".equals(pagenum))
			pagenum = "1";
		
		System.out.println("pagenum:"+pagenum);
		int total=0;	
	    try {
			couList = new CouDao().selectListMem(pagenum, pagesize,userid);
			total = couList.size();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	  
	    
	    PagingSet pageset = null;
		try {
			pageset = new CommonDao().selectPageUserid(tblname, pagenum, pagesize,userid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(se.getAttribute("position").equals("학생")){
			request.setAttribute("lsidepg", "/lec/stucurr/left.jsp");
		}else if(se.getAttribute("position").equals("강사")){
			request.setAttribute("lsidepg", "/lec/left.jsp");
		}else{
			request.setAttribute("lsidepg", "/content/left.jsp");
		}
		request.setAttribute("pg", "/lec/coumem.jsp");
		request.setAttribute("couList", couList);
		request.setAttribute("pageset", pageset);
		request.setAttribute("total", total);
		
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
