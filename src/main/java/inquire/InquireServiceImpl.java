package inquire;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service("inquireService")
public class InquireServiceImpl implements InquireService {

	@Autowired
	@Qualifier("inquiredao")
	InquireDAO dao;
	
	@Override
	public List<InquireDTO> inquireList(String memberid) {
		return dao.inquirelist(memberid);
	}

	@Override
	public InquireDTO inquire(String memberid) {
		return dao.inquire(memberid);
	}

	@Override
	public int insertInquire(InquireDTO dto) {
		return dao.insertInquire(dto);
	}

	@Override
	public int updateInquire(InquireDTO dto) {
		return dao.updateInquire(dto);
	}

	@Override
	public int deleteInquire(int code) {
		return dao.deleteInquire(code);
	}
	
	

}
