package reply;

import java.util.List;

import inquire.InquireDTO;

public interface ReplyService {
	
	public List<InquireDTO> selectinquire();
	
	public List<ReplyDTO> selectreply();
//	public int insertreply(replyDTO dto);
//	public int updatereply(replyDTO dto);
//	public int deletereply(String id);
//	replyDTO selectreply(String reply_name);

	int insertreply(ReplyDTO dto);

	int updatereply(ReplyDTO dto);




}
