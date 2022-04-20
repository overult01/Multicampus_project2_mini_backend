package reply;

import org.springframework.stereotype.Component;

@Component("replydto")
public class ReplyDTO {

	String content, date;
	int code, inquirecode;
	
		
	public ReplyDTO() {}


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


	public int getCode() {
		return code;
	}


	public void setCode(int code) {
		this.code = code;
	}


	public int getInquirecode() {
		return inquirecode;
	}


	public void setInquirecode(int inquirecode) {
		this.inquirecode = inquirecode;
	}


	public ReplyDTO(String content, int inquirecode) {
		super();
		this.content = content;
		this.date = null;
		this.code = 0;
		this.inquirecode = inquirecode; // null로 바꿔야 할지도 
	}
	
}
