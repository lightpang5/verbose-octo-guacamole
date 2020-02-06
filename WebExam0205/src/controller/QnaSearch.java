package controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.QnaSearchDto;
import model.SignDto;
import model.SignModel;


public class QnaSearch implements CommandInter{
	
	static QnaSearch impl = new QnaSearch();
	public static QnaSearch instance() { //instance �޼ҵ尡 �� ��ü�� �����ϴ� �� �̰��� �̱��� ���� !  static �� �پ������Ƿ� �ѹ� ����� ������ ����ؼ� �� �� �����Ƿ� �ߺ��� �ȵ����� 
		return impl;

	}

	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		String searchsetting = request.getParameter("searchsetting");
		System.out.println("�˻����� : "+searchsetting);
		QnaSearchDto board = new QnaSearchDto();
		
		String qTitle = request.getParameter("searchword");	
		
		board.setqTitle(qTitle);
		System.out.println("�˻����� :"+board.getqTitle());
		if(searchsetting.equals("0")) {				//searchsetting �� ���� �˻��� ��� 0, ���� �˻��� ��� 1
			board.setqEmail("qTitle");				//board.setqEmail �� ���� ���� �˻����� ���뿡 ���� �˻����� ..
			System.out.println("board ���� ��:"+board.getqEmail());
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

