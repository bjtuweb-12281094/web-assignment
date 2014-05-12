package beans;

public class Role {
	private int id;

	private String admins;

	private String pass;

	private String sitename;

	private int checks;

	private String votename;

	public String getAdmins() {
		return admins;
	}

	public void setAdmins(String admins) {
		this.admins = admins;
	}

	public int getChecks() {
		return checks;
	}

	public void setChecks(int checks) {
		this.checks = checks;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getSitename() {
		return sitename;
	}

	public void setSitename(String sitename) {
		this.sitename = sitename;
	}

	public String getVotename() {
		return votename;
	}

	public void setVotename(String votename) {
		this.votename = votename;
	}
}
