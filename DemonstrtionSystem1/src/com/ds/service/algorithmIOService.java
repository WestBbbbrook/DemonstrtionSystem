package com.ds.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ds.model.algorithmIO;;
public class algorithmIOService {
	private Connection conn;
	private PreparedStatement pstmt;

	public algorithmIOService() {
		conn = new com.ds.conn.conn().getCon();
	}

	
	public List queryAllALIO(int id) {
		List als = new ArrayList();
		String a[]= {"0","algorithmio1","algorithmio2","algorithmio3","algorithmio4"};
		try {
			pstmt = conn.prepareStatement("select * from "+a[id]);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				algorithmIO aList = new algorithmIO();
				aList.setId((rs.getInt(1)));
				aList.setName(rs.getString(2));
				aList.setInput(rs.getString(3));
				aList.setOutput(rs.getString(4));

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