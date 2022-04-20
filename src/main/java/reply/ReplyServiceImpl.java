package reply;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import inquire.InquireDTO;


@Service("replyservice")
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	@Qualifier("replydao")
	ReplyDAO dao;

	@Autowired
	@Qualifier("inquiredto")
	InquireDTO dto;
	
	@Override
	public List<InquireDTO> selectinquire() {
		return dao.selectinquire();
	}
	@Override
	public List<ReplyDTO> selectreply() {
		return dao.selectreply();
	}

	@Override
	public int insertreply(ReplyDTO dto) {
		return dao.insertreply(dto);
	}

	@Override
	public int updatereply(ReplyDTO dto) {
		return dao.updatereply(dto);
	}


}
