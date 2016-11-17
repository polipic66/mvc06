package fproject.home.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class IndexController
 */
public class IndexController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IndexController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*String loginpg = (String)request.getAttribute("loginpg");
		if(loginpg==null || "".equals(loginpg)){
			HttpSession se = request.getSession();
			String loginpgSe = (String)se.getAttribute("loginpg");
			if(loginpgSe==null || "".equals(loginpgSe)){
				se.setAttribute("loginpg","/member/login.jsp");
				request.setAttribute("loginpg", "/member/login.jsp");
			}else{
				se.setAttribute("loginpg","/member/loginok.jsp");
				request.setAttribute("loginpg", "/member/loginok.jsp");
			}
		}*/
		
		String loginpg = (String)request.getAttribute("loginpg");
		if(loginpg==null || "".equals(loginpg))
		    request.setAttribute("loginpg", "/member/login.jsp");
		    
		String msg = (String)request.getAttribute("msg");
		request.setAttribute("msg", msg);
		//System.out.println(msg);
		
		String lsidepg = (String)request.getAttribute("lsidepg");
		if(lsidepg==null || "".equals(lsidepg))
		    request.setAttribute("lsidepg", "/content/left.jsp");
		//System.out.println(lsidepg);
		
		String pg = (String)request.getAttribute("pg");
		//System.out.println(pg);
				
		if(pg==null || "".equals(pg))
		    request.setAttribute("pg", "/content/main.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response); 
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
