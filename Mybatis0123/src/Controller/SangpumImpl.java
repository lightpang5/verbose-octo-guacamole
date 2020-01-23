package Controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.SangpumDto;
import Model.SangpumModel;


public class SangpumImpl implements CommandInter{

	static SangpumImpl impl = new SangpumImpl();
	public static SangpumImpl instance() { //instance 메소드가 늘 객체를 리턴하는 것 이것이 싱글톤 패턴 !  static 이 붙어있으므로 한번 만들어 놓으면 계속해서 쓸 수 있으므로 중복이 안되지만 
		return impl;

	}

	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		SangpumModel model = SangpumModel.instance();
		ArrayList<SangpumDto> list = (ArrayList<SangpumDto>)model.selectSangpum();
		request.setAttribute("data", list);
		System.out.println("bb"+list.size());
		return "sangpum_list.jsp";
	}
}

