package notice;

import org.springframework.stereotype.Component;

@Component("noticedto")
public class NoticeDTO {
	int code;
	String title;
	String category;
	String content;
	String date;
	
	public NoticeDTO() {
		
	}
	
	public NoticeDTO(String title, String category, String content) {
		super();
		
		this.title = title;
		this.category = category;
		this.content = content;
		this.date = null;
	}
	
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}

	

	
}
