package com.ds.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.ds.model.userStudent;;

public class userServiceStudent {
	private Connection conn;
	private PreparedStatement pstmt;

	public userServiceStudent() {
		conn = new com.ds.conn.conn().getCon();
	}
	public boolean valiUser(userStudent user) {
		try {
			pstmt = conn.prepareStatement("select * from userstudent where username=? and password=?");
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getPassword());
			ResultSet rs = pstmt.executeQuery();
			if (rs.next())
				return true;
			else
				return false;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

}
