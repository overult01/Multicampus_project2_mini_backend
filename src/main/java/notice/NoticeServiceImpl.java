package notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;


@Service("noticeService")
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	@Qualifier("noticedao")
	NoticeDAO dao;
	
	@Override
	public List<NoticeDTO> selectnotice() {
		return dao.selectnotice();
	}

	@Override
	public int insertnotice(NoticeDTO dto) {
		return dao.insertnotice(dto);
	}
	
}
