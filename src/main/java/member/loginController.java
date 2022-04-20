package member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class loginController {
	
	@Autowired
	@Qualifier("mybatisservice")
	MemberService service;

	@Autowired
	MemberDTO dto;

//로그인폼 화면 뷰 보여주는 메소드
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public void loginform() {//뷰 결과 
	}

	
	@RequestMapping(value = "/login", method = RequestMethod.POST, produces = {"application/json;charset=utf-8"})
	public ModelAndView loginresult(String id, String password) {
		
		ModelAndView mv = new ModelAndView();
		MemberDTO dto = service.selectmember(id);
		
		if(dto == null) {
			mv.addObject("result", 0); // id 없음
			mv.setViewName("loginresult");			
		}
		else {
			if(id.equals("admin1") && password.equals("admin1")) {
				mv.setViewName("manager_home"); // 관리자로 로그인
			}		
			else if(id.equals(dto.getId()) && password.equals(dto.getPassword())) {
				mv.addObject("result", 1); // 일반 유저로 로그인	
				mv.setViewName("loginresult");
			}
			// 비밀번호 오류
			else {
				mv.addObject("result", 2); // 비밀번호 오류
				mv.setViewName("loginresult");
			}
			
		}
		return mv;
	}
	
}

