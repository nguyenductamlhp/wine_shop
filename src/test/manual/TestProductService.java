package test.manual;

import java.util.List;

import com.model.entity.Product;
import com.model.service.ProductService;

public class TestProductService {

	public static void testGetAllProduct() {
		ProductService productService = new ProductService();
		List<Product> list = productService.getAllProduct();
		for (Product product : list) {
			System.out.println(product.getProductName());
		}
	}
	
	public static void testGetProductByCategory(int categoryid) {
		ProductService productService = new ProductService();
		List<Product> list = productService.getProductByCatetory(categoryid);
		for (Product product : list) {
			System.out.println(product.getProductName());
		}
	}
	
	public static void testGetProductByKeywork(String key)  {
		ProductService productService = new ProductService();
		List<Product> list = productService.getProductByKeyword(key);
		for (Product product : list) {
			System.out.println(product.getProductName());
		}
	}
	public static void testGetProductById(int id)  {
		ProductService productService = new ProductService();
		Product p = productService.getProductById(id);
		System.out.println(p.getProductName());
		
	}
	public static void main(String[] args) {
		testGetProductById(5);
	}

}
