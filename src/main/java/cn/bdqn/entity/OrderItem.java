package cn.bdqn.entity;

/**
 *
 * 订单详情表
 */
public class OrderItem {

	
	private int ordersid;//订单id
	
	private int bid;//图书id
	
	private String	bname;//图书名称
	
	private int num;//数量
	
	private String bimg;//图片
	
	private double price;//单价

	public int getOrdersid() {
		return ordersid;
	}

	public void setOrdersid(int ordersid) {
		this.ordersid = ordersid;
	}

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getBimg() {
		return bimg;
	}

	public void setBimg(String bimg) {
		this.bimg = bimg;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "OrderItem [ordersid=" + ordersid + ", bid=" + bid + ", bname="
				+ bname + ", num=" + num + ", bimg=" + bimg + ", price="
				+ price + "]";
	}

	
	
	
}
