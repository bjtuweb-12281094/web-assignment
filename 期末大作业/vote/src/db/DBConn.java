package db;

import java.sql.*;

public class DBConn {
	public DBConn() {
	}

	Connection conn = null;
	String re = "";
	String dbip = "localhost";
	String use = "root";
	String pass = "181229";
	String dbName = "vote";

	public java.sql.Connection getConn() {
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			String url = "jdbc:mysql://localhost:3306/" + dbName
					+ "?useUnicode=true&characterEncoding=GBK";
			conn = DriverManager.getConnection(url, use, pass);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return this.conn;
	}

	public static void main(String args[]) {
		DBConn bc = new DBConn();
		Connection con = bc.getConn();
		System.out.print(con.toString());
	}
}
