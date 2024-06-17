package com.spring.sInterceptor.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/pds")
public class PdsController {
		
	@RequestMapping(value = "/pdsList", method = RequestMethod.GET)
	public String pdsList(Model model) {
		
		return "pds/pdsList";
	}
	
	@RequestMapping(value = "/pdsInput", method = RequestMethod.GET)
	public String pdsInput(Model model) {
		
		return "pds/pdsInput";
	}

	@RequestMapping(value = "/pdsUpdate", method = RequestMethod.GET)
	public String pdsUpdate(Model model) {
		
		return "pds/pdsUpdate";
	}
	
}
