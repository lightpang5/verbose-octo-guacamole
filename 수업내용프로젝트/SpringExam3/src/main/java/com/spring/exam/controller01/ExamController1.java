package com.spring.exam.controller01;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.exam.repository01.SpringDao1;
import com.spring.exam.vo01.SpringDto1;


@Controller
public class ExamController1 {
	@Autowired  //싱글톤 객체 
	private SpringDao1 springDAO;
	
	
	
	
	@RequestMapping("/index")
	public String index(Model model) {
		ArrayList<SpringDto1>list = (ArrayList<SpringDto1>)springDAO.select();
		model.addAttribute("selectlist",list);
		return "/WEB-INF/source01/index.jsp";
	}
	@RequestMapping(value="add", method=RequestMethod.POST)
	public String insertadd(@ModelAttribute SpringDto1 vo) {
		
		springDAO.insert(vo);
		return "redirect:/index";//어디론가 원래페이지로 다시 돌아가 ... 는 index 로 간다.
	}
	@RequestMapping(value="delete", method=RequestMethod.GET)
	public String delete(@RequestParam int no) {
		
		springDAO.delete(no);
		return "redirect:/index";//index 로 간다.
	}

}
