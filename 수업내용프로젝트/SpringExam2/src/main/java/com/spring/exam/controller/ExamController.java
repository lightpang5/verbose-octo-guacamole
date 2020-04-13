package com.spring.exam.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.exam.repository.SpringDao;
import com.spring.exam.vo.SpringDto;

@Controller
public class ExamController {
	@Autowired
	private SpringDao springDAO;
	
	
	
	
	@RequestMapping("/index")
	public String index() {
		return "/WEB-INF/source/index.jsp";
	}
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String insertadd(@ModelAttribute SpringDto vo) {
		
		springDAO.insert(vo);
		return "redirect:/index";
	}
	


}
