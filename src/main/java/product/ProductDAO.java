package product;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("productdao")
public class ProductDAO {

	@Autowired
	SqlSession session;

	
	// 전체 조회
	public List<ProductDTO> selectproduct() {
		List<ProductDTO> list = session.selectList("selectproduct"); // resultType은 memberDTO였음.  레코드 1개는 MemberDTO타입.(mybastis.MemberDTO의 별명)
		return list;
	}
	
	// 개별 조회
	public ProductDTO selectproduct(int code) {
		ProductDTO dto = session.selectOne("selectproductone"); // resultType은 memberDTO였음.  레코드 1개는 MemberDTO타입.(mybastis.MemberDTO의 별명)
		return dto;
	}

	// 상품 등록
	public int insertproduct(ProductDTO dto) {
		int affectRow = session.insert("insertproduct", dto);
		return affectRow;
	}
	
//	// 사용자 1명만 조회
//	public ProductDTO selectproduct(String product_name) {
//		ProductDTO onedto = session.selectOne("member", product_name);
//		return onedto;
//	}
//	
//	// 저장. 리턴타입은 삽입한 행의 개수
//	public int insertproduct(ProductDTO dto) {
//		int insertrow = session.insert("inquire.select", dto);
//		return insertrow;		
//	}	
//
//	// 수정
//	public int updateproduct(ProductDTO dto) {
//		return session.update("updateproduct", dto); // id, name, address
//	}
	
//	// 삭제
	public int deleteproduct(int code) {
		return session.delete("deleteproduct", code);
	}
	// session.delete("deletemember", "mybatis2");
	
	
}
