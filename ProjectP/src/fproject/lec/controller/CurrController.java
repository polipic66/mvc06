package fproject.lec.controller;

import fproject.lec.dao.CurrDao;

import fproject.lec.model.CurrDto;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class CurrController extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = -5386551052112519296L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response); //인아추가
	}	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");  //인아추가
		
		List<CurrDto> list = null;
        String param1=(String)request.getParameter("p");  
        // 페이지 파라미터
        // 인아 (String)추가
        int p = 1;
        int row = 10;    // 표시할 줄 수
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

        request.setAttribute("lsidepg", "/lec/left.jsp");
        request.setAttribute("pg", "/lec/curr.jsp");
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}