package fproject.not.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class NotInsert extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = -4247904489145280367L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setAttribute("lsidepg", "/not/left.jsp");
        request.setAttribute("pg", "/not/notinsert.jsp");
        request.getRequestDispatcher("./index.do").forward(request, response);
    }
}
