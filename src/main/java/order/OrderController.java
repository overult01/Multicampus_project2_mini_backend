package order;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller("OrderController")
public class OrderController {
	@Autowired
	@Qualifier("orderservice")
	OrderService service;
	
	// /order?code=1
	@RequestMapping("/order")
	public ModelAndView order() {
		ModelAndView mv =new ModelAndView();
	
		List<OrderDTO> list = service.selectorder2();
		//List<OrderDTO> list = service.selectorder();
		mv.addObject("orderlist",list);
		mv.setViewName("order");//"order.jsp"
		return mv;
	}
	
	@RequestMapping("/productlist_top")
	   public String productlistDetail(){
	      return "productlist_top";
	   }
	   @RequestMapping("/productlist_bottom")
	   public String productlistDetail2(){
	      return "productlist_bottom";
	   }
	   @RequestMapping("/productlist_outer")
	   public String productlistDetail3(){
	      return "productlist_outer";
	   }
	   @RequestMapping("/product_top_1")
	   public String productDetail147(){
	      return "product_top_1";
	   }
	   @RequestMapping("/product_top_2")
	   public String productDetail2(){
	      return "product_top_2";
	   }
	   @RequestMapping("/product_top_3")
	   public String productDetail3(){
	      return "product_top_3";
	   }
	   @RequestMapping("/product_bottom_1")
	   public String productDetail4(){
	      return "product_bottom_1";
	   }
	   @RequestMapping("/product_bottom_2")
	   public String productDetail5(){
	      return "product_bottom_2";
	   }
	   @RequestMapping("/product_bottom_3")
	   public String productDetail6(){
	      return "product_bottom_3";
	   }
	   @RequestMapping("/product_outer_1")
	   public String productDetail7(){
	      return "product_outer_1";
	   }
	   @RequestMapping("/product_outer_2")
	   public String productDetail8(){
	      return "product_outer_2";
	   }
	   @RequestMapping("/product_outer_3")
	   public String productDetail9(){
	      return "product_outer_3";
	   }
	
	
//	@RequestMapping("/order")
//	public ModelAndView order() {
//		ModelAndView mv =new ModelAndView();
//		List<OrderDTO> list = service.memberlist();
//		mv.addObject("memberlist",list);
//		mv.setViewName("mybatis/memberlist");
//		return mv;
//	}
//	
//	
//	
//
//	@RequestMapping("/membermybatislist")
//	public ModelAndView memberlist() {
//		ModelAndView mv =new ModelAndView();
//		List<OrderDTO> list = service.memberlist();
//		mv.addObject("memberlist",list);
//		mv.setViewName("mybatis/memberlist");
//		return mv;
//	}
//	
//	@RequestMapping("/membermybatispaginglist")
//	public ModelAndView memberlist(int page) {
//		//id ���ĺ��� ���� ?������ 5��ȸ��
//		ModelAndView mv =new ModelAndView();
//		List<OrderDTO> list = service.memberlist(page);
//		mv.addObject("memberlist",list);
//		mv.addObject("name","����¡ó������Ʈ");
//		mv.setViewName("mybatis/memberlist");
//		return mv;
//	}
//
//	@RequestMapping("/membermybatissearch")
//	public ModelAndView memberlist(String[] address) {
//		ModelAndView mv =new ModelAndView();
//		List<String> list = service.memberlist(address);
//		mv.addObject("memberaddresslist",list);
//		mv.addObject("name","�ּҰ˻�����Ʈ");
//		mv.setViewName("mybatis/memberlist");
//		return mv;
//	}
//	
//	@RequestMapping(value="/membemybatisinsert", method = RequestMethod.GET)
//	public String insertform() {
//		return "mybatis/insertform";
//	}
//	
//	@RequestMapping(value="/membemybatisinsert", method = RequestMethod.POST)
//	public ModelAndView insertresult(OrderDTO dto) {
//		//dto.setId(request.getParameter("id")
//		int result = service.insertmember(dto);
//		ModelAndView mv = new ModelAndView();
//		mv.addObject("result",result);
//		mv.setViewName("mybatis/insertresult");
//		return mv;
//	}
//	
//	@RequestMapping(value="/membemybatisupdate", method = RequestMethod.GET)
//	public String updateform(String id) {
//		return "mybatis/updateform";//�ּ� �̸� ���� ��
//	}
//	
//	@RequestMapping(value="/membemybatisupdate", method = RequestMethod.POST)
//	public ModelAndView updateresult(OrderDTO dto) {
//		int result = service.updatemember(dto);
//		ModelAndView mv = new ModelAndView();
//		mv.addObject("result",result);
//		mv.setViewName("mybatis/updateresult");
//		return mv;
//	}
//	
//	@RequestMapping("/membermybatisdelete")
//	public String deleteresult(String id) {
//		int result = service.deletemember(id);
//		if(result==1) {
//			return "redirect:/membermybatislist";
//		}
//		return "redirect:/membermybatisinsert";
//	}
}
