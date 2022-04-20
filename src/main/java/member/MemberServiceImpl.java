package member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service("mybatisservice")
public class MemberServiceImpl implements MemberService {

	@Autowired
	@Qualifier("mybatisdao")
	MemberDAO dao;

	@Override
	public int insertmember(MemberDTO dto) {
		return dao.insertmember(dto);
	}

	@Override
	public MemberDTO selectmember(String id) {
		return dao.selectmember(id);
	}

}
