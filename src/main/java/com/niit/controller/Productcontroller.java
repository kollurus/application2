package com.niit.controller;
import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Controller;
	import org.springframework.ui.Model;
	import org.springframework.web.bind.annotation.ModelAttribute;
	import org.springframework.web.bind.annotation.PathVariable;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RequestMethod;
	//import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.multipart.MultipartFile;

import com.niit.DAO.ProductDAO;
import com.niit.model.Product;
import com.niit.util.FileUtil;

	
	@Controller
	public class Productcontroller {

		@Autowired
		private ProductDAO productDAO;
		private String path;
		
		@RequestMapping(value = { "product", "editproduct/product" , "editcategory/product","editsupplier/product"})
		public String ProductPage(Model model) {
			model.addAttribute("product", new Product());
			model.addAttribute("productList", productDAO.list());
			model.addAttribute("ProductPageClicked", "true");
			return "admin";
		}

		@RequestMapping(value = { "addproduct", "editproduct/addproduct" }, method = RequestMethod.POST)
		public String addProduct(@ModelAttribute("product") Product product) {
			productDAO.saveOrUpdate(product);
			MultipartFile file =product.getImage();
			FileUtil.upload(path, file, product.getId()+".jpg");
			return "redirect:/product";
		}
		@RequestMapping("editproduct/{id}")
		public String editProduct(@PathVariable("id") String id, Model model) {
			System.out.println("editProduct");
			model.addAttribute("product", this.productDAO.get(id));
			model.addAttribute("productList", productDAO.list());
			model.addAttribute("ProductPageClicked", "true");
			return "admin";
		}

		@RequestMapping(value = { "removeproduct/{id}", "editproduct/removeproduct/{id}" })
		public String removeproduct(@PathVariable("id") String id, Model model) throws Exception {
			productDAO.delete(id);
			model.addAttribute("message", "Successfully Deleted");
			return "redirect:/product";
		}
	}


