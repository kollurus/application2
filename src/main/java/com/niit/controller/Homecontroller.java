package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class Homecontroller {
	
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



}
