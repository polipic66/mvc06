package fproject.lec.dao;

import fproject.DB.conn.Conn;
import fproject.lec.model.LecDto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
//import java.util.List;

public class LecDao {
	private Connection conn;
    private PreparedStatement pstmt;
    private Statement stmt;
    private ResultSet rs;
    private int result;
    String sql;
    ArrayList<LecDto> lecList = null;

    public LecDao() throws Exception {
        this.conn = new Conn().getConn();
    }
    
    public int getLeccnt(int currid) throws SQLException{
    	int cnt = 0;
    	
    	String sql = "SELECT COUNT(*) FROM CURRICULUM WHERE CURRID = "+ currid;
    	try {
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);
            while(rs.next()){
				cnt++;
			}
        } finally {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        }
    	return cnt+1;
    }
    
    public int LecInsert(LecDto lec) throws SQLException {
    	
    	sql = "INSERT INTO LECTURE VALUES (?, ?, ?, ?, ?, 'N', 0, ?, '', '', SYSDATE)";
    	
    	try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, lec.getLecid());
			pstmt.setString(2, lec.getTeachid());
			pstmt.setInt(3, lec.getCurrid());
			pstmt.setString(4, lec.getLectitle());
			pstmt.setString(5, lec.getLeccategory());
			pstmt.setString(6, lec.getLeccontent());
			
			System.out.println("InsertSQL : "+sql);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();	
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
    	return result;
    }
}