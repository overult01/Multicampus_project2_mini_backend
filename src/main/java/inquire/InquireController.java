package inquire;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller("InquireController")
public class InquireController {

	@Autowired
	@Qualifier("inquireService")
	InquireService service;
	
	@RequestMapping(value="/inquire", method=RequestMethod.GET)
	public ModelAndView inquireList(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		//아이디값 받아오기 memberid='testuser1'		
		String memberid = "testuser1";
		HttpSession session = request.getSession();		
		session.setAttribute("loginid", memberid);
		
		String loginid = (String) session.getAttribute("loginid");
		
		//String memberid = null;
		if(loginid != null) {
			List<InquireDTO> list = service.inquireList(loginid);
			
			mv.addObject("inquirelist", list);
			mv.setViewName("inquire");
		}
		else {
			mv.setViewName("redirect:/");			
		}
		return mv;			
	}
	
	@ResponseBody
	@RequestMapping(value="/inquire", method=RequestMethod.POST, produces = {"application/json;charset=utf-8"})
	public String insertInquire(@ModelAttribute("dto") InquireDTO dto) {
//	public String insertInquire(String title, String category, String context) {
		
		ModelAndView mv = new ModelAndView();
		//mv.addObject("inquire", dto);
		//mv.setViewName("inquire");		
		String inquiretext = "dto.title-: " + dto.title + " : dto.category - " + dto.category + " : dto.content - " + dto.content;
//		System.out.println(title + " : " + category + context);
		return inquiretext;
		
	}	

	//새창 열기
	@RequestMapping(value="/new_inquire", method=RequestMethod.GET)
    public String newinquire() {
        ModelAndView mv = new ModelAndView();
        mv.addObject("result", "문의사항등록");
        mv.setViewName("new_inquire");
        return "new_inquire";
    }
}
