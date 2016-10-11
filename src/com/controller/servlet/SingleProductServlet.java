
package com.controller.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.entity.Product;
import com.model.service.ProductService;

/**
 * Servlet implementation class SingleProductServlet
 */
@WebServlet("/SingleProductServlet")

public class SingleProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SingleProductServlet() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int productId = 0;
		if (request.getParameter("productId") != null) {
			productId = Integer.parseInt(request.getParameter("productId").trim());
		}
		
		ProductService productService = new ProductService();
		Product product = productService.getProductById(productId);
		request.setAttribute("product", product);
		request.getRequestDispatcher("singlepage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
