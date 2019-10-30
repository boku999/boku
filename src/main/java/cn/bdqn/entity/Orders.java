package cn.bdqn.entity;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * 订单表
 */
public class Orders {

	
	private int orderid;//订单id
	private int userid;//用户id
	private double totoalMoney;//订单价格
	private String orderDate;//创建订单时间
	private String state;//订单状态
	private String address;//地址id

	
	private List<OrderItem> blist=new ArrayList<OrderItem>();
	
	
	
	public List<OrderItem> getBlist() {
		return blist;
	}
	public void setBlist(List<OrderItem> blist) {
		this.blist = blist;
	}
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	
	public double getTotoalMoney() {
		return totoalMoney;
	}
	public void setTotoalMoney(double totoalMoney) {
		this.totoalMoney = totoalMoney;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}

	

}
