package db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import beans.Role;
import beans.Vote;

public class DBCtrol {

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

	public boolean checkRole(String name, String pass) {
		boolean flag = false;
		DBConn dbconn = new DBConn();
		Connection conn = dbconn.getConn();
		String sqltemp = "select * from role where admins='" + name
				+ "' and pass = '" + pass+"'";
		try {
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(sqltemp);
			while (rs.next()) {
				flag = true;
				break;
			}
		} catch (Exception e) {
		}
		return flag;
	}

	/**
	 * 有人投票就把票数加一
	 * 
	 * @param id
	 */
	public void updataVcountById(String id) {
		DBConn dbconn = new DBConn();
		Connection conn = dbconn.getConn();
		String sqltemp = "update vote set vcount=vcount+1 where id=" + id;
		try {
			Statement st = conn.createStatement();
			st.executeUpdate(sqltemp);
		} catch (Exception e) {
		}
	}

	/**
	 * 得到所有的投票选项对象
	 * 
	 * @return
	 */
	public List getVoteList() {
		DBConn dbconn = new DBConn();
		List list = new ArrayList();
		Connection conn = dbconn.getConn();
		String sqltemp = "select * from vote order by id DESC";
		try {
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(sqltemp);
			while (rs.next()) {
				Vote vote = new Vote();
				vote.setId(rs.getInt("id"));
				vote.setLid(rs.getInt("lid"));
				vote.setVcount(rs.getInt("vcount"));
				vote.setVname(rs.getString("vname"));
				list.add(vote);
			}
		} catch (Exception e) {
		}
		return list;
	}

	/**
	 * 得到所有的票数
	 * 
	 * @return
	 */
	public int totalVote() {
		int num = 0;
		String tempnum = null;
		DBConn dbconn = new DBConn();
		Connection conn = dbconn.getConn();
		String sqltemp = "select sum(vcount) as sm from vote";
		try {
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(sqltemp);
			while (rs.next()) {
				tempnum = rs.getString(1);
			}
			if (tempnum != null) {
				num = Integer.parseInt(tempnum);
			}
		} catch (Exception e) {
		}
		return num;
	}
}
