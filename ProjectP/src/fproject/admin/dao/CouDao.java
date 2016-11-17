package fproject.admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import fproject.admin.model.CouDto;
import fproject.admin.model.PagingSet;
import fproject.DB.conn.Conn;

public class CouDao {
	Connection conn = null;
	PreparedStatement pstmt = null;
	Statement stmt = null;
	ResultSet rs = null;
	String sql = "";
	String state = "";
	int result = -1;
	ArrayList<CouDto> couList = null;
	int total = 0;
	
	public CouDao() throws SQLException {
		// TODO Auto-generated constructor stub
		conn = new Conn().getConn();
	}
	
	public int CouInsert(CouDto cou) {
		
		sql = " insert into council (idx, aid, wid, wname, wemail, wtel, wtitle, ";
		sql+= " wcontent, wregdate, state) values (council_idx_seq.nextval, ?, ";
		sql+= " ?, ?, ?, ?, ?, ?, sysdate, ?)";
		
		System.out.println(sql);
		System.out.println(cou.toString());
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cou.getAid());
			pstmt.setString(2, cou.getWid());
			pstmt.setString(3, cou.getWname());
			pstmt.setString(4, cou.getWemail());
			pstmt.setString(5, cou.getWtel());
			pstmt.setString(6, cou.getWtitle());
			pstmt.setString(7, cou.getWcontent());
			pstmt.setString(8, cou.getState());
			
			result = pstmt.executeUpdate();
			System.out.println("resultdao:"+result);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();	
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		
		return result;
	}

	public ArrayList<CouDto> selectList(String pagenum, int pagesize) {
		// TODO Auto-generated method stub
		couList = new ArrayList<CouDto>();
		String tblname = "council";
		
		PagingSet pageDto = null;
		try {
			pageDto = new CommonDao().selectPage(tblname, pagenum, pagesize);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} 
		
		 //select idx, wname, wtitle, state, acontent from    (select rownum as no, idx, wname, wtitle, state, acontent from     (select * from council     order by idx desc))   where no between 1 and 10;
	    sql =  "  select idx, wname, wtitle, state, acontent from  ";
		sql += "  (select rownum as no, idx, wname, wtitle, state, acontent from  ";
	    sql += "   (select * from council ";
	    sql += "    order by idx desc) )";
		if(pageDto.getTotal()>1){
			sql+= " where no between "+(pageDto.getTotal()-pageDto.getPagestart()+1); 
			sql+= " and "+(pageDto.getTotal()-pageDto.getPageend()+1);
		} 
		
		
		
		System.out.println("sqlcou:"+sql);
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				CouDto couDto = new CouDto();
				couDto.setIdx(rs.getInt("idx"));
				couDto.setWname(rs.getString("wname"));
				couDto.setWtitle(rs.getString("wtitle"));
				couDto.setState(rs.getString("state"));
				couDto.setAcontent(rs.getString("acontent"));
				couList.add(couDto);
			}
			return couList;
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
	
		return couList;
	}
	
	
	
	public CouDto selectItem(String idx) {
		CouDto couItem = null;
		// TODO Auto-generated method stub
		sql = "select * from council where idx = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(idx));
			rs = pstmt.executeQuery();
			while(rs.next()){
				couItem= new CouDto();
				couItem.setIdx(rs.getInt("idx"));
				couItem.setWid(rs.getString("wid"));
				couItem.setWname(rs.getString("wname"));
				couItem.setWemail(rs.getString("wemail"));
				couItem.setWtel(rs.getString("wtel"));
				couItem.setWtitle(rs.getString("wtitle"));
				couItem.setWcontent(rs.getString("wcontent"));
				couItem.setAcontent(rs.getString("acontent"));
				if(couItem.getWcontent()!=null){
					couItem.setWcontent(couItem.getWcontent().replace("\n", "<br/>"));
				}
				if(couItem.getAcontent()!=null){
					couItem.setAcontent(couItem.getAcontent().replace("\n", "<br/>"));
				}
				couItem.setWregdate(rs.getDate("wregdate"));
			}
			return couItem;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				rs.close();
				conn.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		
		return couItem;
	}

	public int writeAnswer(String idx, String acontent, String aid) {
		sql = " update council set aid = ?, acontent= ?, aregdate = sysdate, ";
	    sql+= " state = '답변완료' where idx=? ";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, aid);
			pstmt.setString(2, acontent);
			pstmt.setInt(3, Integer.parseInt(idx));
			result = pstmt.executeUpdate();
			return result;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		
		return result;
	}

	public ArrayList<CouDto> selectListMem(String pagenum, int pagesize, String userid) {
		// TODO Auto-generated method stub
		couList = new ArrayList<CouDto>();
		String tblname = "council";
		
		PagingSet pageDto = null;
		try {
			pageDto = new CommonDao().selectPage(tblname, pagenum, pagesize);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} 
		
		
	    sql =  "  select no, idx, wid, wname, wtitle, state, acontent from  ";
		sql += "  (select rownum no, idx, wid, wname, wtitle, state, acontent from  ";
	    sql += "   council where wid='"+userid+"' order by idx desc)";
		if(pageDto.getTotal()>1){
			sql+= " where  no between "+(pageDto.getTotal()-pageDto.getPagestart()+1); 
			sql+= " and "+(pageDto.getTotal()-pageDto.getPageend()+1);
		} 
		
		System.out.println("sqlcou:"+sql);
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				CouDto couDto = new CouDto();
				couDto.setIdx(rs.getInt("idx"));
				couDto.setWname(rs.getString("wname"));
				couDto.setWtitle(rs.getString("wtitle"));
				couDto.setState(rs.getString("state"));
				couDto.setAcontent(rs.getString("acontent"));
				couList.add(couDto);
			}
			return couList;
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
	
		return couList;
	}
}

