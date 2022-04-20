package product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import member.MemberDTO;


@Controller("productcontroller")
public class ProductContoller {

	@Autowired
	@Qualifier("productservice")
	ProductService service;
	
	@Autowired
	ProductDTO dto;
	
	// service.selecmember 전체회원 조회 메서드. -> 결과를 모델로 받고, 뷰를 mybatis/memberlist.jsp 
	@RequestMapping(value = "/productlist", method = RequestMethod.GET)
	public ModelAndView selectproduct() {
		ModelAndView mv = new ModelAndView();
		List<ProductDTO> list = service.selectproduct();

		mv.addObject("productlist", list);
		mv.setViewName("manager_product");
		return mv;
	}
	
	// ajax로 변경요망..
	@RequestMapping(value = "/productinsert", method = RequestMethod.GET)
	public String insertproduct() {
		return "manager_product_insert";
	}
	
	@RequestMapping(value = "/productinsert", method = RequestMethod.POST, produces = {"application/json;charset=utf-8"})
	public ModelAndView insertproduct(String name, String category, String color, int code, int price, int count) {
		ModelAndView mv = new ModelAndView();
		ProductDTO dto = new ProductDTO(name, category, color, code, price, count);
		int insertRow = service.insertproduct(dto);
		mv.addObject("insertRow", insertRow);
		mv.setViewName("manager_product_result");
		return mv;
	}

//	@GetMapping("/membermybatisinsert")
//	public String insertform() {
//		return "ch24_mybatis/insertform";		
//	}

//	@RequestMapping(value = "/productupdate", method = RequestMethod.GET)
//	public String updatefrom(String id) {
//		return "manager_product_update";
//	}
//	
//	@RequestMapping(value = "/productupdate", method = RequestMethod.POST, produces = {"application/json;charset=utf-8"})
//	public ModelAndView updatesult(ProductDTO dto) { // id(고정), name, address입력
//		// 매개변수로 MemberDTO를 주면, 값하나씩 자동으로 dto.setID(request.getParameter("id")) 해준 것과 같아진다.
//		ModelAndView mv = new ModelAndView();
//		int updateRow = service.updateproduct(dto);
//		mv.addObject("updateRow", updateRow); // int타입의 모델 1개 전달
//		mv.setViewName("manager_product_update");				
//		return mv;
//	}


	@RequestMapping(value = "/productdelete", method = RequestMethod.GET)
	public String deleteproduct() {
		return "manager_product_delete"; 
//		
	}

	
	@RequestMapping(value = "/productdelete", method = RequestMethod.POST)
	public String deleteproduct(int code) {
//		// 삭제
		int deletrow = service.deleteproduct(code);
		if(deletrow == 1) { // 삭제되었으면 전체 회원가입 출력 
//			//	redirect:컨트롤러url매핑값 -> 해당 Url의 메서드 사용. 이렇게 해서 전체 조회 
			return "redirect:/productlist"; 
		}
		return "redirect:/productinsert"; 
//		
	}
}
