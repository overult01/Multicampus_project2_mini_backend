package order;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service("orderservice")
public class OrderServiceImpl implements OrderService {
	@Autowired
	@Qualifier("orderdao")
	OrderDAO dao;

	@Override
	public List<OrderDTO> selectorder() {
		return dao.selectorder();
	}

	@Override
	public List<OrderDTO> selectorder2() {
		return dao.selectorder2();
	}
	
//	public void setDao(MemberDAO dao) {
//		this.dao = dao;
//	}

//	@Override
//	public int insertmember(OrderDTO dto) {
//		return dao.insertmember(dto);
//	}
//
//	@Override
//	public int updatemember(OrderDTO dto) {
//		return  dao.updatemember(dto);
//	}
//
//	@Override
//	public int deletemember(String id) {
//		return dao.deletemember(id);
//	}
//
//	@Override
//	public List<OrderDTO> memberlist() {
//		return dao.memberlist();
//	}
//	
//	@Override
//	public List<OrderDTO> memberlist(int page) {
//		return dao.memberlist(page);
//	}
//	
//	@Override
//	public List<String> memberlist(String[] address) {
//		return dao.memberlist(address);
//	}
//
//	@Override
//	public OrderDTO member(String id) {
//		return dao.member(id);
//	}
	
	
}
