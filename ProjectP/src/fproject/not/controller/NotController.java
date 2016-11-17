package fproject.not.controller;

import fproject.not.dao.NotDao;

import fproject.not.model.NotDto;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class NotController extends HttpServlet {    // 공지사항 보기
    /**
	 * 
	 */
	private static final long serialVersionUID = -546990759942370515L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<NotDto> list = null;
        String param1 = request.getParameter("p");    // 페이지 파라미터

        int p = 1;
        int row = 10;    // 표시할 줄 수
        int rowTot = 1;
        if (param1 != null) p = Integer.parseInt(param1);
        try {
            NotDao dao = new NotDao();
            rowTot = dao.getTot();
            list = (List<NotDto>) dao.selectAll(p, row); // 전체 리스트 출력
        } catch (Exception e) {
            e.printStackTrace();
        }
        int pTot = (rowTot - 1) / row + 1;
        request.setAttribute("ptot", pTot);
        request.setAttribute("list", list);

        request.setAttribute("lsidepg", "/not/left.jsp");
        request.setAttribute("pg", "/not/notice.jsp");
        request.getRequestDispatcher("./index.do").forward(request, response);

    }
}
