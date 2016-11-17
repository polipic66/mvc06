package fproject.lec.controller;

import fproject.lec.dao.CurrDao;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CurrDel extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = -7682991010925571567L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String param = request.getParameter("idx");
        int currid = Integer.parseInt(param);
        int result = 0;

        try {
            CurrDao dao = new CurrDao();
            result = dao.deleteOne(currid);
        } catch (Exception e) {
            e.printStackTrace();
        }

        if (result > 0) {
            request.setAttribute("pg", "/lec/curr.jsp");
            response.sendRedirect("./curr.do");
        } else {
            request.setAttribute("pg", "/lec/currcurrupdate.jsp");
            response.sendRedirect("./curr.do");
        }
    }
}
