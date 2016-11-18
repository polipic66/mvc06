package com.mvc2.core;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc2.controller.IndexImp;
import com.mvc2.controller.InterController;
import com.mvc2.controller.ListImp;

/**
 * Servlet implementation class DispatcherServlet
 */

public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		doDo(request, response);
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String path = request.getServletPath();
		System.out.println(path);
		InterController ic = null;
		if(path.equals("/")){
			ic = new IndexImp();
		}else if(path.equals("/list.do")){
			ic = new ListImp();
		}
		
		String url = ic.execute(request, response);
		String prefix = "/WEB-INF/page/";
		String suffix = ".jsp";
		
		request.getRequestDispatcher(prefix+url+suffix).forward(request, response);
		
		
	}

}
