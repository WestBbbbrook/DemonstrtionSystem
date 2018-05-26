package com.ds.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ds.model.algorithmList;;
public class algorithmListService {
	private Connection conn;
	private PreparedStatement pstmt;

	public algorithmListService() {
		conn = new com.ds.conn.conn().getCon();
	}

	
	public List queryAllList() {
		List als = new ArrayList();
		try {
			pstmt = conn.prepareStatement("select * from algorithm");
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				algorithmList aList = new algorithmList();
				aList.setId((rs.getInt(1)));
				aList.setName(rs.getString(2));
				aList.setDetail(rs.getString(3));
				als.add(aList);
			}
			return als;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}

	}
}