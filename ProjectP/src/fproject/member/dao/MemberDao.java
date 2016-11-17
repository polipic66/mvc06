package fproject.member.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.Date;
//import java.util.List;




import fproject.member.model.MemberDto;

//import oracle.sql.ARRAY;
//import fproject.admin.dao.AttDao;
//import fproject.member.model.MemberDto;

public class MemberDao {
	private static String url;
	private static String user;
	private static String password;
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public MemberDao() throws Exception  {
//		url="jdbc:oracle:thin:@localhost:1521:xe";
//		user="scott";
//		password="tiger";
		url="jdbc:oracle:thin:@hanbit.cf:1521:xe";
		user="class062";
		password="user06";
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn=DriverManager.getConnection(url, user, password);
	}
	
	
	
	public void insert(String userid,String pwd,String name,String phone,String birth) throws SQLException{
		 @SuppressWarnings("unused")
		int insertcnt=0;			
		String sql="INSERT INTO MEMBER (USERID,PWD,NAME,PHONE,BIRTH)"
				+" VALUES (?,?,?,?,?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,userid);
			pstmt.setString(2,pwd);
			pstmt.setString(3,name);
			pstmt.setString(4,phone);
			pstmt.setString(5,birth);
			pstmt.executeUpdate();
		}catch (SQLException e) {
		}finally{
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
	}
	
	public void update(String pwd,String name, String email,String phone,String birth,String userid) throws SQLException{
		@SuppressWarnings("unused")
		int updatecnt = 0;
		String sql ="UPDATE MEMBER SET PWD=?,NAME=?, EMAIL=?,PHONE=?,BIRTH=? WHERE USERID=?";
		System.out.println(userid);
		System.out.println(pwd);
		System.out.println(name);
		System.out.println(email);
		System.out.println(phone);
		System.out.println(birth);
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,pwd);
			pstmt.setString(2,name);
			pstmt.setString(3,email);
			pstmt.setString(4,phone);
			pstmt.setString(5,birth);
			pstmt.setString(6,userid);
			updatecnt=pstmt.executeUpdate();
			System.out.println("Ȯ��");
		}catch (SQLException e) {
		}finally{
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
	}
	
	public void repass(String pwd,String userid) throws Exception{
		String sql = "UPDATE MEMBER SET PWD=? WHERE USERID=?";
			
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, pwd);
			pstmt.setString(2, userid);
			pstmt.executeUpdate();
			System.out.println(pwd+":"+userid+":"+"�������");
		} catch (Exception e) {
			// TODO: handle exception
		}finally{
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
	}
	
public String selectid(String name,String birth) throws Exception{
		
		
//		MemberDto dto = null;
//		List<MemberDto list= new ArrayList<MemberDto>();
		String sql="SELECT USERID FROM MEMBER WHERE NAME=? and BIRTH=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, birth);
		rs=pstmt.executeQuery();
		if(rs.next()){
//			dto= new MemberDto();
//			dto.setUserid(rs.getString("userid"));
//			list.add(dto);	
//			System.out.println(name+":"+birth+":"+rs.getString("userid"));
			
			String id = rs.getString("userid");
//			System.out.println(name+":"+id);
			return id;
		}
		try {
			}catch (Exception e) {
			}finally{
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}
		return "";
}

	public String selectpw(String userid,String name,String phone) throws SQLException {
		
		String sql="SELECT BIRTH FROM MEMBER WHERE USERID=? AND NAME=? AND PHONE=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			pstmt.setString(2, name);
			pstmt.setString(3, phone);
			rs=pstmt.executeQuery();
				
			if(rs.next()){
				String bir= rs.getString("birth");
				return bir;
			}
			try {
				
			} catch (Exception e) {
			}finally{
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}
		return "";
	}
	
	
	public MemberDto selectname(String userid) throws Exception{
		@SuppressWarnings("unused")
		int selectidcnt=0;
		MemberDto dto= new MemberDto();
		String sql="SELECT * FROM MEMBER WHERE userid=?";
		
		try {
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, userid);

		rs=pstmt.executeQuery();
		if(rs.next()){
			dto.setUserid(rs.getString("userid"));	
			dto.setName(rs.getString("name"));	
			dto.setPosition(rs.getString("position"));
		}
		return dto;
			}catch (Exception e) {
			}finally{
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}
		return dto;
}
	
	public MemberDto selectAll(String userid) throws Exception{
		@SuppressWarnings("unused")
		int selectidcnt=0;
		MemberDto dto= new MemberDto();
		String sql="SELECT * FROM MEMBER WHERE userid=?";
		
		try {
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, userid);

		rs=pstmt.executeQuery();
		if(rs.next()){
			dto.setUserid(rs.getString("userid"));				
			dto.setName(rs.getString("name"));
			dto.setBirth(rs.getString("birth"));
			dto.setPhone(rs.getString("phone"));
			dto.setPwd(rs.getString("pwd"));
			dto.setPermit(rs.getString("permit"));
			dto.setEmail(rs.getString("email"));
			dto.setPosition(rs.getString("position"));
			dto.setCnt(rs.getInt("cnt"));
			dto.setLogintime(rs.getDate("name"));
			dto.setRegid(rs.getString("regid"));
			dto.setRegdate(rs.getDate("regdate"));
		}
		return dto;
			}catch (Exception e) {
			}finally{
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}
		return dto;
}
	
	public int selectIDPW(String userid,String pwd) throws SQLException {
		int cnt=0; 
		String sql = "SELECT count(*) as im FROM MEMBER where userid=? and pwd=?";

		 try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, userid );
			pstmt.setString(2, pwd);
			rs=pstmt.executeQuery();
			if(rs.next()){
				cnt=rs.getInt("im");
			}
			
		} catch (SQLException e1) {
			e1.printStackTrace();
		}finally{
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		 return cnt;
	}

	// �⼮ üũ
	public void att(MemberDto mdt) throws SQLException {
		String id = (String)mdt.getUserid();
		String sql = "insert into att (attidx, userid, attdate) "
				+ "values (att_attidx_seq.nextval, ?, sysdate)";
		@SuppressWarnings("unused")
		int result = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
//		if (result > 0) {
//			String sql1 = "select ATT_ATTIDX_SEQ.currval from att where userid = ? ";
//			pstmt = conn.prepareStatement(sql1);
//			String userid = null;
//			pstmt.setString(1, userid);
//			rs=pstmt.executeQuery();
//			int ATT_ATTIDX_SEQ = 1;//ã���ε���
//			if(rs.next()){
//				ATT_ATTIDX_SEQ = rs.getInt(1);
//				// �ξƾ� dao
//				new AttDao().attinsert(ATT_ATTIDX_SEQ);			
//			}
//			
//		} else {
//		}
//		
	} 
}