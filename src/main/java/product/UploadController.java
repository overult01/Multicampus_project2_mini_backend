package product;
import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
//패키지 추가했을 때는 servlet-context.xml에 context:component 설정 해주어야. 
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.mysql.cj.Session;


@Controller("uploadcontroller")
public class UploadController {
	
	@Autowired
	@Qualifier("productservice")
	ProductService service;
	
	@Autowired
	ProductDTO productdto;

	@Autowired
	UploadDTO uploaddto;
	
	@RequestMapping(value="/fileupload", method = RequestMethod.GET)
	public String uploadform() {
		return "manager_upload/uploadform";
	}
	
	@RequestMapping(value="/fileupload", method = RequestMethod.POST)
	public ModelAndView uploadresult(@ModelAttribute("dto") UploadDTO dto) throws IOException { // @ModelAttribute("뷰가 받을 이름"): 뷰로 전달해주고 싶을 때.
		
		// ${dto.file1.getOriginalFilename} : 뷰에서 파일명 확인할 때.
		MultipartFile mf = dto.getFile();
		
		System.out.println(mf.getOriginalFilename()); //dto.getFile1():Multipartfile 이 toString 메서드 오버라이딩하지 않았으면 패키지명.클래스명@16진수 주소 로 출력.
		System.out.println(mf.getSize());
		System.out.println(mf.isEmpty()); // isEmpty: 파일 전송 여부를 boolean으로. 
		
//		C:/kdt-venture/upload
		String savePath = "C:/kdt-venture/upload/"; // 파일을 저장할 path를 수동으로 만들었다.
		
		ModelAndView mv = new ModelAndView();
		
		if(!mf.isEmpty()) {
			
			// 여러 클라이언트에서 동일 파일명을 여러번 보냈을 때 덮어씌워지는 것 방지 
			// 원래 파일 이름
			String originname = mf.getOriginalFilename();
			
			// 원래 파일 명에서 확장자(.)이전까지만 추출
			String beforeext = originname.substring(0, originname.indexOf("."));
			
			// 원래 파일 명에서 확장자(.)이후부터
			String ext = originname.substring(originname.indexOf("."));

			// 파일내용 + 파일명 --> 서버의 특정폴더(c:upload)에 영구저장. 서버가 종료되더라도 폴더에 저장.
			String newname = savePath + beforeext + "(" + UUID.randomUUID().toString() + ")" + ext;
			File serverfile = new File(newname); // 확장자는 그대론데, 파일명만 '원래파일명(랜덤한 UUID)'로 바뀜. 
			mf.transferTo(serverfile);
			
			// 그냥 상태로는 둘 중 1개만 업로드할 때(500에러), 동일한 파일이름을 여러 클라이언트에서 업로드할 때 (덮어씌움) 문제생김.
			// System.out.println(UUID.randomUUID().toString()); // randomUUID: 문자열을 랜덤하게 생성. 같은 이름을 덮어쓰지 않게 하기 위해 

			// db에 업데이트 하기(파일 이름)
			//ProductDTO productdto = service.selectproduct(code);
			//productdto.setImg(newname);
			mv.addObject("originname", originname);
			mv.setViewName("manager_upload/uploadresult");
			return mv;
		}
		else {
			mv.setViewName("manager_upload/uploadform");
			return mv;
		}
		
	}
}
