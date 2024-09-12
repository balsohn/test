package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {

	@RequestMapping("/")
	public String home() {
		return "main";
	}
	
	@RequestMapping("main2")
	public String main1() {
		return "main2";
	}
	
	@RequestMapping("asdf")
	public String asdf() {
		return "asdf";
	}
	
	@RequestMapping("member")
	public String member() {
		return "member";
	}
	
}
