package fproject.lec.controller;

import fproject.lec.dao.CurrDao;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CurrInsertOne extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = -7014840401698050451L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");  //인아추가
    	String param_title = (String)request.getParameter("title");
        String param_userid = (String)request.getParameter("userid");
        String param_numofperson = (String)request.getParameter("numofperson");
        String param_content = (String)request.getParameter("content");
        // 인아 (String)추가
        
        String title = param_title;
        String userid = param_userid;
        int numofperson = Integer.parseInt(param_numofperson);
        String content = param_content;

        System.out.println("title:"+title);
        int result = 0;

        try {
            CurrDao dao = new CurrDao();
            result = dao.insertOne(title, userid, numofperson, content);
        } catch (Exception e) {
            e.printStackTrace();
        }

        if (result > 0) {
            response.sendRedirect("./curr.do");
        } else {
            response.sendRedirect("./curr.do");
        }
    }
}
