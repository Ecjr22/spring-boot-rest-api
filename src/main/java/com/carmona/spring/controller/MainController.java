package com.carmona.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @GetMapping("/")
    public String showLanding() {
        return "landing-page";
    }
	
	@GetMapping("/employeesOnlyPage")
	public String showHomePage() {
		
		return "home";
	}
	
	@GetMapping("/leaders")
	public String showLeadersPage() {
		
		return "leaders-page";
	}
	
	@GetMapping("/systems")
	public String showAdminsPage() {
		
		return "systems-page";
	}
}
