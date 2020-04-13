package Controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.SangpumDto;
import Model.SangpumModel;


public class SangpumImpl implements CommandInter{

	static SangpumImpl impl = new SangpumImpl();
	public static SangpumImpl instance() { //instance �޼ҵ尡 �� ��ü�� �����ϴ� �� �̰��� �̱��� ���� !  static �� �پ������Ƿ� �ѹ� ����� ������ ����ؼ� �� �� �����Ƿ� �ߺ��� �ȵ����� 
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

