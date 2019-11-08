package cn.bdqn.entity;
/*
 * 用户图书表
 */
public class UserBooks {

	
	private int bookid;
	private String bookname;
	private String bookimg;
	private double price;
	private double discount;
	private int count;
	private int uid;
	public int getBookid() {
		return bookid;
	}
	public void setBookid(int bookid) {
		this.bookid = bookid;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getBookimg() {
		return bookimg;
	}
	public void setBookimg(String bookimg) {
		this.bookimg = bookimg;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public double getDiscount() {
		return discount;
	}
	public void setDiscount(double discount) {
		this.discount = discount;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	@Override
	public String toString() {
		return "UserBooks [bookid=" + bookid + ", bookname=" + bookname
				+ ", bookimg=" + bookimg + ", price=" + price + ", discount="
				+ discount + ", count=" + count + ", uid=" + uid + "]";
	}
	
	
	
	
}
