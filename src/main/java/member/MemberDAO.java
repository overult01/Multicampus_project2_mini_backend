package member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("mybatisdao")
public class MemberDAO {
	@Autowired
	SqlSession session;

	@Autowired
	MemberDTO dto;
	
	public int insertmember(MemberDTO dto) {
		int insertrow = session.insert("insertmember", dto);
		return insertrow;
	}
	
	// 사용자 1명만 조회
	public MemberDTO selectmember(String id) {
		MemberDTO dto = session.selectOne("selectmember", id);
		return dto;
	}


}
