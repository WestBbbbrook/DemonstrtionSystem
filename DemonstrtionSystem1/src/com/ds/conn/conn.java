package com.ds.conn;

import java.sql.Connection;
import java.sql.DriverManager;

public class conn {
	public Connection getCon() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost/ds?useUnicode=true&characterEncoding=utf-8&useSSL=true";
		    String user="root";
		    String password="29579160";
		    Connection conn=DriverManager.getConnection(url,user,password);
		    System.out.println(conn.getMetaData().getUserName());
		    System.out.println(conn.getMetaData().getURL());

		    return conn;
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}