package notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import product.ProductDTO;

@Controller("NoticeController")
public class NoticeController {

	@Autowired
	@Qualifier("noticeService")
	NoticeService service;
	

	
	@RequestMapping(value = "/notice", method = RequestMethod.GET)
	public ModelAndView selectnotice() {
		ModelAndView mv = new ModelAndView();
		List<NoticeDTO> list = service.selectnotice();
		
		
		mv.addObject("noticelist", list);
		mv.setViewName("notice");
		return mv;
	}
	
	@RequestMapping(value = "/noticeinsert", method = RequestMethod.GET)
	public String insertproduct() {
		return "noticeinsert";
	}
	
		
	
	@RequestMapping(value = "/noticeinsert", method = RequestMethod.POST, produces = {"application/json;charset=utf-8"})
	public ModelAndView insertproduct(String title, String category, String content) {
		ModelAndView mv = new ModelAndView();
		NoticeDTO dto = new NoticeDTO(title, category, content);
		int insertRow = service.insertnotice(dto);
		mv.addObject("insertRow", insertRow);
		mv.setViewName("noticeinsert");
		return mv;
	}
	
	
	
	
}
