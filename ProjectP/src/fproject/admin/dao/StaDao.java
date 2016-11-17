package fproject.admin.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

//import fproject.admin.model.CouDto;
import fproject.admin.model.StaDto;

public class StaDao {
	Connection conn = null;
	PreparedStatement pstmt = null;
	Statement stmt = null;
	ResultSet rs = null;
	String sql = "";
	String state = "";
	int result = -1;
	ArrayList<StaDto> couList = null;
	int total = 0;
	
	public StaDao() {
		// TODO Auto-generated constructor stub
		new StaDto();
	}
}
