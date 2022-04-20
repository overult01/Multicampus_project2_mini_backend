package inquire;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("inquiredao")
public class InquireDAO {
	@Autowired
	SqlSession session;
	
	//조회
	public List<InquireDTO> inquirelist(String memberid){
		List<InquireDTO> list = session.selectList("inquirelist", memberid);
		return list;
	}
	public InquireDTO inquire(String memberid) {
		InquireDTO dto = session.selectOne("inquire", memberid);
		return dto;
	}
	
	//저장
	public int insertInquire(InquireDTO dto) {
		int insertrow = session.insert("insertinquire", dto);
		return insertrow;
	}
	
	//수정
	public int updateInquire(InquireDTO dto) {
		return session.update("updateinquire", dto);		
	}

	//삭제
	public int deleteInquire(int code) {
		return session.delete("deleteinquire", code);
	}
}
