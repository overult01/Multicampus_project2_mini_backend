package reply;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import inquire.InquireDTO;
import member.MemberDTO;


@Controller("replycontroller")
public class ReplyContoller {

	@Autowired
	@Qualifier("replyservice")
	ReplyService service;
	
	@Autowired
	ReplyDTO dto;
	
	// service.selecmember 전체회원 조회 메서드. -> 결과를 모델로 받고, 뷰를 mybatis/memberlist.jsp 
	@RequestMapping(value = "/replylist", method = RequestMethod.GET)
	public ModelAndView selectreply() {
		ModelAndView mv = new ModelAndView();
		List<ReplyDTO> list1 = service.selectreply();
		mv.addObject("replylist", list1);
		List<InquireDTO> list2 = service.selectinquire();
		mv.addObject("inquirelist", list2);
		mv.setViewName("manager_inquire_reply");
		return mv;
	}
	
	// ajax로 변경요망
	@RequestMapping(value = "/replyinsert", method = RequestMethod.GET)
	public String insertreply() {
		return "manager_inquire_reply_new";
	}
	
	@RequestMapping(value = "/replyinsert", method = RequestMethod.POST, produces = {"application/json;charset=utf-8"})
	public ModelAndView insertreply(String content, int inquirecode) {
		ModelAndView mv = new ModelAndView();
		ReplyDTO dto = new ReplyDTO(content, inquirecode);
		int insertRow = service.insertreply(dto);
		mv.addObject("insertRow", insertRow);
		mv.setViewName("manager_inquire_reply_result");
		return mv;
	}

//	@GetMapping("/membermybatisinsert")
//	public String insertform() {
//		return "ch24_mybatis/insertform";		
//	}

//	@RequestMapping(value = "/replyupdate", method = RequestMethod.GET)
//	public String updatefrom(String id) {
//		return "manager_reply_update";
//	}
//	
//	@RequestMapping(value = "/replyupdate", method = RequestMethod.POST, produces = {"application/json;charset=utf-8"})
//	public ModelAndView updatesult(replyDTO dto) { // id(고정), name, address입력
//		// 매개변수로 MemberDTO를 주면, 값하나씩 자동으로 dto.setID(request.getParameter("id")) 해준 것과 같아진다.
//		ModelAndView mv = new ModelAndView();
//		int updateRow = service.updatereply(dto);
//		mv.addObject("updateRow", updateRow); // int타입의 모델 1개 전달
//		mv.setViewName("manager_reply_update");				
//		return mv;
//	}

//	@RequestMapping("/membermybatisdelete")
//	public String deletemember(String id) {
//		// 삭제
//		int deletrow = service.deletemember(id);
//		if(deletrow == 1) { // 삭제되었으면 전체 회원가입 출력 
//			//	redirect:컨트롤러url매핑값 -> 해당 Url의 메서드 사용. 이렇게 해서 전체 조회 
//			return "redirect:/membermybatislist"; 
//		}
//		// 삭제 안되면 회원가입으로 넘어가기.
//		return "redirect:/membermybatisinsert"; 
//		
//	}
}
