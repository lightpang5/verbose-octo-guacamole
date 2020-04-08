package com.spring.exam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.exam.repository.BoardDAO;
import com.spring.exam.vo.BoardDto;

@Service
public class BoardService {
	@Autowired
	private BoardDAO boarddao;

	public List<BoardDto> getList(){
		return boarddao.getList();
	}
	public void insertList(BoardDto vo){
		
		boarddao.insertList(vo);
	}
	public List<BoardDto> editList(BoardDto vo){
		
		
		return  boarddao.editList(vo);
	}
	public List<BoardDto> deleteList(BoardDto vo){
		
		
		return  boarddao.deleteList(vo);
	}
	public List<BoardDto> selectDetail(int no) {
		return boarddao.selectList(no);
	
	}
}
