package fproject.admin.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fproject.admin.dao.CouDao;
import fproject.admin.model.CouDto;

/**
 * Servlet implementation class CouInsertController
 */

public class CouInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CouInsertController() {
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
		
		HttpSession se = request.getSession();
		String wid = (String)se.getAttribute("userid");
		
		
		int result = -1;
		String wtitle = (String)request.getParameter("wtitle");
		String wname = (String)request.getParameter("wname");
		String wtel = (String)request.getParameter("wtel");
		String wemail = (String)request.getParameter("wemail");
		String wcontent = (String)request.getParameter("wcontent");
		
		System.out.println("wtitle:"+wtitle);
		System.out.println("wname:"+wname);
		System.out.println("wtel:"+wtel);
		System.out.println("wemail:"+wemail);
		System.out.println("wcontent:"+wcontent);
		System.out.println("1:1문의하기에 들어왔습니다.");
		
		CouDto cou = new CouDto();
		cou.setAid("ganbare");
		cou.setWid(wid);
		cou.setWtitle(wtitle);
		cou.setWname(wname);
		cou.setWtel(wtel);
		cou.setWemail(wemail);
		cou.setWcontent(wcontent);
		cou.setState("접수중");
		
		try {
			result = new CouDao().CouInsert(cou);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		System.out.println("result:"+result);
		
		if(result>0){
			request.setAttribute("msg", "질문이 접수되었습니다!");
		}else{
			request.setAttribute("msg", "입력이 되지 않았습니다");
		}
		System.out.println(request.getAttribute("msg"));
		
		if(se.getAttribute("position")!=null){
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
		request.setAttribute("cou",cou);

		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}

}
