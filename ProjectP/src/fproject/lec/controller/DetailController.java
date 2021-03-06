package fproject.lec.controller;

import fproject.lec.dao.CurrDao;

import fproject.lec.model.CurrDto;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DetailController extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 2112541228171836034L;
	CurrDto dto;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String param = request.getParameter("idx");

        int currid = 0;
        if (!(param == null || "".equals(param)))
            currid = Integer.parseInt(param);
        try {
            CurrDao dao = new CurrDao();
            dto = dao.selectOne(currid);
        } catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("bean", dto);
        request.setAttribute("lsidepg", "/lec/left.jsp");
        request.setAttribute("pg", "/lec/currone.jsp");
        request.getRequestDispatcher("/index.do").forward(request, response);

    }
}
