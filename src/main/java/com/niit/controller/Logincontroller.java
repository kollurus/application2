 package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class Logincontroller {
	
	@RequestMapping(value="login")
	public String index()
	{
		return "admin";
	}
	
}
