package notice;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import product.ProductDTO;

@Repository("noticedao")
public class NoticeDAO {
	@Autowired
	SqlSession session;
	
	// 상품 등록
	public int insertnotice(NoticeDTO dto) {
		int affectRow = session.insert("insertnotice", dto);
		return affectRow;
	}
	
	//조회
	public List<NoticeDTO> selectnotice(){
		List<NoticeDTO> list = session.selectList("noticelist");
		return list;
	}


//	public int deleteproduct(String product_name) {
//	return session.delete("deletemember", product_name);
//}
//// session.delete("deletemember", "mybatis2");


}


