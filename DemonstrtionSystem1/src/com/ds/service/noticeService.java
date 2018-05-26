
package com.ds.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ds.model.notice;
public class noticeService {
	private Connection conn;
	private PreparedStatement pstmt;

	public noticeService() {
		conn = new com.ds.conn.conn().getCon();
	}

	public boolean addNtc(notice ntc) {
		try {
			pstmt = conn.prepareStatement(
					"insert into notice" + "(ncontent,date) " + "values(?,?)");
			pstmt.setString(1, ntc.getNcontent());
			pstmt.setString(2, ntc.getDate());

			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
			return false;
		}

	}

	public List queryAllNtc() {
		List ntcs = new ArrayList();
		try {
			pstmt = conn.prepareStatement("select * from notice");
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				notice ntc = new notice();
				ntc.setNid((rs.getInt(1)));
				ntc.setNcontent(rs.getString(2));
				ntc.setDate(rs.getString(3));
				ntcs.add(ntc);
			}
			return ntcs;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}

	}

	public notice queryNtcID(int nid) {
		// List stus = new ArrayList();
		try {
			pstmt = conn.prepareStatement("select * from message where nid=?");
			pstmt.setInt(1, nid);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				notice ntc = new notice();
				ntc.setNid(rs.getInt(1));
				ntc.setNcontent(rs.getString(2));
				ntc.setDate(rs.getString(3));
				// stus.add(stu);
				return ntc;

			}
			return null;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}

	}

	public boolean updateNtc(notice ntc) {

		try {
			pstmt = conn.prepareStatement("update  notice set ncontent=? , date=? ,"
					+ " where nid=?");
			pstmt.setString(1, ntc.getNcontent());
			pstmt.setString(2, ntc.getDate());
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}

	public Boolean deleteNtc(int nid) {

		try {
			pstmt = conn.prepareStatement("delete from  userstudent where nid=?");
			pstmt.setInt(1, nid);
			pstmt.executeUpdate();
			return true;
		} catch (Exception e) {
			e.getStackTrace();
			return false;
		}

	}
}