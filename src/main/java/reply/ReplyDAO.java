package reply;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import inquire.InquireDTO;

@Repository("replydao")
public class ReplyDAO {

	@Autowired
	SqlSession session;

	// 문의 조회
	public List<InquireDTO> selectinquire() {
		List<InquireDTO> list = session.selectList("selectinquire");		
		return list;
	}
	
	// 전체 조회
	public List<ReplyDTO> selectreply() {
		List<ReplyDTO> list = session.selectList("selectreply"); // resultType은 memberDTO였음.  레코드 1개는 MemberDTO타입.(mybastis.MemberDTO의 별명)
		return list;
	}

	// 상품 등록
	public int insertreply(ReplyDTO dto) {
		int affectRow = session.insert("insertreply", dto);
		return affectRow;
	}
	
//	// 사용자 1명만 조회
//	public replyDTO selectreply(String reply_name) {
//		replyDTO onedto = session.selectOne("member", reply_name);
//		return onedto;
//	}
//	
//	// 저장. 리턴타입은 삽입한 행의 개수
//	public int insertreply(replyDTO dto) {
//		int insertrow = session.insert("inquire.select", dto);
//		return insertrow;		
//	}	
//
//	// 수정
	public int updatereply(ReplyDTO dto) {
		return session.update("updatereply", dto); // id, name, address
	}
	
//	// 삭제
//	public int deletereply(int code) {
//		return session.delete("deletemember", reply_name);
//	}
//	// session.delete("deletemember", "mybatis2");
	
	
}
