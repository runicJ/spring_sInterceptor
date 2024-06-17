package com.spring.sInterceptor.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/guest")
public class GuestController {
		
	@RequestMapping(value = "/guestList", method = RequestMethod.GET)
	public String guestList(Model model) {
		
		return "guest/guestList";
	}
	
	@RequestMapping(value = "/guestInput", method = RequestMethod.GET)
	public String guestInput(Model model) {
		
		return "guest/guestInput";
	}

	@RequestMapping(value = "/guestUpdate", method = RequestMethod.GET)
	public String guestUpdate(Model model) {
		
		return "guest/guestUpdate";
	}
	
}
