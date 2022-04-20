package order;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("orderdao")
public class OrderDAO {
	@Autowired
	SqlSession session;

	public List<OrderDTO> selectorder(){
		List<OrderDTO> list = session.selectList("selectorder");//"id"
		return list;
	}

	public List<OrderDTO> selectorder2(){
		List<OrderDTO> list = session.selectList("selectorder2");//"id"
		return list;
	}
	
////	public void setSession(SqlSession session) {
////		this.session = session;
////	}
//
//	public int insertmember(OrderDTO dto) {
//		int insertrow = session.insert("insertmember", dto);
//		return insertrow;
//	}
//
//	public int updatemember(OrderDTO dto) {
//		return session.update("updatemember", dto);//id, name, address
//	}
//
//	public int deletemember(String id) {
//		return session.delete("deletemember", id);
//		
//	}
//	
//	public List<OrderDTO> memberlist(){
//		List<OrderDTO> list = session.selectList("memberlist");
//		return list;
//	}
//	
//	public List<OrderDTO> memberlist(int page){
//		int [] limit = new int[] {(page-1)*5,5};
//		List<OrderDTO> list = session.selectList("paginglist",limit);
//		return list;
//	}
//	
//	public List<String> memberlist(String[] address){
//		List<String> list = session.selectList("addresssearch",address);
//		return list;
//	}
//	
//	public OrderDTO member(String id) {
//		OrderDTO dto = session.selectOne("member",id);
//		return dto;
//	}
}
