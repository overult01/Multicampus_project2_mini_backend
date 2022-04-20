package member;

import java.util.List;

public interface MemberService {

	public int insertmember(MemberDTO dto);
	MemberDTO selectmember(String id);
}