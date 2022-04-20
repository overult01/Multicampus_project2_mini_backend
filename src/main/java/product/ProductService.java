package product;

import java.util.List;

public interface ProductService {
	
	public List<ProductDTO> selectproduct();
//	public int insertproduct(ProductDTO dto);
//	public int updateproduct(ProductDTO dto);
//	ProductDTO selectproduct(String product_name);

	public ProductDTO selectproduct(int code);
	
	int insertproduct(ProductDTO dto);

//	int updateproduct(ProductDTO dto);

	public int deleteproduct(int code);


}
