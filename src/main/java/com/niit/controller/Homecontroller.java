package com.niit.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.DAO.CartDAO;
import com.niit.DAO.CategoryDAO;
import com.niit.DAO.ProductDAO;
@Controller
public class Homecontroller {
	
	
	@Autowired
	private CartDAO cartDAO;
	@Autowired
	private ProductDAO productDAO;
	

	@Autowired
	private CategoryDAO categoryDAO;
	
	@RequestMapping(value="signin")
	public String index()
	{
		return "login";
	}
	@RequestMapping(value="registration")
	public String register()
	{
		return "registration";
	}

	@RequestMapping("/")
	public ModelAndView home(HttpSession session)
	{
		session.setAttribute("id", "1");
		session.setAttribute("name", "minni");
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("categoryList",categoryDAO.list());
		mv.addObject("productList",productDAO.list());
		return mv;
	}

}
