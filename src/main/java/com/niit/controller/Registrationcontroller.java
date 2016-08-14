/*package com.niit.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.niit.DAO.UserDetailsDAO;
import com.niit.model.Product;

import com.niit.util.FileUtil;
@Controller
public class Registrationcontroller {
	@Autowired
	private UserDetailsDAO userDAO;
	
	@RequestMapping(value="registration1")
	public String index(Model model)
	{

		
			model.addAttribute("user", new User());
			model.addAttribute("userList", userDAO.list());
			model.addAttribute("registrationisClicked", "true");
			return "admin";
		}

		@RequestMapping(value = { "registration1" }, method = RequestMethod.POST)
		public String addUser(@ModelAttribute("user") 	User user,HttpServletRequest request) {
	
			userDAO.saveOrUpdate(user);
		
			return "redirect:/registration";
		}
	}
*/

