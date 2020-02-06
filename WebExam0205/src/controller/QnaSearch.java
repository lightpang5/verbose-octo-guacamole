package controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.QnaSearchDto;
import model.SignDto;
import model.SignModel;


public class QnaSearch implements CommandInter{
	
	static QnaSearch impl = new QnaSearch();
	public static QnaSearch instance() { //instance 메소드가 늘 객체를 리턴하는 것 이것이 싱글톤 패턴 !  static 이 붙어있으므로 한번 만들어 놓으면 계속해서 쓸 수 있으므로 중복이 안되지만 
		return impl;

	}

	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		String searchsetting = request.getParameter("searchsetting");
		System.out.println("검색주제 : "+searchsetting);
		QnaSearchDto board = new QnaSearchDto();
		
		String qTitle = request.getParameter("searchword");	
		
		board.setqTitle(qTitle);
		System.out.println("검색내용 :"+board.getqTitle());
		if(searchsetting.equals("0")) {				//searchsetting 은 제목 검색일 경우 0, 내용 검색일 경우 1
			board.setqEmail("qTitle");				//board.setqEmail 은 제목에 따른 검색인지 내용에 따른 검색인지 ..
			System.out.println("board 셋한 값:"+board.getqEmail());
		}
		else {
			board.setqEmail("qContents");
		}
		SignModel model = SignModel.instance();
		ArrayList<QnaSearchDto> list = (ArrayList<QnaSearchDto>)model.selectQnaSearch(board);
	
		request.setAttribute("qnadata", list);
		System.out.println(list.get(0).getqTitle()+list.get(0).getqContents()+list.get(0).getqNo());
		System.out.println("bb"+list.size());
		return "qna.jsp";
	}
}

