package cn.bdqn.tools;

import java.util.ArrayList;
import java.util.List;

/**
 * 分页
 */
public class PageUtil<T> {

	private int pageSize=5;
	private int pageNo;
	private int totalSize;
	private int totalPage;
	private List<T> list=new ArrayList<T>();
	
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalSize() {
		return totalSize;
	}
	public void setTotalSize(int totalSize) {
		this.totalSize = totalSize;
		if(this.totalSize%this.pageSize==0){
			this.totalPage=totalSize/pageSize;	
		}else{
			this.totalPage=totalSize/pageSize+1;			
		}
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	
	}
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
	
}
