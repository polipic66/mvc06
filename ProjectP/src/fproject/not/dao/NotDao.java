package fproject.not.dao;

import fproject.DB.OraDB;
import fproject.not.model.NotDto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NotDao {   // 공지사항 DAO
    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;

    public NotDao() throws Exception {
        this.conn = OraDB.getConnection();
    }

    public int getTot() throws SQLException {   // 공지사항 등록 게시물 수 구하기
        int tot = 0;
        String sql = "SELECT count(*) AS tot FROM NOTICE";
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

    public List<NotDto> selectAll(int p, int row) throws SQLException {
        List<NotDto> list = new ArrayList<>();
        int start = (p - 1) * row + 1;
        int end = start + row - 1;
        String sql = "SELECT * FROM " +
                "(SELECT ROWNUM AS RN, A.* " +
                "FROM (SELECT  * FROM NOTICE " +
                "ORDER BY IDX ASC)A) " +
                "WHERE RN BETWEEN " + start + " AND " + end;
        try {
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                NotDto dto = new NotDto(rs.getInt("IDX")
                        , rs.getString("USERID")
                        , rs.getString("SUBJECT")
                        , rs.getString("CONTENT")
                        , rs.getDate("NOTDATE"));
                list.add(dto);
            }
        } finally {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        }
        return list;
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

    public int insertOne(String title, String userid, String content) throws SQLException { // 공지사항 입력
        int cnt = 0;

        String sql = "INSERT INTO NOTICE (IDX, USERID, SUBJECT, CONTENT, NOTDATE) VALUES (NOTICE_IDX_SEQ.nextval, ?, ?, ?, sysdate)";

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, userid);
            pstmt.setString(2, title);
            pstmt.setString(3, content);
            cnt = pstmt.executeUpdate();
        } finally {
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        }
        return cnt;
    }

    public NotDto selectOne(int idx) throws SQLException {  // 공지사항 자세히 보기
        NotDto dto = new NotDto();

        String sql = "SELECT * FROM NOTICE WHERE IDX = ?";

        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, idx);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                dto.setIdx(rs.getInt("IDX"));
                dto.setUserid(rs.getString("USERID"));
                dto.setSubject(rs.getString("SUBJECT"));
                dto.setContent(rs.getString("CONTENT"));
                dto.setNotdate(rs.getDate("NOTDATE"));
            }
        } finally {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        }
        return dto;
    }

    public int deleteOne(int idx) throws SQLException {
        int result = 0;

        String sql = "DELETE FROM NOTICE WHERE IDX = ?";
        try {
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, idx);
            result = pstmt.executeUpdate();
        } finally {
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        }

        return result;
    }
}
