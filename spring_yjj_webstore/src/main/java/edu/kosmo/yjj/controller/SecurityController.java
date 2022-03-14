package edu.kosmo.yjj.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@RequestMapping("/security/*")
@Controller
public class SecurityController {
	
	@GetMapping("/all")
	public String all() {
	
		System.out.println("do all acess everybody");
		return "/security/all";
	}
	
	
	@GetMapping("/member")
	public String member() {
	
		System.out.println("logined member");
		return "/security/member";
	}
	
	@GetMapping("/admin")
	public void admin() {
	
		log.info("/admin..");
		
		//return "security/admin"
	}
	
	@GetMapping("/accessError")
	public void accessError(Model model) {
	
		log.info("/accessError()..");
		
		model.addAttribute("msg","ACCESS Denied(403 에러)");	
		
	}
	
	
	
}
