package fproject.lec.controller;

import java.io.IOException;

//import java.sql.SQLException;


import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;


import fproject.lec.dao.LecDao;
import fproject.lec.model.LecDto;

public class LecInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LecInsertController() {
        super();
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    		throws ServletException, IOException {
    	
    	request.setCharacterEncoding("UTF-8");
    	
    	int lecid = 0;
    	@SuppressWarnings("unused")
		int result;
		String lectitle = (String)request.getParameter("lectitle");
		String teachid = (String)request.getParameter("teachid");
		int currid = Integer.parseInt(request.getParameter("currid"));
		String leccategory = (String)request.getParameter("leccategory");
		String leccontent = (String)request.getParameter("leccontent");
		
		try {
			lecid = new LecDao().getLeccnt(currid);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		LecDto lec = new LecDto();
		lec.setLecid(lecid);
		lec.setTeachid(teachid);
		lec.setCurrid(currid);
		lec.setLectitle(lectitle);
		lec.setLeccategory(leccategory);
		lec.setLeccontent(leccontent);
		
		try {
			result = new LecDao().LecInsert(lec);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		request.setAttribute("pg", "/lec/leclist.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	}
}