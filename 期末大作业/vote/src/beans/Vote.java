package beans;

public class Vote {
	private int id;

	private int lid;

	private String vname;

	private int vcount;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getLid() {
		return lid;
	}

	public void setLid(int lid) {
		this.lid = lid;
	}

	public int getVcount() {
		return vcount;
	}

	public void setVcount(int vcount) {
		this.vcount = vcount;
	}

	public String getVname() {
		return vname;
	}

	public void setVname(String vname) {
		this.vname = vname;
	}
}
