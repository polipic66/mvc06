package fproject.admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
//import java.util.ArrayList;


//import fproject.admin.model.CouDto;
import fproject.admin.model.PagingSet;
import fproject.DB.conn.Conn;

public class CommonDao {
	Connection conn = null;
	PreparedStatement pstmt = null;
	Statement stmt = null;
	ResultSet rs = null;
	String sql = "";
	
	public CommonDao() throws SQLException {
		// TODO Auto-generated constructor stub
		conn = new Conn().getConn();
	}

	public PagingSet selectPage(String tablename, String pagenum, int pagesize){
		
		PagingSet pageDto = new PagingSet();
		
		int page = 1;    //현재 페이지(정수값)
		int total = 0;   //전체 레코드 갯수
		//int pagesize = 5; //하나의 페이지에서 보여줄 레코드 갯수
		if(pagesize<1)pagesize=5;
		int pagesetsize = 5; //한페이지에서 보여줄 페이지 갯수;
		
		if(pagenum == null || "".equals(pagenum))
			page = 1;
		else page = Integer.parseInt(pagenum);  // 현재페이지(정수값) 
		
		sql = "select count(*) as tot from "+tablename;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				System.out.println(rs.getInt("tot"));
				total=rs.getInt("tot");
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} finally {
			try {
				rs.close();
				stmt.close();
				conn.close();
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} 
		}
		System.out.println("total sql:"+sql);
		System.out.println("total:"+total);
		
		int pagecount = total/pagesize;
		if(pagecount*pagesize<total){ 
			 pagecount++;    //총 페이지 갯수
		}
		
		int pagesettotal = pagecount/pagesetsize;
		if(pagesettotal*pagesetsize<pagecount){
			pagesettotal++;
		}
		
		int pagesetstart = 1;
		int pagesetno = 1;
		for(pagesetno=1; pagesetno<=pagesettotal;pagesetno++){
			if(page>=pagesetstart  && page<pagesetstart+pagesetsize){
				//pagesetstart = pagesetstart;
				break;
			}else{
				pagesetstart = pagesetstart+pagesetsize;
			}
		}
			
		//int add = pagesize; 
		//if(page == pagecount){
			//add = total - (pagecount-1)*pagesize; //마지막 페이지에서 더해야 할 값
		//}
		
		//int pagestart = (page-1)*pagesize + 1;  //해당 페이지 레코드 시작번호
		//int pageend = pagestart + add - 1;      //해당 페이지 레코드 끝번호
		
		//int add = pagesize; 
		
		
		int pagestart = total - (page-1)*pagesize;  //해당 페이지 레코드 시작번호
		int pageend = pagestart - pagesize + 1;      //해당 페이지 레코드 끝번호
		if(page == pagecount){
			pageend = 1; //마지막 페이지에서 더해야 할 값
		}
		
		pageDto.setCurpage(page);
		pageDto.setTotal(total);
		pageDto.setPagecount(pagecount);
		pageDto.setPagesetsize(pagesetsize);
		pageDto.setPagesize(pagesize);
		pageDto.setPagestart(pagestart);
		pageDto.setPageend(pageend);
		pageDto.setPagesetno(pagesetno);
		return pageDto;
	}
	
public PagingSet selectPageSql(String sqlatt, String tablename, String pagenum, int pagesize){
		
		PagingSet pageDto = new PagingSet();
		
		int page = 1;    //현재 페이지(정수값)
		int total = 0;   //전체 레코드 갯수
		//int pagesize = 5; //하나의 페이지에서 보여줄 레코드 갯수
		if(pagesize<1)pagesize=5;
		int pagesetsize = 5; //한페이지에서 보여줄 페이지 갯수;
		
		if(pagenum == null || "".equals(pagenum))
			page = 1;
		else page = Integer.parseInt(pagenum);  // 현재페이지(정수값) 
		
		//sql = "select count(*) as tot from "+tablename;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sqlatt);
			
			while(rs.next()){
				System.out.println(rs.getInt("tot"));
				total=rs.getInt("tot");
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} finally {
			try {
				rs.close();
				stmt.close();
				conn.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} 
		}
		System.out.println("total sql:"+sqlatt);
		System.out.println("total:"+total);
		
		int pagecount = total/pagesize;
		if(pagecount*pagesize<total){ 
			 pagecount++;    //총 페이지 갯수
		}
		
		int pagesettotal = pagecount/pagesetsize;
		if(pagesettotal*pagesetsize<pagecount){
			pagesettotal++;
		}
		
		int pagesetstart = 1;
		int pagesetno = 1;
		for(pagesetno=1; pagesetno<=pagesettotal;pagesetno++){
			if(page>=pagesetstart  && page<pagesetstart+pagesetsize){
				//pagesetstart = pagesetstart;
				break;
			}else{
				pagesetstart = pagesetstart+pagesetsize;
			}
		}
			
		//int add = pagesize; 
		//if(page == pagecount){
			//add = total - (pagecount-1)*pagesize; //마지막 페이지에서 더해야 할 값
		//}
		
		//int pagestart = (page-1)*pagesize + 1;  //해당 페이지 레코드 시작번호
		//int pageend = pagestart + add - 1;      //해당 페이지 레코드 끝번호
		
		//int add = pagesize; 
		
		
		int pagestart = total - (page-1)*pagesize;  //해당 페이지 레코드 시작번호
		int pageend = pagestart - pagesize + 1;      //해당 페이지 레코드 끝번호
		if(page == pagecount){
			pageend = 1; //마지막 페이지에서 더해야 할 값
		}
		
		
		pageDto.setCurpage(page);
		pageDto.setTotal(total);
		pageDto.setPagecount(pagecount);
		pageDto.setPagesetsize(pagesetsize);
		pageDto.setPagesize(pagesize);
		pageDto.setPagestart(pagestart);
		pageDto.setPageend(pageend);
		pageDto.setPagesetno(pagesetno);
		return pageDto;
	}

   public PagingSet selectPageUserid(String tblname, String pagenum, int pagesize,
		String userid) {
	// TODO Auto-generated method stub
	PagingSet pageDto = new PagingSet();
	
	int page = 1;    //현재 페이지(정수값)
	int total = 0;   //전체 레코드 갯수
	//int pagesize = 5; //하나의 페이지에서 보여줄 레코드 갯수
	if(pagesize<1)pagesize=5;
	int pagesetsize = 5; //한페이지에서 보여줄 페이지 갯수;
	
	if(pagenum == null || "".equals(pagenum))
		page = 1;
	else page = Integer.parseInt(pagenum);  // 현재페이지(정수값) 
	
	sql = "select count(*) as tot from "+tblname+" where wid='"+userid+"'";
	try {
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		
		while(rs.next()){
			System.out.println(rs.getInt("tot"));
			total=rs.getInt("tot");
		}
	} catch (SQLException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	} finally {
		try {
			rs.close();
			stmt.close();
			conn.close();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} 
	}
	System.out.println("total sql:"+sql);
	System.out.println("total:"+total);
	
	int pagecount = total/pagesize;
	if(pagecount*pagesize<total){ 
		 pagecount++;    //총 페이지 갯수
	}
	
	int pagesettotal = pagecount/pagesetsize;
	if(pagesettotal*pagesetsize<pagecount){
		pagesettotal++;
	}
	
	int pagesetstart = 1;
	int pagesetno = 1;
	for(pagesetno=1; pagesetno<=pagesettotal;pagesetno++){
		if(page>=pagesetstart  && page<pagesetstart+pagesetsize){
			//pagesetstart = pagesetstart;
			break;
		}else{
			pagesetstart = pagesetstart+pagesetsize;
		}
	}
		
	//int add = pagesize; 
	//if(page == pagecount){
		//add = total - (pagecount-1)*pagesize; //마지막 페이지에서 더해야 할 값
	//}
	
	//int pagestart = (page-1)*pagesize + 1;  //해당 페이지 레코드 시작번호
	//int pageend = pagestart + add - 1;      //해당 페이지 레코드 끝번호
	
	//int add = pagesize; 
	
	
	int pagestart = total - (page-1)*pagesize;  //해당 페이지 레코드 시작번호
	int pageend = pagestart - pagesize + 1;      //해당 페이지 레코드 끝번호
	if(page == pagecount){
		pageend = 1; //마지막 페이지에서 더해야 할 값
	}
	
	pageDto.setCurpage(page);
	pageDto.setTotal(total);
	pageDto.setPagecount(pagecount);
	pageDto.setPagesetsize(pagesetsize);
	pageDto.setPagesize(pagesize);
	pageDto.setPagestart(pagestart);
	pageDto.setPageend(pageend);
	pageDto.setPagesetno(pagesetno);
	return pageDto;
}


}
