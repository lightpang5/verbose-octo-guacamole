package com.spring.exam.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.exam.repository.BoardDAO;
import com.spring.exam.service.BoardService;
import com.spring.exam.vo.BoardDto;

@Controller
public class BoardController {
	
	@Autowired
	private BoardDAO boardDao;// 싱글톤 객체 생성.      나중에는 빠진다 결국.
	
	@Autowired
	private BoardService boardService; //서비스를 이용하기위한 객체 생성.
	
	@RequestMapping("/index")
	public String index(Model model) {
		System.out.println("접근은 하니 ?");
		//List<BoardDto> list = boardDao.getList();        굳이 소스의 길이도 똑같은데 왜 서비스를 만들고 이용하는지는 효율적인 코드사용을 위해서... 나누는 것이 효율적이다.
		List<BoardDto> list = boardService.getList();
		model.addAttribute("list", list);
		return "/WEB-INF/views/index.jsp";
	}
	@RequestMapping(value="add", method=RequestMethod.POST)
	public String insertadd(@ModelAttribute BoardDto vo)
	{
		boardService.insertList(vo);
		
		return "redirect:/index";
	}
	@RequestMapping(value="edit", method=RequestMethod.POST)
	public String edit(@ModelAttribute BoardDto vo,Model model)
	{
		System.out.println("수정글번호 잘 가져와?"+vo.getNo());
		
		List<BoardDto> list = boardService.editList(vo);
		model.addAttribute("list",list);
		return "/WEB-INF/views/status.jsp";
	}
	@RequestMapping("/deleteform")
	public String deleteform() {
		return "/WEB-INF/views/deleteform.jsp";
	}
	
	@RequestMapping(value="delete", method=RequestMethod.POST)
	public String delete(@ModelAttribute BoardDto vo, Model model) {	
		
		System.out.println("글번호 잘 가져와?"+vo.getNo());
		List<BoardDto> list = boardService.deleteList(vo);
		model.addAttribute("list",list);
//		if(result ==1) {
//			System.out.println("비밀번호일치.");
//			HashMap<String, Object> map = HashMap<String, Object>();
//	        map.put("userVO", userVO);
//			
//
//		
//			out.println(
//					"[ {" 
//					+ "\"leagueteamresult\": \'" + "true+" + "\'"
//					+ "}" + "]");
//			out.flush();
//		}
//		else {
//			System.out.println("false 로 접근");
//			HashMap<String, Object> map = HashMap<String, Object>();
//	        map.put("userVO", userVO);
//			response.getWriter().write("alert('Pw Wrong !');");
//			out.println("[ {" 
//					+ "\"leagueteamresult\": \'" + "false" + "\'"
//					+ "}" + "]");
//			out.flush();
//		}
		return "/WEB-INF/views/status.jsp";
	}

	@RequestMapping(value ="/detail", method=RequestMethod.GET)
	public String detail(@RequestParam Integer no,Model model) {
		System.out.println("상세보기할 게시굴 번호"+no);
		List<BoardDto> list = boardService.selectDetail(no);
		model.addAttribute("list",list);
		return "/WEB-INF/views/detail.jsp";
	}

}
