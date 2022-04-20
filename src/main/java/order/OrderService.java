package order;

import java.util.List;

public interface OrderService {
	
	public List<OrderDTO> selectorder();
	public List<OrderDTO> selectorder2();
	
	
//	public int insertmember(OrderDTO dto);
//	public int updatemember(OrderDTO dto);
//	public int deletemember(String id);
//	
//	public List<OrderDTO> memberlist();
//	public List<OrderDTO> memberlist(int page);
//	public List<String> memberlist(String[] address);
//	public OrderDTO member(String id);
}
