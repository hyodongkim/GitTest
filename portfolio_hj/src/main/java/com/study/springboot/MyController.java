package com.study.springboot;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MyController {
	
	/* @Autowired
	  	private MemberService memberService;	*/
	
	@RequestMapping("/")
	public String root( RedirectAttributes redirect ) {
		
		return "redirect:index";
	}
	
	@RequestMapping("/index")
	public String index( HttpServletRequest req, Model model ) {
		
		return "index";
	}
	
	@RequestMapping("/member/login")
	public String login( HttpServletRequest req, Model model ) {
		
		return "index";
	}
}
