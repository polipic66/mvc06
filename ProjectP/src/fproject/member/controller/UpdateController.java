package fproject.member.controller;

import java.io.IOException;




import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fproject.member.dao.MemberDao;
import fproject.member.model.MemberDto;


public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MemberDto mto = null;
	//private MemberDao dao ;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession se = request.getSession();
		
		String userid = (String)se.getAttribute("userid");
		try {
			mto = new MemberDao().selectAll(userid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String phone = (String)mto.getPhone();
		String[] tel = new String[3];
		tel = phone.split("-");
	
		request.setAttribute("tel1", tel[0]);
		request.setAttribute("tel2", tel[1]);
		request.setAttribute("tel3", tel[2]);
		
		String birth = (String)mto.getBirth();
		String[] bir = new String[3];
		bir = birth.split("-");
		
		request.setAttribute("bir1", bir[0]);
		request.setAttribute("bir2", bir[1]);
		request.setAttribute("bir3", bir[2]);
		
		request.setAttribute("mto", mto);
		request.setAttribute("lsidepg", "/member/left.jsp"); // temp
		request.setAttribute("pg", "/member/update.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		int	cnt=0;
//		HttpSession se = request.getSession();
//		String userid = (String)se.getAttribute("userid");
//		String pwd = request.getParameter("uppw1");
//		String name = request.getParameter("upname");
//		String email ="";
//		email=request.getParameter("upemail");
//		String phone = request.getParameter("uptel1")+"-"+request.getParameter("uptel2")+"-"+request.getParameter("uptel3");
//		String birth = request.getParameter("upbir1")+"-"+request.getParameter("upbir2")+"-"+request.getParameter("upbir3");
//		
//		try {
//		dao = new MemberDao();
//		dao.update(pwd,name,email,phone,birth,userid);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//		se.setAttribute("userid", userid);
//		request.setAttribute("pg", "/member/insert.jsp");
//		request.getRequestDispatcher("index.do").forward(request, response);
////		request.getRequestDispatcher("/index.jsp").forward(request, response);
//	}

}
}