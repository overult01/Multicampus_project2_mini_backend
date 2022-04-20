package inquire;

import java.util.List;

public interface InquireService {
	public List<InquireDTO> inquireList(String memberid);
	public InquireDTO inquire(String memberid);
	public int insertInquire(InquireDTO dto);
	public int updateInquire(InquireDTO dto);
	public int deleteInquire(int code);
}
