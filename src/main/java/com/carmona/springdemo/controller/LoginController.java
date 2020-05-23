package com.carmona.springdemo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
	
	@GetMapping("/myCustomLoginPage")
	public String showMyCustomLoginPage() {
		
		return "bootstrap-login-page";
	}

	@GetMapping("/access-denied")
	public String showAccessDeniedPage() {
		
		return "access-denied-page";
	}
}
