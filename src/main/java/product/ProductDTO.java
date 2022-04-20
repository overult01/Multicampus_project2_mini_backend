package product;

import org.springframework.stereotype.Component;

@Component("productdto")
public class ProductDTO {

	String name, regdate, img, category, color;
	int code, price, count;
	
		
	public ProductDTO() {}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getRegdate() {
		return regdate;
	}


	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}


	public String getImg() {
		return img;
	}


	public void setImg(String img) {
		this.img = img;
	}


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	public String getColor() {
		return color;
	}


	public void setColor(String color) {
		this.color = color;
	}


	public int getCode() {
		return code;
	}


	public void setCode(int code) {
		this.code = code;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public int getCount() {
		return count;
	}


	public void setCount(int count) {
		this.count = count;
	}


	// regdate 외 생성자 
	public ProductDTO(String name, String category, String color, int code, int price,	int count) {
		super();
		this.name = name;
		this.regdate = null;
		this.img = null;
		this.category = category;
		this.color = color;
		this.code = code;
		this.price = price;
		this.count = count;
	}



	
}
