package product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service("productservice")
public class ProductServiceImpl implements ProductService {

	@Autowired
	@Qualifier("productdao")
	ProductDAO dao;
	
	@Override
	public List<ProductDTO> selectproduct() {
		return dao.selectproduct();
	}
	
	@Override
	public ProductDTO selectproduct(int code) {
		return dao.selectproduct(code);
	}

	//	@Override
//	public ProductDTO selectproduct(String product_name) {
//		return dao.selectproduct(product_name);
//	}
//
	// ajax 
	@Override
	public int insertproduct(ProductDTO dto) {
		return dao.insertproduct(dto);
	}

	@Override
	public int deleteproduct(int code) {
		return dao.deleteproduct(code);
	}
	
//	@Override
//	public int updateproduct(ProductDTO dto) {
//		return dao.updateproduct(dto);
//	}



//	@Override
//	public int deleteproduct(String product_name) {
//		return dao.deleteproduct(product_name);
//	}
//


}
