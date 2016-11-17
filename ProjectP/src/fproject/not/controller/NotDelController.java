package fproject.not.controller;

import fproject.not.dao.NotDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class NotDelController extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 3702516913238749450L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String param = (String)request.getParameter("idx");
        // 인아 (String)추가
        int idx = Integer.parseInt(param);
        int result = 0;

        try {
            NotDao dao = new NotDao();
            result = dao.deleteOne(idx);
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
