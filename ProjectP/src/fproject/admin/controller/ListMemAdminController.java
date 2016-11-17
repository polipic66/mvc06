package fproject.admin.controller;

import java.io.IOException;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fproject.admin.dao.CommonDao;
//import fproject.admin.dao.CouDao;
import fproject.admin.dao.MemDao;
//import fproject.admin.model.CouDto;
import fproject.admin.model.MemDto;
import fproject.admin.model.PagingSet;

/**
 * Servlet implementation class ListMemAdminController
 */
public class ListMemAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ArrayList<MemDto> memList = null;
    int pagesize = 5;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListMemAdminController() {
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
		
		String tblname = "member";
		//String mode = (String)request.getParameter("mode");
		//if(mode == null || "".equals(mode))
			//mode = "notab";
		
		String pagenum = (String)request.getParameter("pagenum");
		if(pagenum == null || "".equals(pagenum))
			pagenum = "1";
		
		System.out.println("pagenum:"+pagenum);
		int total=0;	
	    try {
			memList = new MemDao().selectList(pagenum, pagesize);
			total = memList.size();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	  
	    
	    PagingSet pageset = null;
		try {
			pageset = new CommonDao().selectPage(tblname, pagenum, pagesize);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		/*request.setAttribute("lsidepg", "/admin/left.jsp");
		request.setAttribute("pg", "/admin/adminmain.jsp");
		request.setAttribute("couList", memList);
		request.setAttribute("pageset", pageset);
		request.setAttribute("total", total);
		
		request.getRequestDispatcher("index.jsp").forward(request, response);*/
		
		request.setAttribute("memList", memList);
		request.setAttribute("pageset", pageset);
		request.setAttribute("total", total);
		
		//if(mode.equals("tab1"))
			//request.getRequestDispatcher("/admin/memberadminpg.jsp").forward(request, response);
		//else
			request.getRequestDispatcher("/admin/memberadmin.jsp").forward(request, response);
	}

}
