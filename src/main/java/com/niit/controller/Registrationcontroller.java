package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class Registrationcontroller {
	
	@RequestMapping(value="registration1")
	public String index()
	{
		return "test1";
	}

}
