package com.ds.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ds.model.algorithm;
public class algorithmService {
	private Connection conn;
	private PreparedStatement pstmt;

	public algorithmService() {
		conn = new com.ds.conn.conn().getCon();
	}

	
	public List queryAllAl(int i) {
		String a[]= {"0","algorithm1","algorithm2","algorithm3","algorithm4"};
		List als = new ArrayList();
		try {
			pstmt = conn.prepareStatement("select * from "+a[i]);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				algorithm al = new algorithm();
				al.setId((rs.getInt(1)));
				al.setName(rs.getString(2));
				al.setInput(rs.getString(3));
				al.setOutput(rs.getString(4));
				als.add(al);

			}
			return als;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}

	}

	
}