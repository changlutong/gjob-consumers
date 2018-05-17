package com.jk.util;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class PageModel<T> implements Serializable{
	
	//总条数
	private  int   pageSum;
	
	//当前页
	private  int   pageNow;
	
	//每页条数
	private  int   pageSize=3;
	
	//总页数
	private  int   pageCount;

	//开始条数
	private  int   start;
	
	//结束条数
	private  int   end;
	
	//数据
	private List<T>   pageList =  new ArrayList<T>();

	public int getPageSum() {
		return pageSum;
	}

	public void setPageSum(int pageSum) {
		this.pageSum = pageSum;
	}

	public int getPageNow() {
		return pageNow;
	}

	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getStart() {
		
		start = (pageNow-1)*pageSize;
		
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		
		end=pageNow*pageSize;
		
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public List<T> getPageList() {
		return pageList;
	}

	public void setPageList(List<T> pageList) {
		this.pageList = pageList;
	}
	
	
	
	
}
