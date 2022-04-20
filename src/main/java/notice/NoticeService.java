package notice;

import java.util.List;

public interface NoticeService {
	
	public List<NoticeDTO> selectnotice();
//	public int insertproduct(ProductDTO dto);
//	public int updateproduct(ProductDTO dto);
//	public int deleteproduct(String id);
//	ProductDTO selectproduct(String product_name);

	int insertnotice(NoticeDTO dto);

	
	
}