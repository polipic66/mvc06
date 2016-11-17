package fproject.lec.dao;

import fproject.DB.OraDB;

import fproject.lec.model.CurrDto;
//import fproject.lec.model.LecAppDto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CurrDao {  // 커리큘럼 DAO
    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;

    public CurrDao() throws Exception {
        this.conn = OraDB.getConnection();
    }

    public String getName(String userid) throws SQLException { // 이름 가져오기 보류
        String name = null;
        String sql = "SELECT NAME FROM MEMBER WHERE USERID = ?";

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userid);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                name = rs.getString("NAME");
            }
        } finally {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        }

        return name;
    }

    public List<CurrDto> selectAll(int p, int row) throws SQLException {    // 전체 리스트 출력
        List<CurrDto> list = new ArrayList<>();
        int start = (p - 1) * row + 1;
        int end = start + row - 1;
        String sql = "SELECT * FROM " +
                "(SELECT ROWNUM AS RN, A.* " +
                "FROM (SELECT  * FROM CURRICULUM " +
                "ORDER BY CURRID ASC)A) " +
                "WHERE RN BETWEEN " + start + " AND " + end;

        try {
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                CurrDto dto = new CurrDto(rs.getInt("CURRID")
                        , rs.getString("USERID")
                        , rs.getString("TITLE")
                        , rs.getInt("NUMOFPERSON")
                        , rs.getString("CONTENT")
                        , rs.getInt("CLASSCNT")
                        , rs.getDate("CURRDATE"));
                list.add(dto);
            }
        } finally {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        }
        return list;
    }

    public int getTot() throws SQLException {   // 커리큘럼 등록 게시물 수 구하기
        int tot = 0;
        String sql = "SELECT count(*) AS tot FROM CURRICULUM";
        try {
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                tot = rs.getInt("tot");
            }
        } finally {
            if (pstmt != null) pstmt.close();
        }
        return tot;
    }

    public CurrDto selectOne(int currid) throws SQLException { // 커리큘럼 자세히 보기
        CurrDto dto = new CurrDto();
        String sql = "SELECT * FROM CURRICULUM WHERE CURRID = ?";

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, currid);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                dto.setTitle(rs.getString("TITLE"));
                dto.setCurrid(rs.getInt("CURRID"));
                dto.setUserid(rs.getString("USERID"));
                dto.setNumofperson(rs.getInt("NUMOFPERSON"));
                dto.setContent(rs.getString("CONTENT"));
            }
        } finally {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        }
        return dto;
    }

    public int insertOne(String title, String userid, int numofperson, String content) throws SQLException {    // 커리큘럼 입력
        int cnt = 0;

        String sql = "INSERT INTO CURRICULUM VALUES (CURRICULUM_CURRID_SEQ.nextval, ?, ?, ?, ?, 0, sysdate)";

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userid);
            pstmt.setString(2, title);
            pstmt.setInt(3, numofperson);
            pstmt.setString(4, content);
            cnt = pstmt.executeUpdate();
        } finally {
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        }
        return cnt;
    }

    public int updateOne(String title, String userid, int currid, int numofperson, String content) throws SQLException {    // 커리큘럼 업데이트
        int cnt = 0;

        String sql = "UPDATE CURRICULUM SET TITLE = ?, NUMOFPERSON = ?, CONTENT = ?, CURRDATE = sysdate WHERE CURRID = ?";

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, title);
            pstmt.setInt(2, numofperson);
            pstmt.setString(3, content);
            pstmt.setInt(4, currid);
            cnt = pstmt.executeUpdate();
        } finally {
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        }
        return cnt;
    }

    public int deleteOne(int currid) throws SQLException {
        int result = 0;

        String sql = "DELETE FROM CURRICULUM WHERE CURRID = ?";
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, currid);
            result = pstmt.executeUpdate();
        } finally {
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        }

        return result;
    }

    public int lecapp(int currid, String userid) throws SQLException {   // 수강신청
        int cnt = 0;
        int result = 0; // 중복 확인

        // 수강 신청 중복 확인
        String sqlsel = "SELECT count(*) AS cnt FROM LECAPP WHERE USERID = ? AND CURRID = ?";

        pstmt = conn.prepareStatement(sqlsel);
        pstmt.setString(1, userid);
        pstmt.setInt(2, currid);
        rs = pstmt.executeQuery();
        if (rs.next()) {
            result = rs.getInt("CNT");
        }
        if (result == 0) {
            String sql = "INSERT INTO LECAPP (APPIDX, USERID, CURRID) VALUES (LECAPP_APPIDX_SEQ.nextval, ?, ?)";

            try {
                pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, userid);
                pstmt.setInt(2, currid);
                cnt = pstmt.executeUpdate();
            } finally {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            }

            return cnt;
        } else {
            return 0;
        }
    }
}


