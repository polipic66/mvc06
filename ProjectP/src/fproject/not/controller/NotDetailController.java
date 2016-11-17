package fproject.not.controller;

import fproject.not.dao.NotDao;

import fproject.not.model.NotDto;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class NotDetailController extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = -8025210042529728604L;
	NotDto dto;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String param = (String)request.getParameter("idx");
        // 인아 (String)추가
        int idx = 0;
        if (!(param == null || "".equals(param)))
            idx = Integer.parseInt(param);
        try {
            NotDao dao = new NotDao();
            dto = dao.selectOne(idx);
        } catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("bean", dto);
        request.setAttribute("lsidepg", "/not/left.jsp");
        request.setAttribute("pg", "/not/notone.jsp");
        request.getRequestDispatcher("./index.do").forward(request, response);

    }
}
