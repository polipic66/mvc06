package fproject.admin.model;

public class PagingSet {
	private int total = 0;
	private int curpage = 1;
	private int pagesize = 5;
	private int pagesetsize = 5;
	private int pagesetno = 1;
	private int pagecount = 1;
	private int pagestart = 1;
	private int pageend = 1;
	
	public PagingSet() {
		// TODO Auto-generated constructor stub
	}

	
	public PagingSet(int total, int curpage, int pagesize, int pagesetsize,
			int pagesetno, int pagecount, int pagestart, int pageend) {
		super();
		this.total = total;
		this.curpage = curpage;
		this.pagesize = pagesize;
		this.pagesetsize = pagesetsize;
		this.pagesetno = pagesetno;
		this.pagecount = pagecount;
		this.pagestart = pagestart;
		this.pageend = pageend;
	}


	public int getTotal() {
		return total;
	}

	public int getCurpage() {
		return curpage;
	}


	public int getPagesize() {
		return pagesize;
	}


	public int getPagesetsize() {
		return pagesetsize;
	}


	public int getPagesetno() {
		return pagesetno;
	}


	public int getPagecount() {
		return pagecount;
	}


	public int getPagestart() {
		return pagestart;
	}


	public int getPageend() {
		return pageend;
	}


	public void setTotal(int total) {
		this.total = total;
	}


	public void setCurpage(int curpage) {
		this.curpage = curpage;
	}


	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}


	public void setPagesetsize(int pagesetsize) {
		this.pagesetsize = pagesetsize;
	}


	public void setPagesetno(int pagesetno) {
		this.pagesetno = pagesetno;
	}


	public void setPagecount(int pagecount) {
		this.pagecount = pagecount;
	}


	public void setPagestart(int pagestart) {
		this.pagestart = pagestart;
	}


	public void setPageend(int pageend) {
		this.pageend = pageend;
	}


	@Override
	public String toString() {
		return "PagingSet [total=" + total + ", curpage=" + curpage
				+ ", pagesize=" + pagesize + ", pagesetsize=" + pagesetsize
				+ ", pagesetno=" + pagesetno + ", pagecount=" + pagecount
				+ ", pagestart=" + pagestart + ", pageend=" + pageend + "]";
	}

}
