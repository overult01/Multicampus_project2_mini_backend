package order;

import org.springframework.stereotype.Component;

@Component("orderdto")
public class OrderDTO {
	int code, productcode, totalcount,totalprice,price ;
	String memberid, name;
	
	
	public OrderDTO(){}


	public int getCode() {
		return code;
	}


	public void setCode(int code) {
		this.code = code;
	}


	public int getProductcode() {
		return productcode;
	}


	public void setProductcode(int productcode) {
		this.productcode = productcode;
	}


	public int getTotalcount() {
		return totalcount;
	}


	public void setTotalcount(int totalcount) {
		this.totalcount = totalcount;
	}


	public int getTotalprice() {
		return totalprice;
	}


	public void setTotalprice(int totalprice) {
		this.totalprice = totalprice;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public String getMemberid() {
		return memberid;
	}


	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	
	
	
	
	
}
