package com.web.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.web.db.DBConnectionMgr;

public class UserDaoImpl implements UserDao {
	
	private DBConnectionMgr pool = null;
	
	public UserDaoImpl() {
		pool = DBConnectionMgr.getInstance();
	}

	@Override
	public String getUserName(String id, String password) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		String name = null;
		
		try {
			con = pool.getConnection();
			sql = "select user_name from user_mst where user_id = ? and user_password = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			rs = pstmt.executeQuery();
			
			rs.next();
			name = rs.getString(1);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		
		return name;
	}

	@Override
	public int login(String id, String password) {
		// TODO Auto-generated method stub
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		int flag = 0;
		
		try {
			con = pool.getConnection();
			sql = "SELECT count(um.user_id), count(ud.user_password) from user_mst um LEFT OUTER JOIN user_mst ud ON (ud.user_id = um.user_id and ud.user_password = ?) where um.user_id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, password);
			pstmt.setString(2, id);
			rs = pstmt.executeQuery();
			
			rs.next();
			flag = rs.getInt(1) + rs.getInt(2); // 2 : 로그인성공, 1: 패스워드틀림, 0: 아이디틀림
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		
		return flag;
	}
	
	

}
