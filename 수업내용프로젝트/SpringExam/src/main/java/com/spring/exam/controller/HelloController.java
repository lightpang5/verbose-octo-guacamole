package com.spring.exam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {
	@RequestMapping("/hi")
	public String hello() {
		return"/WEB-INF/source/hello.jsp";
		
	}
		

}
