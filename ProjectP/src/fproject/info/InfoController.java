package fproject.info;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class InfoController extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = -1600800490317885919L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("pg", "/info.jsp");
        request.getRequestDispatcher("/index.do").forward(request, response);
    }
}
