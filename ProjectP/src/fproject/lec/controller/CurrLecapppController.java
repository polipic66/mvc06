package fproject.lec.controller;

import fproject.lec.dao.CurrDao;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CurrLecapppController extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = -1083574133498298965L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String cuid = request.getParameter("idx"); // currid
        String userid = request.getParameter("uid"); // userid
        int currid = Integer.parseInt(cuid);

        int result = 0;

        try {
            CurrDao dao = new CurrDao();
            result = dao.lecapp(currid, userid);
        } catch (Exception e) {
            e.printStackTrace();
        }

        if (result > 0) {
//            request.setAttribute("suc", "suc");
//            request.setAttribute("pg", "/lec/stucurr/stucurr.jsp");
            response.sendRedirect("/stucurr.do");
        } else {
            request.setAttribute("pg", "/error.jsp");   // 에러 페이지
            request.getRequestDispatcher("/index.do").forward(request, response);
//            response.sendRedirect("/index.do");
        }

    }
}
