package cn.bdqn.entity;
/*
 *类别表
 */
public class CateGory {
	private int categoryid;//类别id
	private String categoryname;//类别名称
	public int getCategoryid() {
		return categoryid;
	}
	public void setCategoryid(int categoryid) {
		this.categoryid = categoryid;
	}
	public String getCategoryname() {
		return categoryname;
	}
	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}
	@Override
	public String toString() {
		return "CateGory [categoryid=" + categoryid + ", categoryname="
				+ categoryname + "]";
	}
	
}
