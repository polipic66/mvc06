package fproject.admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import fproject.admin.model.AttDto;
//import fproject.admin.model.CouDto;
import fproject.admin.model.PagingSet;
import fproject.DB.conn.Conn;

public class AttDao {
	Connection conn = null;
	PreparedStatement pstmt = null;
	Statement stmt = null;
	Statement stmttemp = null;
	ResultSet rs = null;
	ResultSet rstemp = null;
	String sql = "";
	String state = "";
	int result = -1;
	double percent = 0.0;
	double percenttemp = 0.0;
	ArrayList<AttDto> attList = null;
	int total = 0;
	
	public AttDao() throws SQLException {
		// TODO Auto-generated constructor stub
		conn = new Conn().getConn();
	}
	
	public int attinsert(){  //출석통계에 넣어줄 부분, 통계 취합
		sql = " insert into stsatt (idx, userid, attidx, attdate, attYN,";
		sql+= " regid) select STSATT_IDX_SEQ.nextval, userid, attidx, ";
		sql+= " attdate, 'Y', 'ganbare' from att where attidx ";
		sql+= " not in (select attidx from stsatt)  ";
		
		try {
			stmt = conn.createStatement();
			result = stmt.executeUpdate(sql);
			return result;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println(sql);
		return result;
	}
	
	public ArrayList<AttDto> selectList(String pagenum,int pagesize) {
		// TODO Auto-generated method stub
		attList = new ArrayList<AttDto>();
		String tblname = "stsatt";
		
		String sqlatt = "";
		sqlatt = " select count(idx) as tot from  ";
		sqlatt+= " (select rownum as no, idx, stsatt.userid as userid, name, ";
		sqlatt+= " to_char(attdate,'YYYY-MM-DD') as attdate, attyn, ";
		sqlatt+= " member.position as position from stsatt, member ";
		sqlatt+= " where stsatt.userid = member.userid ";
		sqlatt+= " order by stsatt.regdate desc)";
		sqlatt+= " where position='학생' ";
		//sqlatt+= " and no between "+pageDto.getPageend();
		//sqlatt+= " and "+pageDto.getPagestart();
		
		PagingSet pageDto = null;
		try {
			pageDto = new CommonDao().selectPageSql(sqlatt,tblname, pagenum, pagesize);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} 
		
		//sql = "select rownum, idx, wname, wtitle, state from council ";
		//sql+= "where rownum between "+pageDto.getPagestart()+" and ";
		//sql+= pageDto.getPageend()+" ";
		//sql+= "order by wregdate asc";
		
		sql = " select idx, userid, name, attdate, attyn from  ";
		sql+= " (select rownum as no, idx, stsatt.userid as userid, name, ";
		sql+= " to_char(attdate,'YYYY-MM-DD') as attdate, attyn, ";
		sql+= " member.position as position from stsatt, member ";
		sql+= " where stsatt.userid = member.userid ";
		sql+= " and member.position='학생' ";
		sql+= " order by stsatt.regdate desc)";
		if(pageDto.getTotal()>1){
			sql+= " where no between "+pageDto.getPageend();
			sql+= " and "+pageDto.getPagestart();
		}
		System.out.println(sql);
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				AttDto attDto = new AttDto();
				attDto.setIdx(rs.getInt("idx"));
				attDto.setUserid(rs.getString("name")+"("+rs.getString("userid")+")");
				attDto.setAttdate(rs.getDate("attdate"));
				attDto.setAttyn(rs.getString("attyn"));
				String year = rs.getDate("attdate").toString().substring(0,4);
				percent = selectPercent(rs.getString("userid"),year);
				attDto.setPercent(String.valueOf(percent)+"%("+year+")");
				System.out.println("percent:"+percent);
				attList.add(attDto);
			}
			return attList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				//stmt.close();
				//rs.close();
				//conn.close();
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
	
		return attList;
	}
	
	
	public ArrayList<AttDto> selectTop(int size) {
		// TODO Auto-generated method stub
		ResultSet rsTop = null;
		Statement stmtTop = null;
		attList = new ArrayList<AttDto>();
		//String tblname = "stsatt";
		
		Date d = new Date();
	        
	    String s = d.toString();
	    System.out.println("현재날짜 : "+ s);
	        
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	    System.out.println("현재날짜 : "+ sdf.format(d));
	    @SuppressWarnings("unused")
		String year = sdf.format(d).substring(0,4);
	        
		/*sql = " select idx, userid, name, attdate, attyn from  ";
		sql+= " (select rownum as no, idx, stsatt.userid as userid, name, ";
		sql+= " to_char(attdate,'YYYY-MM-DD') as attdate, attyn from stsatt, member";
		sql+= " where stsatt.userid = member.userid order by stsatt.regdate desc)";
		sql+= " where no between 1"+
		sql+= " and "+size;*/
		
		/*sql = " select * from ";
		sql += " (select rownum as no, idx, userid, ";
		sql += " name from (select stsattuser.idx as idx, ";
		sql += " stsatt2.userid as userid, ";
		sql += " member.name as name from (select distinct userid as userid from stsatt) stsatt2, ";
		sql += " (select userid, idx, attdate, regdate from stsatt where ";
		sql += " to_char(attdate,'YYYY') = '"+year+"') " ;
		sql += " stsattuser, member";
		sql += " where stsatt2.userid = stsattuser.userid and stsattuser.userid = member.userid ";
		sql += " and member.position='학생' ))";*/
		//sql += " and to_char(stsattuser.attdate,'YYYY') = '"+year+"' ";
		//sql += " order by stsattuser.regdate desc))";
		/*sql += " where no between 1 and "+size;*/
		
	    //sql = " select a.userid userid, a.percent percent, b.name name from (select userid, round(count(userid)/365*100,2)";
	    //sql+= " as percent from stsatt group by userid order by percent)";
	    //sql+= " a , member b where a.userid = b.userid and b.position = '학생'";
		//sql="";
		
	    sql = " select userid, percent, name from ( ";
	    sql+= " (select rownum no, a.userid, a.percent, b.name from (select userid, round(count(userid)/365*100,2) "; 
	    sql+= " as percent from stsatt group by userid order by percent) ";
	    sql+= " a , member b where a.userid = b.userid and b.position = '학생') ";
	    sql+= " ) ";
	    //" where no between 1 and 5 ;
	    sql += " where no between 1 and "+size;
		System.out.println("sqlgraph:"+sql);
		
		try {
			stmtTop = conn.createStatement();
			rsTop = stmtTop.executeQuery(sql);
			
			while(rsTop.next()){
				AttDto attDto = new AttDto();
				//attDto.setIdx(rsTop.getInt("idx"));
				attDto.setUserid(rsTop.getString("name")+"("+rsTop.getString("userid")+")");
				//percent = selectPercent(rsTop.getString("userid"),year);
				attDto.setPercent(String.valueOf(rsTop.getInt("percent")));
				//attDto.setPercent(String.valueOf(rs.getDouble("percent")));
				attList.add(attDto);
				System.out.println(attDto.toString());
			}
			return attList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				//stmtTop.close();
				//rsTop.close();
				//conn.close();
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
	
		return attList;
	}
	
	public double selectPercent(String userid, String year) {
		// TODO Auto-generated method stub
	
		sql  = " select round(count(userid)/365*100,2) as percent from stsatt where userid = '"+userid+"' ";
		sql += " and to_char(attdate,'YYYY') = '"+year+"' ";
		//sql += " and (select count(attidx) from stsatt where userid = '"+userid+"' group by to_char(attdate,'YYYY-MM-DD')) = 1 ";
		System.out.println(sql);
		
		try {
			stmt = conn.createStatement();
			rstemp = stmt.executeQuery(sql);
			//pstmt = conn.prepareStatement(sql);
			//pstmt.setString(1, userid);
			//pstmt.setString(2, year);
			//pstmt.setString(3, userid);
			
			//rstemp = pstmt.executeQuery();
			
			if(rstemp.next()){
				percenttemp = rstemp.getDouble("percent");
			}
			return percenttemp; 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				//stmt.close();
				//rstemp.close();
				//conn.close();
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
	
		return percenttemp;
	}

}
