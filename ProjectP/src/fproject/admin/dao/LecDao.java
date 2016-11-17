package fproject.admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import fproject.admin.model.LecDto;
import fproject.admin.model.PagingSet;
import fproject.DB.conn.Conn;

public class LecDao {
	Connection conn = null;
	PreparedStatement pstmt = null;
	Statement stmt = null;
	ResultSet rs = null;
	String sql = "";
	String state = "";
	int result = -1;
	ArrayList<LecDto> lecList = null;
	int total = 0;
	
	public LecDao() throws SQLException {
		// TODO Auto-generated constructor stub
		conn = new Conn().getConn();
	}
	
	public ArrayList<LecDto> selectList(String pagenum, int pagesize) {
		// TODO Auto-generated method stub
		lecList = new ArrayList<LecDto>();
		String tblname = "lecture";
		
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
		
		sql = " select lecid, userid, name, currid, currtitle, ";
		sql+= " lectitle, category, open, count, leccontent, orifilename, ";
		sql+= " refilename, lecdate from ";
		sql+= " (select rownum as no, lecid, lecture.userid as userid, ";
		sql+= "  member.name, lecture.currid as currid, curriculum.title ";
		sql+= " as currtitle, lecture.title as lectitle, category, open, ";
		sql+= " count, lecture.content as leccontent, orifilename, ";
		sql+= " refilename, lecdate ";
		sql+= " from member, curriculum, lecture ";
		sql+= " where member.userid = lecture.userid and ";
		sql+= " lecture.currid = curriculum.currid ) ";
		if(pageDto.getTotal()>1){
			sql+= " where no between "+pageDto.getPageend();
			sql+= " and "+pageDto.getPagestart();
		}
		//sql = " select userid, name, currid, currtitle, open from  ";
		//sql+= " (select rownum as no, lecid, userid, name, position, phone, permit ";
		//sql+= " from member ";
		//sql+= " order by logintime desc) where no between "+pageDto.getPageend();
		//sql+= " and "+pageDto.getPagestart();
		
		System.out.println(sql);
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				LecDto lecDto = new LecDto();
				lecDto.setLecid(rs.getInt("lecid"));
				lecDto.setUserid(rs.getString("userid"));
				lecDto.setName(rs.getString("name"));
				lecDto.setCurrid(rs.getInt("currid"));
				lecDto.setCurrtitle(rs.getString("currtitle"));
				lecDto.setTitle(rs.getString("lectitle"));
				lecDto.setCategory(rs.getString("category"));
				lecDto.setOpen(rs.getString("open"));
				lecDto.setContent(rs.getString("leccontent"));
				lecDto.setOrifilename(rs.getString("orifilename"));
				lecDto.setRefilename(rs.getString("refilename"));
				lecDto.setLecdate(rs.getDate("lecdate"));
				
				lecList.add(lecDto);
			}
			return lecList;
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
	
		return lecList;
	}

	public int UpdateLecPermit(String lecid, String open) {
		sql = " update lecture set open=? where lecid =? ";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, open);
			pstmt.setString(2, lecid);
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
