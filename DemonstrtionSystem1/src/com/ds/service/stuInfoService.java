package com.ds.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ds.model.userStudent;

public class stuInfoService {
	private Connection conn;
	private PreparedStatement pstmt;

	public stuInfoService() {
		conn = new com.ds.conn.conn().getCon();
	}

	public boolean addStu(userStudent stu) {
		try {
			pstmt = conn.prepareStatement(
					"insert into userstudent" + "(username,password,realname) " + "values(?,?,?)");
			pstmt.setString(1, stu.getUsername());
			pstmt.setString(2, stu.getPassword());
			pstmt.setString(3, stu.getRealname());
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			return false;
		}

	}

	public List queryAllStu() {
		List stus = new ArrayList();
		try {
			pstmt = conn.prepareStatement("select * from userstudent");
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				userStudent stu = new userStudent();
				stu.setUsername(rs.getString(1));
				stu.setPassword(rs.getString(2));
				stu.setMessage(rs.getString(3));
				stu.setRealname(rs.getString(4));
				stus.add(stu);

			}
			return stus;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}

	}

	public userStudent queryStubyName(String username) {
		// List stus = new ArrayList();
		try {
			pstmt = conn.prepareStatement("select * from userstudent where username=?");
			pstmt.setString(1, username);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				userStudent stu = new userStudent();
				stu.setUsername(rs.getString(1));
				stu.setPassword(rs.getString(2));
				stu.setMessage(rs.getString(3));
				stu.setRealname(rs.getString(4));
				// stus.add(stu);
				return stu;

			}
			return null;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}

	}

	public boolean updateStu(userStudent stu) {

		try {
			pstmt = conn.prepareStatement("update  userstudent set password=? , realname=? ,"
					+ " where id=?");
			pstmt.setString(1, stu.getUsername());
			pstmt.setString(2, stu.getPassword());
			pstmt.setString(3, stu.getMessage());
			pstmt.setString(4, stu.getRealname());
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	public Boolean deleteStu(String username) {

		try {
			pstmt = conn.prepareStatement("delete from  userstudent where username=?");
			pstmt.setString(1, username);
			pstmt.executeUpdate();
			return true;
		} catch (Exception e) {
			e.getStackTrace();
			return false;
		}

	}
}
