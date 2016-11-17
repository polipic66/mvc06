package fproject.lec.controller;

import fproject.lec.dao.CurrDao;

import fproject.lec.model.CurrDto;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class StuCurrController extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = -8509051328397191092L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<CurrDto> list = null;
        String param1=request.getParameter("p");    // 페이지 파라미터

        int p = 1;
        int row = 3;    // 표시할 줄 수
        int rowTot = 1;
        if(param1!=null)p=Integer.parseInt(param1);
        try {
            CurrDao dao = new CurrDao();
            rowTot = dao.getTot();
            list = (List<CurrDto>) dao.selectAll(p, row); // 전체 리스트 출력
        } catch (Exception e) {
            e.printStackTrace();
        }
        int pTot = (rowTot - 1) / row + 1;
        request.setAttribute("ptot", pTot);
        request.setAttribute("list", list);

        request.setAttribute("lsidepg", "/lec/stucurr/left.jsp");
        request.setAttribute("pg", "/lec/stucurr/stucurr.jsp");
        request.getRequestDispatcher("/index.do").forward(request, response);
    }
}