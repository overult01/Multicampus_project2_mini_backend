package member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberMybatisController {
	@Autowired
	@Qualifier("mybatisservice")
	MemberService service;
	
	@RequestMapping(value="/membermybatisinsert", method = RequestMethod.GET)
	public String insertform() throws Exception{
		return "mybatis/insertform";
	}
	
	
	@RequestMapping(value="/membermybatisinsert", method = RequestMethod.POST)
	public ModelAndView insertresult(MemberDTO dto) throws Exception{
		//dto.setId(request.getParameter("id")
		// System.out.println(dto.id);
		int result = service.insertmember(dto);//id, email, phone �ߺ� �Ұ���
		ModelAndView mv = new ModelAndView();
		mv.addObject("result", result);//int
		mv.setViewName("mybatis/insertresult");
		return mv;
	}

}
