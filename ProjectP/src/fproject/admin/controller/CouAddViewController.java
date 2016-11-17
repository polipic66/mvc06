package fproject.admin.controller;

import java.io.IOException;



import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CouAddViewController
 */

public class CouAddViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CouAddViewController() {
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
		String msg = (String)request.getAttribute("msg");
		request.setAttribute("msg", msg);
		System.out.println(msg);
		
		HttpSession se = request.getSession();
		
		if(se.getAttribute("position") != null){
			if(se.getAttribute("position").equals("학생")){
				request.setAttribute("lsidepg", "/lec/stucurr/left.jsp");
			}else if(se.getAttribute("position").equals("강사")){
				request.setAttribute("lsidepg", "/lec/left.jsp");
			}else if(se.getAttribute("position").equals("관리")){
				request.setAttribute("lsidepg", "/admin/left.jsp");
			}else{
				request.setAttribute("lsidepg", "/content/left.jsp");
			}
		}else{
			request.setAttribute("lsidepg", "/content/left.jsp");
		}
		
		//request.setAttribute("lsidepg", "/admin/left.jsp");
		request.setAttribute("pg", "/admin/counciladd.jsp");
		request.getRequestDispatcher("/index.do").forward(request, response);
	}

}
