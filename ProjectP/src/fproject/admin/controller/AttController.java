package fproject.admin.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fproject.admin.dao.AttDao;
import fproject.admin.dao.CommonDao;
//import fproject.admin.dao.CouDao;
import fproject.admin.model.AttDto;
//import fproject.admin.model.CouDto;
import fproject.admin.model.PagingSet;

/**
 * Servlet implementation class AttController
 */

public class AttController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ArrayList<AttDto> attList = null;   
	AttDao attdao = null;
	int pagesize = 10;
	ArrayList<AttDto> topList = null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AttController() {
        super();
        // TODO Auto-generated constructor stub
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//new AttDao();
		doPost(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		
		try {
			attdao = new AttDao();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		attdao.attinsert();   //통계 집계
		
		int topten = 5;
		topList = new ArrayList<AttDto>();
		topList = attdao.selectTop(topten);
	
		String tblname = "stsatt";
		String pagenum = (String)request.getParameter("pagenum");
		if(pagenum == null || "".equals(pagenum))
			pagenum = "1";
		
		System.out.println("pagenum:"+pagenum);
		int total=0;	
	    try {
			attList = attdao.selectList(pagenum, pagesize);
			total = attList.size();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	  
	    
	    System.out.println("결과값:"+attList.toString());
	    
	    String sqlatt = "";
		sqlatt = " select count(idx) as tot from  ";
		sqlatt+= " (select rownum as no, idx, stsatt.userid as userid, name, ";
		sqlatt+= " to_char(attdate,'YYYY-MM-DD') as attdate, attyn, ";
		sqlatt+= " member.position as position from stsatt, member ";
		sqlatt+= " where stsatt.userid = member.userid ";
		sqlatt+= " order by stsatt.regdate desc)";
		sqlatt+= " where position='학생' ";
		
	    PagingSet pageset = null;
		try {
			pageset = new CommonDao().selectPageSql(sqlatt,tblname, pagenum, pagesize);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("lsidepg", "/admin/left.jsp");
		request.setAttribute("pg", "/admin/adminsub1.jsp");
		request.setAttribute("topList", topList);
		request.setAttribute("attList", attList);
		request.setAttribute("pageset", pageset);
		request.setAttribute("total", total);
		
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
		//request.setAttribute("lsidepg", "/admin/left.jsp");
		//request.setAttribute("pg", "/admin/adminsub1.jsp");
		//request.getRequestDispatcher("/index.do").forward(request, response);
	}

}
