package fproject.DB.conn;

//import oracle.jdbc.driver.OracleDriver;

import java.sql.*;
import java.lang.Class;

public class Conn {
//	String url = "jdbc:oracle:thin:@localhost:1521:xe";
//	String user = "scott";
//	String password = "tiger";
    // OracleDriver ora = null;
    String sqlcommit = "COMMIT";
    private static String url = "jdbc:oracle:thin:@hanbit.cf:1521:XE";
    private static String user = "class062";
    private static String password = "user06";

    public Conn() {
        // ora = new OracleDriver();
    }

    public Connection getConn() throws SQLException {
        Connection conn = null;

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        return conn;
    }

	/*void modifySql(String sql) {
        Connection conn = null; // null로 초기화 한다.
		PreparedStatement pstmt = null;

		try {

			Class.forName("oracle.jdbc.Driver.OracleDriver"); // 데이터베이스와 연동하기 위해
																// DriverManager에
																// 등록한다.
			conn = DriverManager.getConnection(url, user, password); // DriverManager
																		// 객체로부터
																		// Connection
																		// 객체를
																		// 얻어온다.

			pstmt = conn.prepareStatement(sql); // prepareStatement에서 해당 sql을 미리
												// 컴파일한다.

			pstmt.executeUpdate(); // 쿼리를 실행한다.

			System.out.println("테이블에 새로운 쿼리를 반영 하였습니다."); // 성공시 메시지 출력
			pstmt.executeUpdate(sqlcommit);
			// conn.commit();

		} catch (Exception e) { // 예외가 발생하면 예외 상황을 처리한다.
			e.printStackTrace();
			System.out.println("테이블에 새로운 쿼리 반영에 실패 하였습니다.");
		} finally { // 쿼리가 성공 또는 실패에 상관없이 사용한 자원을 해제 한다. (순서중요)
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException sqle) {
				} // PreparedStatement 객체 해제
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException sqle) {
				} // Connection 해제
		}
	} // modifySql end

	ResultSet selectSql(String sql) {
		// int result = 0;
		// OracleDriver ora = new OracleDriver();
		ResultSet rs = null;
		Connection conn = null;
		Statement stmt = null;
		try {
			Class.forName("oracle.jdbc.Driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		try {
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			System.out.println(sql);
			// result = stmt.executeUpdate(sql);
			// if (result > 0) System.out.println("입력 성공");
			rs = stmt.executeQuery(sql);

			// try {
			// while (rs.next()) {
			// System.out.println(rs.getString(1) + ":" + rs.getString(2) + ":"
			// + rs.getString(3));
			// }
			// } catch (SQLException e1) {
			// e1.printStackTrace();
			// }

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	} // selectSql end*/

} // class end

