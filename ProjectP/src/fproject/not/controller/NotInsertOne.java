package fproject.not.controller;

//import fproject.lec.model.CurrDto;

import fproject.not.dao.NotDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
//import java.util.List;

public class NotInsertOne extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 5754457816051743487L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");  //인아추가
		
    	String param_userid = (String)request.getParameter("userid");
        String param_title = (String)request.getParameter("title");
        String param_content = (String)request.getParameter("content");
        // 인아 (String)추가
        
        String title = param_title;
        String userid = param_userid;
        String content = param_content;

        int result = 0;

        try {
            NotDao dao = new NotDao();
            result = dao.insertOne(title, userid, content);
        } catch (Exception e) {
            e.printStackTrace();
        }

        if (result > 0) {
            response.sendRedirect("./not.do");
        } else {
            response.sendRedirect("./not.do");
        }
    }
}
