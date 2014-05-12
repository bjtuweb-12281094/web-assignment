package biz;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import beans.Role;
import db.DBConn;

public class RolBiz {
	/**
	 * 得到管理员的对象
	 * 
	 * @param id
	 * @return
	 */
	public Role getRoleById(int id) {
		DBConn dbconn = new DBConn();
		Role role = new Role();
		Connection conn = dbconn.getConn();
		String sqltemp = "select * from role where id=" + id;
		try {
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(sqltemp);
			while (rs.next()) {
				role.setId(rs.getInt("id"));
				role.setAdmins(rs.getString("admins"));
				role.setPass(rs.getString("pass"));
				role.setSitename(rs.getString("sitename"));
				role.setChecks(rs.getInt("checks"));
				role.setVotename(rs.getString("votename"));

			}
		} catch (Exception e) {
		}
		return role;
	}

	/**
	 * update the role by id
	 * 
	 * @param id
	 * @return
	 */
	public boolean updataRoleByRole(Role role) {
		boolean flag = false;
		DBConn dbconn = new DBConn();
		Connection conn = dbconn.getConn();
		String sqltemp = "update role set admins='" + role.getAdmins()
				+ "' , pass = '" + role.getPass() + "' ,sitename='"
				+ role.getSitename() + "',checks = " + role.getChecks()
				+ "  where id=" + role.getId();
		try {
			Statement st = conn.createStatement();
			st.executeUpdate(sqltemp);
			flag = true;
		} catch (Exception e) {
		}
		return flag;
	}
}
