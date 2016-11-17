package fproject.admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import fproject.admin.model.MemDto;
import fproject.admin.model.PagingSet;
import fproject.DB.conn.Conn;

public class MemDao {
	Connection conn = null;
	PreparedStatement pstmt = null;
	Statement stmt = null;
	ResultSet rs = null;
	String sql = "";
	String state = "";
	int result = -1;
	ArrayList<MemDto> memList = null;
	int total = 0;
	
	public MemDao() throws SQLException {
		// TODO Auto-generated constructor stub
		conn = new Conn().getConn();
	}
	
	public ArrayList<MemDto> selectList(String pagenum, int pagesize) {
		// TODO Auto-generated method stub
		memList = new ArrayList<MemDto>();
		String tblname = "member";
		
		PagingSet pageDto = null;
		try {
			pageDto = new CommonDao().selectPage(tblname, pagenum, pagesize);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		//sql = "select rownum, idx, wname, wtitle, state from council ";
		//sql+= "where rownum between "+pageDto.getPagestart()+" and ";
		//sql+= pageDto.getPageend()+" ";
		//sql+= "order by wregdate asc";
		
		sql = " select userid, name, position, phone, permit from  ";
		sql+= " (select rownum as no, userid, name, position, phone, permit ";
		sql+= " from member ";
		sql+= " order by logintime desc) ";
		if(pageDto.getTotal()>1){
			sql+= " where no between "+pageDto.getPageend();
			sql+= " and "+pageDto.getPagestart();
		}
		
		System.out.println(sql);
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				MemDto memDto = new MemDto();
				memDto.setUserid(rs.getString("userid"));
				memDto.setName(rs.getString("name"));
				memDto.setPosition(rs.getString("position"));
				memDto.setPhone(rs.getString("phone"));
				memDto.setPermit(rs.getString("permit"));
				memList.add(memDto);
			}
			return memList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				stmt.close();
				rs.close();
				conn.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
	
		return memList;
	}
	
	public int UpdateMemPermit(String userid, String permit){
		sql = " update member set permit=? where userid =? ";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, permit);
			pstmt.setString(2, userid);
			result = pstmt.executeUpdate();
			return result;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
}
