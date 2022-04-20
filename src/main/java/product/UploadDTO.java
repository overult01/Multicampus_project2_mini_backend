package product;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component("uploaddto")
public class UploadDTO {
	String code;
	String img;
	MultipartFile file;
	
	

	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	
}
