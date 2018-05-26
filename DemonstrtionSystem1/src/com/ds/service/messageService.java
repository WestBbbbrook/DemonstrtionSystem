package com.ds.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ds.model.message;
public class messageService {
	private Connection conn;
	private PreparedStatement pstmt;

	public messageService() {
		conn = new com.ds.conn.conn().getCon();
	}

	public boolean addMsg(message msg) {
		try {
			pstmt = conn.prepareStatement(
					"insert into message" + "(content) " + "values(?)");
			pstmt.setString(1, msg.getContent());
			//pstmt.setString(2, msg.getReply());

			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			return false;
		}

	}

	public List queryAllMsg() {
		List stus = new ArrayList();
		try {
			pstmt = conn.prepareStatement("select * from message");
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				message msg = new message();
				msg.setId((rs.getInt(1)));
				msg.setContent(rs.getString(2));
				msg.setReply(rs.getString(3));
				stus.add(msg);

			}
			return stus;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}

	}

	public message queryStubyID(String username) {
		// List stus = new ArrayList();
		try {
			pstmt = conn.prepareStatement("select * from message where id=?");
			//pstmt.setString(1, username);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				message msg = new message();
				msg.setContent(rs.getString(1));
				msg.setReply(rs.getString(2));
				// stus.add(stu);
				return msg;

			}
			return null;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}

	}

	public boolean updateMsg(message msg) {

		try {
			pstmt = conn.prepareStatement("update  message set content=? , reply=? ,"
					+ " where id=?");
			pstmt.setString(1, msg.getContent());
			pstmt.setString(2, msg.getReply());
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	public Boolean deleteMsg(String username) {

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